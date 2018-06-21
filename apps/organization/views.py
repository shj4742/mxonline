# coding=utf-8
import json

from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
from django.views.generic import View

from organization.forms import UserAskForm
from organization.models import CourseOrg, CityDict
from courses.models import Course
from django.shortcuts import render_to_response
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger


class OrgListView(View):
    """课程机构首页"""
    def get(self, request):
        all_citys = [x for x in CityDict.objects.all() if x.courseorg_set.all()]
        all_orgs = CourseOrg.objects.all()
        sort_orgs = all_orgs.order_by('-click_nums')[:3]

        city_id = request.GET.get('city')
        if city_id is None:
            city_id = ''
        category = request.GET.get('ct')
        if category is None:
            category = ''
        # 单选 城市
        if city_id and category == '':
            all_orgs = CourseOrg.objects.filter(city_id=int(city_id))
        # 既有城市也有分类
        elif city_id and category:
            # 根据分类获取机构
            all_orgs = CourseOrg.objects.filter(category=category)
            # 根据分类获取坐在地区列表
            all_cityss = [x.city_id for x in all_orgs]
            all_cityss = set(all_cityss)
            all_citys = [CityDict.objects.get(id=int(x)) for x in all_cityss]
            # 根据分类和坐在地区筛选机构
            all_orgs = CourseOrg.objects.filter(city_id=city_id,category=category)

        # 只有分类
        elif city_id == '' and category:
            all_orgs = CourseOrg.objects.filter(category=category)
            # 根据分类获取所在地区列表
            all_cityss = [x.city_id for x in all_orgs]
            all_cityss = set(all_cityss)
            all_citys = [CityDict.objects.get(id=int(x)) for x in all_cityss]
        else:
            pass
        # 排序
        sort = request.GET.get('sort')
        if sort:
            if sort == 'students':
                all_orgs = all_orgs.order_by('-students')
            elif sort == 'courses':
                all_orgs = all_orgs.order_by('-course_nums')
        org_nums = all_orgs.count()
        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        # Paginator(objects, display_num, request)
        p = Paginator(all_orgs, 5, request=request)
        orgs = p.page(page)
        return render(request, 'org-list.html', {
            'all_orgs': orgs,
            'all_citys': all_citys,
            'org_nums': org_nums,
            'city_id': city_id,
            'category': category,
            'sort_orgs': sort_orgs,
            'sort': sort,
        })


class AddUserAskView(View):

    def post(self, request):
        userask_form = UserAskForm(request.POST)
        if userask_form.is_valid():
            user_ask = userask_form.save(commit=True)
            return HttpResponse(json.dumps({'status': 'success'}), content_type='application/json')
        else:
            return HttpResponse(json.dumps({'status': 'fail', 'msg': u'添加出错'}), content_type='application/json')


class OrgHomeView(View):
    """机构首页"""
    def get(self, request, org_id):
        course_org = CourseOrg.objects.get(id=int(org_id))
        all_courses = course_org.course_set.all()
        all_teachers = course_org.teacher_set.all()

        return render(request, 'org-detail-homepage.html', {
            'all_courses': all_courses,
            'all_teachers': all_teachers,
        })
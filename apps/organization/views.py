# coding=utf-8
import json

from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
from django.views.generic import View

from operation.models import UserFavorite
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

        city_id = request.GET.get('city', '')
        category = request.GET.get('ct', '')
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
        sort = request.GET.get('sort', '')
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
        active_page = 'home'
        course_org = CourseOrg.objects.get(id=int(org_id))
        has_fav = False
        if request.user.is_authenticated():
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True
        all_courses = course_org.course_set.all()[:3]
        all_teachers = course_org.teacher_set.all()[:3]

        return render(request, 'org-detail-homepage.html', {
            'all_courses': all_courses,
            'all_teachers': all_teachers,
            'course_org': course_org,
            'active_page': active_page,
            'has_fav': has_fav,
        })


class OrgCourseView(View):
    """机构课程列表页"""
    def get(self, request, org_id):
        active_page = 'course'
        course_org = CourseOrg.objects.get(id=int(org_id))
        has_fav = False
        if request.user.is_authenticated():
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True
        all_courses = course_org.course_set.all()
        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        # Paginator(objects, display_num, request)
        p = Paginator(all_courses, 8, request=request)
        courses = p.page(page)
        return render(request, 'org-detail-course.html', {
            'all_courses': courses,
            'course_org': course_org,
            'active_page': active_page,
            'has_fav': has_fav,
        })


class OrgTeacherView(View):
    """机构教师列表页"""
    def get(self, request, org_id):
        active_page = 'teacher'
        course_org = CourseOrg.objects.get(id=int(org_id))
        has_fav = False
        if request.user.is_authenticated():
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True
        all_teachers = course_org.teacher_set.all()
        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        # Paginator(objects, display_num, request)
        p = Paginator(all_teachers, 8, request=request)
        teachers = p.page(page)
        return render(request, 'org-detail-teachers.html', {
            'all_teachers': teachers,
            'course_org': course_org,
            'active_page': active_page,
            'has_fav': has_fav,
        })


class OrgDescView(View):
    """机构介绍"""
    def get(self, request, org_id):
        active_page = 'desc'
        course_org = CourseOrg.objects.get(id=int(org_id))
        has_fav = False
        if request.user.is_authenticated():
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True
        return render(request, 'org-detail-desc.html', {
            'course_org': course_org,
            'active_page': active_page,
            'has_fav': has_fav,
        })


class AddFavView(View):
    """用户收藏机构"""
    def post(self, request):
        fav_id = request.POST.get('fav_id', 0)
        fav_type = request.POST.get('fav_type', 0)

        if not request.user.is_authenticated():
            return HttpResponse(json.dumps({'status': 'fail', 'msg': u'用户未登录'}), content_type='application/json')
        exist_records = UserFavorite.objects.filter(user=request.user, fav_id=int(fav_id), fav_type=int(fav_type))
        if exist_records:
            # 如果记录存在，则表示用户要取消收藏
            exist_records.delete()
            return HttpResponse(json.dumps({'status': 'success', 'msg': u'收藏'}), content_type='application/json')
        else:
            user_fav = UserFavorite()
            if int(fav_id) > 0 and int(fav_type) > 0:
                user_fav.user = request.user
                user_fav.fav_id = int(fav_id)
                user_fav.fav_type = int(fav_type)
                user_fav.save()
                return HttpResponse(json.dumps({'status': 'success', 'msg': u'收藏成功'}), content_type='application/json')
            else:
                return HttpResponse(json.dumps({'status': 'fail', 'msg': u'收藏出错'}), content_type='application/json')
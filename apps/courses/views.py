# coding=utf-8
from django.shortcuts import render

# Create your views here.
from django.views.generic import View

from courses.models import Course
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger


class CourseListView(View):
    """课程列表页"""
    def get(self, request):
        all_courses = Course.objects.all()
        hot_courses = Course.objects.all().order_by('-click_nums')[:3]
        # 课程排序
        sort = request.GET.get('sort', '')
        if sort:
            if sort == 'students':
                all_courses = all_courses.order_by('-students')
            elif sort == 'hot':
                all_courses = all_courses.order_by('-click_nums')
        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        # Paginator(objects, display_num, request)
        p = Paginator(all_courses, 9, request=request)
        courses = p.page(page)
        return render(request, 'course-list.html', {
            'all_courses': courses,
            'sort': sort,
            'hot_courses':hot_courses,
        })
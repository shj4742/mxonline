# coding=utf-8
from django.conf.urls import url

from courses.views import CourseListView

urlpatterns = [
    # 课程首页
    url(r'^list/$', CourseListView.as_view(), name='course_list'),


]
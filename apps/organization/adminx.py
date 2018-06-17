#!/usr/bin/env python
# encoding=utf-8
__author__ = 'shj4742'


import xadmin

from .models import CityDict, CourseOrg, Teacher


class CityDictAdmin(object):
    list_display = ['name', 'desc', 'add_time']
    search_fields = ['name', 'desc']
    list_filter = ['name', 'desc', 'add_time']


class CourseOrgAdmin(object):
    list_display = ['name', 'desc', 'category', 'click_nums', 'fav_nums', 'image', 'address', 'city', 'add_time']
    search_fields = ['name', 'desc', 'category', 'click_nums', 'fav_nums', 'image', 'address', 'city']
    list_filter = ['name', 'desc', 'category', 'click_nums', 'fav_nums', 'image', 'address', 'city', 'add_time']


class TeacherAdmin(object):
    list_display = ['org', 'name', 'desc', 'work_years', 'work_company',
                    'work_position', 'points', 'click_nums', 'fav_nums', 'add_time']
    search_fields = ['org', 'name', 'desc', 'work_years', 'work_company',
                    'work_position', 'points', 'click_nums', 'fav_nums']
    list_filter = ['org', 'name', 'desc', 'work_years', 'work_company',
                    'work_position', 'points', 'click_nums', 'fav_nums', 'add_time']


xadmin.site.register(CityDict, CityDictAdmin)
xadmin.site.register(CourseOrg, CourseOrgAdmin)
xadmin.site.register(Teacher, TeacherAdmin)
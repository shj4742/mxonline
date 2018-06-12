#!/usr/bin/env python
# encoding=utf-8
__author__ = 'shj4742'

from .models import UserAsk, UserCourse, UserMessage, CourseComments, UserFavorite

import xadmin


class UserAskAdmin(object):
    list_display = ['name', 'mobile', 'course_name', 'add_time']
    search_fields = ['name', 'mobile', 'course_name']
    list_filter = ['name', 'mobile', 'course_name', 'add_time']


class UserCourseAdmin(object):
    list_display = ['user', 'course', 'add_time']
    search_fields = ['user', 'course']
    list_filter = ['user', 'course', 'add_time']


class UserMessageAdmin(object):
    list_display = ['user', 'message', 'is_read', 'send_time']
    search_fields = ['user', 'message', 'is_read']
    list_filter = ['user', 'message', 'is_read', 'send_time']


class CourseCommentsAdmin(object):
    list_display = ['user', 'course', 'comments', 'add_time']
    search_fields = ['user', 'course', 'comments']
    list_filter = ['user', 'course', 'comments', 'add_time']


class UserFavoriteAdmin(object):
    list_display = ['user', 'course', 'fav_id', 'fav_type', 'add_time']
    search_fields = ['user', 'course', 'fav_id', 'fav_type']
    list_filter = ['user', 'course', 'fav_id', 'fav_type', 'add_time']


xadmin.site.register(UserAsk, UserAskAdmin)
xadmin.site.register(UserCourse, UserCourseAdmin)
xadmin.site.register(UserMessage, UserMessageAdmin)
xadmin.site.register(UserFavorite, UserFavoriteAdmin)
xadmin.site.register(CourseComments, CourseCommentsAdmin)

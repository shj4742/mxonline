#!/usr/bin/env python
# encoding=utf-8
__author__ = 'shj4742'


# from users.models import UserProfile

from users.models import EmailVerifyRecord, Banner

import xadmin
#
#
# class UserProfileAdmin(object):
#     pass
#
# xadmin.site.register(UserProfile, UserProfileAdmin)
from xadmin import views


class BaseSetting(object):
    enable_themes = True
    use_bootswatch = True


class GlobalSettings(object):
    site_title = u'学无止境 后台管理系统'
    site_footer = 'shj4742@126.com'
    menu_style = 'accordion'

class EmailVerifyRecordAdmin(object):
    list_display = ['code', 'email', 'send_type', 'send_time']
    search_fields = ['code', 'email', 'send_type']
    list_filter = ['code', 'email', 'send_type', 'send_time']


class BannerAdmin(object):
    list_display = ['title', 'image', 'url', 'index', 'add_time']
    search_fields = ['title', 'image', 'url', 'index']
    list_filter = ['title', 'image', 'url', 'index', 'add_time']


xadmin.site.register(EmailVerifyRecord, EmailVerifyRecordAdmin)
xadmin.site.register(Banner, BannerAdmin)
xadmin.site.register(views.BaseAdminView, BaseSetting)
xadmin.site.register(views.CommAdminView, GlobalSettings)
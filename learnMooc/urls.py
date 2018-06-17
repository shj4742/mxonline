# coding=utf-8
"""learnMooc URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Import the include() function: from django.conf.urls import url, include
    3. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import url, include
# from django.contrib import admin
# 静态页面展示
from django.views.generic import TemplateView
# 导入user.views
from organization.views import OrgListView
from users.views import LoginView, ModifyPwdView
from users.views import ActiveUserView
from users.views import RegisterView
from users.views import ForgetPwdView
from users.views import ResetPwdView
from users.views import LogoutView

import captcha
import xadmin
urlpatterns = [
    url(r'^xadmin/', xadmin.site.urls),
    url(r'^$', TemplateView.as_view(template_name='index.html'), name='index'),
    url(r'^login/$', LoginView.as_view(), name='login'),
    url(r'^register/$', RegisterView.as_view(), name='register'),
    url(r'^captcha/', include('captcha.urls')),
    url(r'^active/(?P<active_code>.*)/$', ActiveUserView.as_view(), name='active'),
    url(r'^reset/(?P<reset_code>.*)/$', ResetPwdView.as_view(), name='reset'),
    url(r'^forget/$', ForgetPwdView.as_view(), name='forget_pwd'),
    url(r'^modify_pwd/$', ModifyPwdView.as_view(), name='modify_pwd'),
    url(r'^logout/$', LogoutView.as_view(), name='logout'),
    # 课程机构首页
    url(r'^org_list/$', OrgListView.as_view(), name='org_list'),

]

# coding=utf-8
from django.conf.urls import url, include

from organization.views import OrgListView
from organization.views import AddUserAskView
from organization.views import OrgHomeView
from organization.views import OrgCourseView
from organization.views import OrgTeacherView
from organization.views import OrgDescView
from organization.views import AddFavView

urlpatterns = [
    # 课程机构首页
    url(r'^list/$', OrgListView.as_view(), name='org_list'),
    url(r'^add_ask/$', AddUserAskView.as_view(), name='add_ask'),
    url(r'home/(?P<org_id>\d+)/$', OrgHomeView.as_view(), name='home'),
    url(r'course/(?P<org_id>\d+)/$', OrgCourseView.as_view(), name='course'),
    url(r'teacher/(?P<org_id>\d+)/$', OrgTeacherView.as_view(), name='teacher'),
    url(r'desc/(?P<org_id>\d+)/$', OrgDescView.as_view(), name='desc'),
    # 机构收藏
    url(r'^add_fav/$', AddFavView.as_view(), name='add_fav'),

]
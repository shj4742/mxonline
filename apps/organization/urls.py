# coding=utf-8
from django.conf.urls import url, include

from organization.views import OrgListView
from organization.views import AddUserAskView
from organization.views import OrgHomeView

urlpatterns = [
    # 课程机构首页
    url(r'^list/$', OrgListView.as_view(), name='org_list'),
    url(r'^add_ask/$', AddUserAskView.as_view(), name='add_ask'),
    url(r'home/(?P<org_id>[0-9]+)/$', OrgHomeView.as_view(), name='home'),
]
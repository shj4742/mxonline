# coding=utf-8
from django.shortcuts import render

# Create your views here.
from django.views.generic import View


class OrgListView(View):
    """课程机构首页"""
    def get(self, request):
        return render(request, 'org-list.html')
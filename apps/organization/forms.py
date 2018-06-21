# coding=utf-8
from django import forms

from operation.models import UserAsk
import re

# 原form验证逻辑
# class UserAskForm(forms.Form):
#     name = forms.CharField(required=True, min_length=2, max_length=20)
#     phone = forms.CharField(required=True, min_length=1, max_length=11)
#     course_name = forms.CharField(required=True, min_length=5, max_length=50)
#


class UserAskForm(forms.ModelForm):
    # 同时可以新建form做验证
    # my_fields = forms.CharField()

    # 将model转换成form
    class Meta:
        model = UserAsk
        fields = ['name', 'mobile', 'course_name']

    def clean_mobile(self):
        """验证手机号码是否合法"""
        mobile = self.cleaned_data['mobile']
        REGEX_MOBILE = '^(13\d|14[5|7]|15\d|166|17[3|6|7]|18\d)\d{8}$'
        p = re.compile(REGEX_MOBILE)
        if p.match(mobile):
            return mobile
        else:
            # 抛出异常
            raise forms.ValidationError(u'手机号码非法', code='mobile_warn')
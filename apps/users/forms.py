# coding=utf-8
from django import forms
from captcha.fields import CaptchaField

# 用于在输入阶段判断输入的正确性，减少数据库查询压力
class LoginForm(forms.Form):
    username = forms.CharField(required=True)
    password = forms.CharField(required=True, min_length=6)


class RegisterForm(forms.Form):
    email = forms.EmailField(required=True)
    password = forms.CharField(required=True, min_length=6)
    captcha = CaptchaField(error_messages={'invalid': u'验证码错误！'})


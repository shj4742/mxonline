# coding=utf-8
from django.contrib.auth.hashers import make_password
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.backends import ModelBackend
from django.views.generic.base import View

from courses.models import Course
from organization.models import CourseOrg
from users.forms import LoginForm, RegisterForm, ForgetPwdForm, ModifyPwdForm
from users.models import UserProfile, EmailVerifyRecord
from django.db.models import Q
from utils.email_send import send_register_email

# Create your views here.


class CustomBackend(ModelBackend):
    def authenticate(self, username=None, password=None, **kwargs):
        try:
            user = UserProfile.objects.get(Q(username=username) | Q(email=username))
            if user.check_password(password):
                return user
        except Exception as e:
            return None

class IndexView(View):
    """首页"""
    def get(self, request):
        all_orgs = CourseOrg.objects.all().order_by('-click_nums')[:15]
        all_courses = Course.objects.all().order_by('-click_nums')[:6]
        return render(request, 'index.html', {'all_orgs': all_orgs, 'all_courses': all_courses})

class LoginView(View):

    def get(self, request):
        return render(request, 'login.html')

    def post(self, request):
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            username = request.POST.get('username')
            password = request.POST.get('password')
            user = authenticate(username=username, password=password)
            if user is not None:
                if user.is_active:
                    login(request, user)
                    return render(request, 'index.html', {'user': user})
                else:
                    return render(request, 'login.html', {'msg': u'用户未被激活！', 'login_form': login_form})
            else:
                return render(request, 'login.html', {'msg': u'用户名或密码错误！', 'login_form': login_form})
        else:
            return render(request, 'login.html', {'login_form': login_form})


class ActiveUserView(View):
    def get(self, request, active_code):
        all_records = EmailVerifyRecord.objects.filter(code=active_code)
        if all_records:
            for recode in all_records:
                if not recode.is_rcode:
                    email = recode.email
                    user = UserProfile.objects.get(email=email)
                    user.is_active = True
                    recode.is_rcode = True
                    recode.save()
                    user.save()
                else:
                    return HttpResponse('链接已失效请重新注册')
            return HttpResponse('注册成功，请前往登录界面登录！')
        else:
            return HttpResponse('连接无效请重新注册')


class RegisterView(View):

    def get(self, request):
        register_form = RegisterForm()
        return render(request, 'register.html', {'register_form': register_form})

    def post(self, request):
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            user_name = request.POST.get('email', '')
            if UserProfile.objects.filter(email=user_name):
                return render(request, 'register.html', {'msg': '用户已存在!', 'register_form': register_form})
            else:
                pass_word = request.POST.get('password', '')
                user_profile = UserProfile()
                user_profile.username = user_name
                user_profile.email = user_name
                user_profile.password = make_password(pass_word)
                user_profile.is_active = False
                user_profile.save()
                status = send_register_email(user_name, 'register')
                if status:
                    return render(request, 'login.html')
                else:
                    return render(request, 'register.html', {'register_form': register_form})
        else:
            return render(request, 'register.html', {'register_form': register_form})


class ForgetPwdView(View):

    def get(self, request):
        forget_form = ForgetPwdForm()
        return render(request, 'forgetpwd.html', {'forget_form': forget_form})

    def post(self, request):
        forget_form = ForgetPwdForm(request.POST)
        if forget_form.is_valid():
            email = request.POST.get('email')
            status = send_register_email(email, 'forget')
            if status:
                return HttpResponse(u'邮件发送成功， 请查收')
            else:
                return render(request, 'forgetpwd.html', {'msg': '重置失败请重新输入!'})
        else:
            return render(request, 'forgetpwd.html', {'forget_form': forget_form})


class ResetPwdView(View):
    def get(self, request, reset_code):
        all_records = EmailVerifyRecord.objects.filter(code=reset_code)
        if all_records:
            for recode in all_records:
                if not recode.is_rcode:
                    email = recode.email
                    recode.is_rcode = True
                    recode.save()
                    return render(request, 'password_reset.html', {'email': email})
                else:
                    return render(request, 'login.html', {'msg': '链接已失效！请重新填写信息'})
        else:
            return HttpResponse('连接无效请重新填写信息')


class ModifyPwdView(View):

    def post(self, request):
        modify_form = ModifyPwdForm(request.POST)
        if modify_form.is_valid():
            pwd1 = request.POST.get('password1')
            pwd2 = request.POST.get('password2')
            email = request.POST.get('email')
            if pwd1 != pwd2:
                return render(request, 'password_reset.html', {'msg': '密码输入不一致，请重新输入'})
            else:
                user = UserProfile.objects.get(email=email)
                user.password = make_password(pwd2)
                user.save()
                return render(request, 'login.html')
        else:
            email = request.POST.get('email')
            return render(request, 'password_reset.html', {'email': email})


class LogoutView(View):
    def get(self, request):
        logout(request)
        return redirect('/')

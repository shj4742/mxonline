# coding=utf-8
from django.contrib.auth.hashers import make_password
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login
from django.contrib.auth.backends import ModelBackend
from django.views.generic.base import View
from users.forms import LoginForm, RegisterForm
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
                email = recode.email
                user = UserProfile.objects.get(email=email)
                user.is_active = True
                user.save()
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



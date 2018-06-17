# coding=utf-8
import random

from django.core.mail import send_mail

from users.models import EmailVerifyRecord
from learnMooc.settings import EMAIL_FROM


def send_register_email(email, send_type='register'):
    email_record = EmailVerifyRecord()
    code = random_str(16)
    email_record.code = code
    email_record.email = email
    email_record.send_type = send_type
    email_record.save()

    email_title = u''
    email_body = u''
    if send_type == 'register':
        email_title = u'学无止境网注册激活链接'
        email_body = u'请点击下面链接激活你的账号：http://{}/active/{}'.format('127.0.0.1:8000', code)
        send_status = send_mail(email_title, email_body, EMAIL_FROM, [email])
        if send_status:
            return True
        else:
            return False
    elif send_type == 'forget':
        email_title = u'学无止境网密码重置'
        email_body = u'请点击下面链接重置你的密码：http://{}/reset/{}'.format('127.0.0.1:8000', code)
        send_status = send_mail(email_title, email_body, EMAIL_FROM, [email])
        if send_status:
            return True
        else:
            return False

def random_str(randomlength=0):
    string = ''
    chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789'
    length = len(chars) - 1
    for i in range(randomlength):
        string += chars[random.randint(0, length)]
    return string



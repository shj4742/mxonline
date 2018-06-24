py -2 -m install django==1.9

py -2 -m install future

py -2 -m install six

py -2 -m install django-import-export

py -2 -m pip install pillow



setting：

    AUTH_USER_MODEL = 'users.UserProfile'
    sys.path.insert(0, os.path.join(BASE_DIR, 'apps'))
    sys.path.insert(1, os.path.join(BASE_DIR, 'extra_apps'))
    STATIC_ROOT = '/collectstatics/'
    STATICFILES_DIRS = [os.path.join(BASE_DIR, 'static'), ]

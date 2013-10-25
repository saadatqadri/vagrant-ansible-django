virtualenv venv --distribute
source venv/bin/activate
pip install django-toolbelt
django-admin.py startproject {{ app_name }} .

python manage.py runserver 0.0.0.0:8000


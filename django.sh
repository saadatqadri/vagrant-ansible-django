virtualenv venv --distribute
source venv/bin/activate
pip install django-toolbelt
django-admin.py startproject portfolio .
echo "web: gunicorn hellodjango.wsgi" > Procfile
python manage.py runserver


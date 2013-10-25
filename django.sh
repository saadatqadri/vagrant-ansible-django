virtualenv venv --distribute
source venv/bin/activate
pip install django-toolbelt
django-admin.py startproject portfolio .

# If you want to use gunicorn
echo "web: gunicorn hellodjango.wsgi" > Procfile

python manage.py runserver 0.0.0.0:8000


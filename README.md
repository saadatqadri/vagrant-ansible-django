# Python Django Ansible

A quick and easy way to create a base VM for Django development.

+ Pip
+ VirtualEnv
+ Python 2.7
+ Django 1.5
+ NGINX

## Use

If you already have ansible installed then getting a Django environment running is quick and easy

```
# Bring up the VM
vagrant up

# Provision the VM
./deploy.sh
```

To create a new Django project

```
vagrant up
vagrant ssh

cd /vagrant
# The next task will setup a new project using Virtual env.
# You will need to open this file and update the project name if you want to use it.
# This is just to give you some pointers on how you might create a new project
# using pip and virtualenv
./django.sh
```

Inside the VM start the Django server which will now be available via http://localhost:8000

```
manage.py runserver 0.0.0.0:8000
```

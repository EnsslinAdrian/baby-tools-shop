# Babyshop

A simple baby-themed e-commerce shop built with Django.<br>
Created as a practice project for containerization with Docker.<br>
Includes basic product and category functionality in a web application.

## Inhalsverzeichnis
1. [Technologies](#Technologies)
2. [Quickstart](#Quickstart)
3. [Table of Contents](#Table-of-Contents)
4. [.env](#.env)
5. [Createsuperuser](#Createsuperuser)

## Technologies
A list of technologies used within the project:
* [Django](https://www.djangoproject.com/): Version 4.0.2 
* [Pillow](https://pillow.readthedocs.io/en/stable/index.html): 12.0.0
* [Python-Dotenv](https://pypi.org/project/python-dotenv/): Version 1.2.1

## Quickstart
#### Clone the project from Github:
```bash
git clone -b docker-setup git@github.com:EnsslinAdrian/baby-tools-shop.git
```

#### Create the .env file and fill in the variables:
```bash
cp .env.template .env
```
> 💡 How to create a Secret Key is explained here [.env](#.env).

#### Migrate your project:
```bash
python manage.py migrate
```

#### Create a superuser for the Admin Interface:
```bash
python manage.py createsuperuser
```

#### Create a Docker Container:
```bash
docker build -t babyshop_app -f Dockerfile .
docker run -d -p 8025:8025 --name babyshop_container babyshop_app
```

> 💡 Access the localhost at localhost:8025 in your URL

<br>


## File Structure
```
baby-tools-shop/
├── babyshop/
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── apps/
│   ├── products/
│   │   ├── migrations/
│   │   ├── __init__.py
│   │   ├── admin.py
│   │   ├── apps.py
│   │   ├── models.py
│   │   ├── views.py
│   │   └── urls.py
│   └── categories/
│       ├── migrations/
│       ├── __init__.py
│       ├── admin.py
│       ├── apps.py
│       ├── models.py
│       ├── views.py
│       └── urls.py
├── static/
│   ├── css/
│   ├── js/
│   └── images/
├── templates/
│   ├── base.html
│   ├── products/
│   └── categories/
├── requirements.txt
├── Dockerfile
├── .env.template
├── .gitignore
├── manage.py
└── README.md
```

<br>

## .env
```bash
cp .env.template .env
```
Generate Secret Key in terminal:
```bash
python -c "from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())"
```


<br>

## 👤 Author
Adrian Enßlin
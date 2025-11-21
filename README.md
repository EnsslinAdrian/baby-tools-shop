# Babyshop

A simple baby-themed e-commerce shop built with Django.<br>
Created as a practice project for containerization with Docker.<br>
Includes basic product and category functionality in a web application.

## Inhalsverzeichnis
1. [Technologies](#Technologies)
2. [Installation](#Installation)
3. [.env](#.env)
3. [Createsuperuser](#Createsuperuser)

<br>

## Technologies
A list of technologies used within the project:
* [Technologie name](https://example.com): Version 12.3 
* [Technologie name](https://example.com): Version 2.34
* [Library name](https://example.com): Version 1234

<br>

## Installation
A little intro about the installation. 
```
$ git clone https://example.com
$ cd ../path/to/the/file
$ npm install
$ npm start
```
Side information: To use the application in a special environment use ```lorem ipsum``` to start

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

## Createsuperuser
```bash
python manage.py migrate
python manage.py createsuperuser
```
Fill in the fields for superuser registration:
* Nickname
* Email
* Password

<br>

## 👤 Author
Adrian Enßlin
# Babyshop 🍼

A simple baby-themed e-commerce shop built with Django.  
Created as a practice project to learn Docker containerization and clean project structuring.

---

## 📚 Table of Contents
1. [Technologies](#technologies)
2. [Quickstart](#quickstart)
3. [Project Structure](#project-structure)
4. [.env Setup](#env-setup)
5. [Live Demo](#live-demo)
6. [Author](#author)

---

## 🛠 Technologies
This project uses:

- **Django** 4.0.2  
- **Pillow** 12.0.0  
- **Python-Dotenv** 1.2.1  
- **Docker** (optional but recommended)

---

## 🚀 Quickstart

### Option A — Run with Docker (recommended)

Clone the project:

```bash
git clone -b docker-setup git@github.com:EnsslinAdrian/baby-tools-shop.git
cd baby-tools-shop
```

Create your environment variables:

```bash
cp .env.template .env
```

Build the Docker image:

```bash
docker build -t babyshop_app -f Dockerfile .
```

Run the container:

```bash
docker run -d -p 8025:8025 --name babyshop_container babyshop_app
```

Run migrations inside the container:
```bash
docker exec -it babyshop_container python manage.py migrate
```

Create admin user (optional):
```bash
docker exec -it babyshop_container python manage.py createsuperuser
```

Visit the app at:  
👉 **http://localhost:8025**

---

### Option B — Run locally (without Docker)

Install dependencies:

```bash
pip install -r requirements.txt
```

Create `.env` file:

```bash
cp .env.template .env
```

Run migrations:

```bash
python manage.py migrate
```

Create admin user:

```bash
python manage.py createsuperuser
```

Run development server:

```bash
python manage.py runserver
```

---

## 📦 Project Structure

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

---

## 🔐 .env Setup

Copy template:

```bash
cp .env.template .env
```

Generate a Django secret key:

```bash
python -c "from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())"
```

Paste the generated key into your `.env`.

---

## 🌍 Live Demo

The Babyshop application is deployed on a remote Linux server using Docker.
You can access the live demo here:

👉 **[Open Live Demo](http://168.119.232.167:8025)**

---

## 👤 Author

**Adrian Enßlin**

---

If you need improvements, feature additions, or deployment help, feel free to ask!

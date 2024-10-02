# Docker-environment for PHP-developers

Набор Dockerfile и docker-compose.yml для развёртывания рабочего окружения php-разработчика в изолированных контейнерах через Docker / Docker Compose.

Состав контейнеров:

1. PHP 8.3.10-fpm (с composer, xdebug *, phpcs, phpunit, phpstan) и Node 22.x (с набором линтеров ESLint, HtmlHint, StyleLint и простым сервером http-server).
	* Конфиг Xdebug рассчитан на работу в VS Code.
2. Nginx 1.27.0 (localhost:80 в директории /project/app).
3. PostgreSQL 16.4 * (myuser/mypassword/mydatabase - изменить можно в docker-compose.yml).
	* Данные дублируются в /project/db/ на хосте

Конфиги nginx, xdebug, линтеров, composer, npm будут доступны в корне директории project/

### Клонирование репозитория

```bash
git clone git@github.com:NickRyabinin/docker-environment.git
```

### Сборка контейнеров и создание базовых директорий проекта

```bash
cd docker-environment/

make build-dev
```

### Запуск контейнеров

```bash
make run
```

### Остановка контейнеров

```bash
make stop
```

### Запуск терминала в контейнере php

```bash
make bash
```

### Линтинг написанного кода

```bash
make lint-php
make lint-js
make lint-html
make lint-css
```

### Анализ кода с помощью PHPStan

```bash
make scan
```

### Запуск phpunit-тестов (из директории tests/)

```bash
make test
```
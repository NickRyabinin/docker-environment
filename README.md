# docker-environment

### В процессе ...

Планируется подготовить набор Dockerfile и docker-compose.yml для развёртывания рабочего окружения php-разработчика в изолированных контейнерах через Docker / Docker Compose.

Состав контейнеров:

1. PHP (с xdebug *, phpcs, phpunit и, возможно, phpstan), Node (с набором линтеров ESLint, HtmlHint, StyleLint и простым сервером типа http-server).
	* Конфиг Xdebug рассчитан на работу в VS Code.
2. Nginx
3. PostgreSQL

### Клонирование репозитория и сборка контейнеров

```bash
git clone git@github.com:NickRyabinin/docker-environment.git

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

### Запуск терминала в контейнере

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
# docker-environment

### В процессе ...

Планируется подготовить набор Dockerfile и docker-compose.yml для развёртывания рабочего окружения php-разработчика в изолированных контейнерах через Docker / Docker Compose.

В идеале хотелось бы иметь PHP (с xdebug, phpcs, phpunit и, возможно, phpstan), Node (с набором линтеров ESLint, HtmlHint, StyleLint и простым сервером типа http-server), Nginx и PostgreSQL.

### Клонирование репозитория и сборка контейнеров

```bash
git clone git@github.com:NickRyabinin/docker-environment.git

cd docker-environment/

make build
```

### Запуск контейнеров

```bash
make run
```

### Остановка контейнеров

```bash
make stop
```

### Линтинг написанного кода

```bash
make lint-php
make lint-js
make lint-html
make lint-css
```

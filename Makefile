build-dev:
	mkdir -p ./project/app/src/
	mkdir -p ./project/db/
	docker-compose up --build
run:
	docker-compose up -d
stop:
	docker-compose stop
bash:
	docker-compose exec php bash
lint-php:
	docker-compose exec php phpcs --standard=PSR12 --extensions=php ./app/
lint-js:
	docker-compose exec php npx eslint ./app/
lint-html:
	docker-compose exec php npx htmlhint ./app/
lint-css:
	docker-compose exec php npx stylelint ./app/src/styles/*.css

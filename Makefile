build:
	mkdir -p ./app/src/
	mkdir -p ./db/
	docker-compose up --build
run:
	docker-compose up -d
stop:
	docker-compose stop
lint-php:
	docker-compose exec php phpcs --standard=PSR12 --extensions=php ./src/
lint-js:
	docker-compose exec php npx eslint ./src/
lint-html:
	docker-compose exec php npx htmlhint ./src/
lint-css:
	docker-compose exec php npx stylelint ./src/styles/*.css

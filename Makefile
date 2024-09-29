build-dev:
	mkdir -p ./project/app/src/
	mkdir -p ./project/db/
	mkdir -p ./project/tests/
	cp ./configs/* ./project/
	cp ./configs/.htmlhintrc ./configs/.stylelintrc ./project/
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
test:
	docker-compose exec php ./vendor/bin/phpunit --configuration /project/phpunit.xml tests/
scan:
	docker-compose exec php ./vendor/bin/phpstan analyse --configuration /project/phpstan.neon app/ tests/

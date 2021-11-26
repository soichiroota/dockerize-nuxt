up:
	docker-compose up

up--build:
	docker-compose up --build

down:
	docker-compose down

install:
	docker-compose build
	docker-compose run --rm app yarn install

dev:
	docker-compose run --rm --service-ports app yarn dev

build:
	docker-compose run --rm app yarn build

start:
	docker-compose run --rm --service-ports app yarn start

jest:
	make install
	docker-compose run --rm app yarn test

lint:
	docker-compose run --rm app yarn lint

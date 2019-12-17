build:
	docker-compose build

compose_up:
	docker-compose -f docker-compose.yml -p changetheworld up

compose_down:
	docker-compose -f docker-compose.yml -p changetheworld down
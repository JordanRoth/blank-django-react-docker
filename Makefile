start:
	docker-compose build;
	docker-compose up -d;

logs:
	docker-compose logs -f;

down:
	docker-compose down;

restart:
	docker-compose restart;

stop:
	docker-compose stop;

init-deploy:
	docker-compose up -d deploy;
	docker-compose exec deploy bash -c "cd app && eb init --profile <PROJECT_NAME>";

do-deploy:
	docker-compose up -d deploy;
	docker-compose exec deploy bash -c "cd app && eb deploy <PROJECT_NAME>-env --profile <PROJECT_NAME>";

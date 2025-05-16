dev:                ## start dev stack
	docker compose --env-file .env.dev up -d --build

stop:               ## stop stack
	docker compose down

ci:                 ## lint + tests placeholder
	echo "TODO: add ruff, pytest, npm tests"

.PHONY: dev stop ci

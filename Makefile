dev:                ## start dev stack
	docker compose --env-file .env.dev up -d --build

stop:               ## stop stack
	docker compose down

ci:                 ## lint + tests
	ruff backend && pytest && npm --prefix ui test

.PHONY: dev stop ci

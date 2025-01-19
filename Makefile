# Makefile for managing tasks

# Variables
DOCKER_COMPOSE_DEV = docker compose -f todo-app/docker-compose.dev.yaml
DOCKER_COMPOSE_PROD = docker compose -f todo-app/docker-compose.yaml

# Targets
.PHONY: build-dev
build-dev:
	@echo "Building Docker images..."
	$(DOCKER_COMPOSE_DEV) build

.PHONY: up-dev
up-dev:
	@echo "Starting development environment..."
	$(DOCKER_COMPOSE_DEV) up

.PHONY: down-dev
down-dev:
	@echo "Stopping development environment..."
	$(DOCKER_COMPOSE_DEV) down

.PHONY: logs-dev
logs-dev:
	@echo "Showing logs..."
	$(DOCKER_COMPOSE_DEV) logs -f

.PHONY: test
test:
	@echo "Running tests..."
	# Add your test command here, e.g., pytest 
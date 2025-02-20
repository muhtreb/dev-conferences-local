DOCKER_COMPOSE=docker compose
.PHONY: init
init:
	# Create volume dev-conferences-certs if not exists
	docker volume create dev-conferences-certs 2> /dev/null || true
    # Create networks
	docker network create dev-conferences-services 2> /dev/null || true
	docker network create dev-conferences-traefik 2> /dev/null || true

.PHONY: up
up:
	$(DOCKER_COMPOSE) up -d
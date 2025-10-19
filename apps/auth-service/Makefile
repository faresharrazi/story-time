# Makefile for Auth Service

.PHONY: build run test clean deps

# Build the auth service
build:
	go build -o auth-service main.go

# Run the auth service
run:
	go run main.go

# Run tests
test:
	go run test_auth.go

# Install dependencies
deps:
	go mod tidy

# Clean build artifacts
clean:
	rm -f auth-service

# Run with hot reload (requires air)
dev:
	air

# Run database migrations (if needed)
migrate:
	@echo "Database migrations are handled by Docker Compose"

# Start local services
services-up:
	docker-compose up -d mysql redis

# Stop local services
services-down:
	docker-compose down

# View service logs
logs:
	docker-compose logs -f mysql redis

# Full test suite
test-all: services-up
	@echo "Waiting for services to start..."
	@sleep 5
	go run test_auth.go
	docker-compose down

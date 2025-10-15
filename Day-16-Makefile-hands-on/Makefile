# Makefile for Flask To-Do App

# Variables
APP_NAME=flask-todo-app
PORT=5000
DOCKER_IMAGE=${APP_NAME}:latest
CONTAINER_NAME=${APP_NAME}-container

# Default target
.DEFAULT_GOAL := help

# Colors for output
GREEN := \033[0;32m
YELLOW := \033[1;33m
RED := \033[0;31m
NC := \033[0m

# Help command
help:
	@echo ""
	@echo "Available commands:"
	@echo "  make setup       - Set up virtual environment and install dependencies"
	@echo "  make run         - Run Flask app locally"
	@echo "  make build       - Build Docker image"
	@echo "  make start       - Start Docker container"
	@echo "  make stop        - Stop Docker container"
	@echo "  make clean       - Clean up temporary files"
	@echo ""

# Set up environment
setup:
	@echo "$(YELLOW)Setting up virtual environment...$(NC)"
	@if [ ! -d "venv" ]; then \
		python3 -m venv venv && \
		. venv/bin/activate && \
		pip install -r requirements.txt && \
		echo "$(GREEN)Environment setup complete.$(NC)"; \
	else \
		echo "$(YELLOW)Virtual environment already exists.$(NC)"; \
	fi

# Run Flask app locally
run:
	@echo "$(YELLOW)Starting Flask app on port $(PORT)...$(NC)"
	@if [ -f "app.py" ]; then \
		export FLASK_APP=app.py && \
		flask run --port=$(PORT); \
	else \
		echo "$(RED)Error: app.py not found.$(NC)"; \
	fi

# Build Docker image
build:
	@echo "$(YELLOW)Building Docker image $(DOCKER_IMAGE)...$(NC)"
	@if [ -f "Dockerfile" ]; then \
		docker build -t $(DOCKER_IMAGE) . && \
		echo "$(GREEN)Docker image built successfully.$(NC)"; \
	else \
		echo "$(RED)Error: Dockerfile not found.$(NC)"; \
	fi

# Start Docker container
start:
	@echo "$(YELLOW)Starting Docker container...$(NC)"
	@if docker ps -a --format '{{.Names}}' | grep -Eq "^$(CONTAINER_NAME)$$"; then \
		echo "$(YELLOW)Container already exists. Restarting...$(NC)"; \
		docker start -ai $(CONTAINER_NAME); \
	else \
		docker run -d -p $(PORT):5000 --name $(CONTAINER_NAME) $(DOCKER_IMAGE) && \
		echo "$(GREEN)Container started successfully on port $(PORT).$(NC)"; \
	fi

# Stop Docker container
stop:
	@echo "$(YELLOW)Stopping Docker container...$(NC)"
	@if docker ps --format '{{.Names}}' | grep -Eq "^$(CONTAINER_NAME)$$"; then \
		docker stop $(CONTAINER_NAME) && \
		echo "$(GREEN)Container stopped.$(NC)"; \
	else \
		echo "$(YELLOW)No running container found.$(NC)"; \
	fi

# Clean up temporary files
clean:
	@echo "$(YELLOW)Cleaning up...$(NC)"
	@find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	@find . -type f -name "*.pyc" -delete 2>/dev/null || true
	@docker rm -f $(CONTAINER_NAME) >/dev/null 2>&1 || true
	@echo "$(GREEN)Cleanup complete.$(NC)"


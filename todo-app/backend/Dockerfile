# Stage 1: Build stage to generate requirements.txt
FROM python:3.12-slim AS builder

# Set the working directory
WORKDIR /app

# Install Poetry
RUN pip install --no-cache-dir uv

# Copy necessary files to the container
COPY pyproject.toml ./

# Generate requirements.txt
RUN uv export --no-hashes -o requirements.txt

# Stage 2: Production stage
FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Copy requirements.txt from the builder stage
COPY --from=builder /app/requirements.txt ./

# Copy application files
COPY main.py ./
COPY api ./api

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
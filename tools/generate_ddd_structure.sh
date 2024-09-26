#!/bin/bash

# Set the base directory (src/)
BASE_DIR="../src"

# Create the Domain Layer
DOMAIN_DIR="$BASE_DIR/Domain/Orders"
mkdir -p "$DOMAIN_DIR/Entities" \
         "$DOMAIN_DIR/ValueObjects" \
         "$DOMAIN_DIR/Repositories" \
         "$DOMAIN_DIR/Services" \
         "$DOMAIN_DIR/Events" \
         "$DOMAIN_DIR/Exceptions" \
         "$DOMAIN_DIR/Interfaces"

echo "Created Domain layer directories."

# Create the Application Layer
APPLICATION_DIR="$BASE_DIR/Application/Orders"
mkdir -p "$APPLICATION_DIR/Commands" \
         "$APPLICATION_DIR/Handlers" \
         "$APPLICATION_DIR/Queries" \
         "$APPLICATION_DIR/Services"

echo "Created Application layer directories."

# Create the Infrastructure Layer
INFRASTRUCTURE_DIR="$BASE_DIR/Infrastructure"
mkdir -p "$INFRASTRUCTURE_DIR/Persistence/Eloquent" \
         "$INFRASTRUCTURE_DIR/Http/Controllers" \
         "$INFRASTRUCTURE_DIR/Http/Middleware"

echo "Created Infrastructure layer directories."

# Create the Shared Layer
SHARED_DIR="$BASE_DIR/Shared"
mkdir -p "$SHARED_DIR/ValueObjects" \
         "$SHARED_DIR/Contracts" \
         "$SHARED_DIR/Traits"

echo "Created Shared layer directories."

# Create the Tests Directory
TEST_DIR="tests"
mkdir -p "$TEST_DIR/Unit/Application/Orders" \
         "$TEST_DIR/Unit/Domain/Orders" \
         "$TEST_DIR/Unit/Infrastructure/Orders"

echo "Created Tests directories."

# Output success message
echo "DDD folder structure created successfully!"

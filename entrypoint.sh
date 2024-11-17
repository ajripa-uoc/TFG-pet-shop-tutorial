#!/bin/sh
# entrypoint.sh
# This script handles the compilation, migration, and testing of Truffle contracts
# Used for both development and production deployments

# Exit on any error
set -e

# Check if running in production mode
if [[ $1 == "pro" ]]; then
    echo "Running in production mode..."

    truffle compile || { echo "Truffle compile failed"; exit 1; }
    truffle migrate --network live || { echo "Production migration failed"; exit 1; }
    truffle test --network live || { echo "Truffle test failed"; exit 1; }

    echo "Starting production server..."
    npm run dev
else
    echo "Running in development mode..."

    echo "Compiling contracts..."
    truffle compile || { echo "Truffle compile failed"; exit 1; }

    echo "Migrating contracts..."
    truffle migrate || { echo "Truffle migrate failed"; exit 1; }

    echo "Running tests..."
    truffle test || { echo "Truffle test failed"; exit 1; }

fi
#!/bin/sh
# migrations.sh
# This script handles the compilation, migration, and testing of Truffle contracts

# Exit on any error
set -e

# Exit on any error
set -e

# Truffle migrate
echo "Compiling contracts..."
truffle compile || { echo "Truffle compile failed"; exit 1; }

echo "Migrating contracts..."
truffle migrate || { echo "Truffle migrate failed"; exit 1; }

echo "Running tests..."
truffle test || { echo "Truffle test failed"; exit 1; }

# TFG Truffle Pet Shop

This project is a decentralized application (DApp) built with Truffle, Ganache, and Docker Compose. It demonstrates a blockchain-based pet adoption platform. The application’s backend is developed using Ethereum smart contracts and deployed locally with Ganache.

## Prerequisites

- **Docker**: Install Docker and Docker Compose to run the application in a containerized environment.
- **Node.js and npm**: These are required if you want to manage dependencies or build the project locally without Docker.

## Project Structure

- `contracts/`: Ethereum smart contracts for the application.
- `migrations/`: Migration scripts to deploy smart contracts.
- `src/`: Frontend code for the DApp.
- `test/`: Tests for the smart contracts.

## Getting Started

### Cloning the Repository

```bash
git clone https://github.com/ajripa-uoc/TFG-truffle-pet-shop.git
cd TFG-truffle-pet-shop
```

## Running the Project with Docker Compose

The project uses Docker Compose to orchestrate the setup, with the following services:

- **frontend**: The frontend application.
- **ganache-cli**: Provides a local Ethereum blockchain environment.

### Start

```bash
docker-compose up --build -d
```


### Accessing the Application

After starting the services, you can access the DApp in your web browser at:

```
http://localhost:3000
```

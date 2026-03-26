# Censo App

Censo App is a Java-based web application deployed on Apache Tomcat that manages census data (personas). It is fully containerized using Docker and Docker Compose, making it easy to set up and run. The application uses a MySQL 8.0 database for data persistence.

## Technologies Used

- **Backend:** Java (WAR deployed on Tomcat 10.1 / JRE 21)
- **Database:** MySQL 8.0
- **Infrastructure:** Docker, Docker Compose

## Prerequisites

Before you begin, ensure you have the following installed on your machine:
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Project Structure

- `backend/` - Contains the Tomcat `Dockerfile` and the Java web application archive (`censo.war`).
- `db/` - Contains the `init.sql` script to automatically initialize the database schema and insert default data.
- `docker-compose.yml` - Defines the services (app and database).
- `.env` - Environment variables configuration file.

## Getting Started

Follow these steps to get your development environment running:

### 1. Clone the repository

```bash
git clone <your-repository-url>
cd censo_app
```

### 2. Configure Environment Variables

Create a `.env` file in the root directory of the project (if not already present or checking out from a fresh clone) and set your database credentials:

```properties
DB_ROOT_PASSWORD=your_secure_password
DB_NAME=censo
```

### 3. Build and Run the Application

Use Docker Compose to build the Java container and start both the application and database services:

```bash
docker-compose up -d --build
```

### 4. Access the Application

Once the containers are running:
- **Web Application:** Open your browser and navigate to [http://localhost:8081/](http://localhost:8081/)
- **Database:** Accessible on port `3307` (e.g., `localhost:3307` for local database clients) with the user `root` and the password defined in your `.env` file.

## Database Initialization

When the MySQL container starts for the first time, it automatically executes the `db/init.sql` script. This sets up the `censo` table with the following structure:
- `dni` (Primary Key)
- `nombre`
- `fecnac` (Date of Birth)
- `direccion`
- `telf`
- `foto`

A sample record is also inserted by default.

## Stopping the Application

To stop the running containers without removing them:
```bash
docker-compose stop
```

To stop and remove the containers, networks, and volumes:
```bash
docker-compose down
```

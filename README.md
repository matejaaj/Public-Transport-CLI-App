# Public Transport Information System

This project was created for the **Databases 2** course. It implements a simple application to manage a database of a public transport system. The database used is **Oracle Database**, which is run in a Docker container.

## Project requirements

- Writing a specification document based on the given requirements and domain analysis.
- Designing an **Entity-Relationship (ER)** diagram to model the system.
- Translating the ER diagram into a relational model using **Oracle SQL Developer Data Modeler**.
- Setting up an **Oracle Database** using Docker and defining the database schema.
- Developing a simple Java application that interacts with the database to perform operations via a **CLI**.

### Docs

All docs (in Serbian) for this project can be found in `docs` directory.

## Setup

Database setup using Docker:
```bash
docker compose build
docker compose up -d


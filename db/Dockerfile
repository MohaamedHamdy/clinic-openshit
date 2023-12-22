FROM postgres:latest

# Set environment variables
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD 2314
ENV POSTGRES_DB tools

# Copy the init.sql into the container
COPY init.sql /docker-entrypoint-initdb.d/

# Copy entrypoint script
COPY entrypoint.sh /docker-entrypoint-initdb.d/

# Change permissions of the entrypoint script (if necessary)
USER root
RUN chmod +x /docker-entrypoint-initdb.d/entrypoint.sh
USER postgres

# Expose the PostgreSQL port
EXPOSE 5432

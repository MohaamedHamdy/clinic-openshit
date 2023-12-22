FROM postgres:latest

# Set environment variables
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD 2314
ENV POSTGRES_DB tools

# Copy the init.sql into the container
COPY init.sql /docker-entrypoint-initdb.d/

# Change permissions within the /docker-entrypoint-initdb.d/ directory
# (If necessary, adjust the path based on your requirements)
USER root
RUN chown -R postgres:postgres /docker-entrypoint-initdb.d/

# Switch back to the postgres user
USER postgres

# Expose the PostgreSQL port
EXPOSE 5432

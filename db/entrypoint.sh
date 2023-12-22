#!/bin/bash

# Change permissions during container startup
chown -R postgres:postgres /var/lib/postgresql/data
chown -R postgres:postgres /var/run/postgresql

# Call the default entrypoint script of the parent image
/docker-entrypoint.sh "$@"

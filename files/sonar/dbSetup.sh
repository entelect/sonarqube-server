#!/bin/bash

createuser sonar;
echo "ALTER USER sonar WITH ENCRYPTED password '$1'; CREATE DATABASE sonar OWNER sonar; \q" | psql;

#! /bin/bash
docker run -d -p 8080:8080 --net=host \
       -e HASURA_GRAPHQL_DATABASE_URL=postgres://odoo:protect@localhost:5000/dbTransporte \
       -e HASURA_GRAPHQL_ENABLE_CONSOLE=true \
       hasura/graphql-engine:v1.2.0-beta.3
#!bin/bash
docker-compose up -d
docker-compose run app rails db:migrate RAILS_ENV=development
docker-compose run app rails db:seed
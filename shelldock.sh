#!/bin/bash

repository="https://github.com/laradock/laradock.git"

git clone $repository
mkdir www

cp .env.example laradock/.env

cp -r laravel.test.conf.example laradock/nginx/sites/laravel.test.conf

cd laradock
docker-compose up -d nginx mysql phpmyadmin
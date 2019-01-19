# Laravel 5 running on Nginx docker container

## Steps
Build image
`docker-compose up -d`

Bash into fpm image
`docker exec -it laravel-phpfpm bash`

Execute setup script
`cd / && sh install-laravel.sh`

Copy .env example file as .env into root laravel directory on host machine
https://raw.githubusercontent.com/laravel/laravel/master/.env.example

Generate application secret key from inside laravel-phpfpm container
`cd /var/www/laravel-app && php artisan key:generate`
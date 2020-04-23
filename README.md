# Laravel - Docker setup guide
> Author: Alessio Debernardi Venon

Works with Laravel versions >= 5.4

## 1. Setup environment variables
Clone the '.env-example' file and rename it as '.env'.
Customize the configuration variables inside the .env file (container ports, database password, etc) 

## 2. Run the docker-compose command
Run `docker-compose up` to build and run the containers

## 3. Install Laravel
Download and install Laravel in the directory specified in APP_DIR configuration using one of the suggested method on the Laravel docs. 

For example:
> `docker exec [container-name] bash -c 'cd /var/www/html && composer create-project laravel/laravel="6.*" ./laravel'`

## 4. Done!
Go to http://localhost:[APP_PORT]

### Useful commands
- (Build and) Run the containers: `docker-compose up`
- Stop the containers: `docker-compose stop`
- Stop and delete containers `docker-compose down`
- Open terminal inside specific container `docker exec -it [container-name] bash`
- Install/update dependancies from composer: `docker exec [container-name] bash -c 'cd /var/www/html && composer install'`
# docker-laravel 🐳

![License](https://img.shields.io/github/license/ucan-lab/docker-laravel?color=f05340)
![Stars](https://img.shields.io/github/stars/ucan-lab/docker-laravel?color=f05340)
![Issues](https://img.shields.io/github/issues/ucan-lab/docker-laravel?color=f05340)
![Forks](https://img.shields.io/github/forks/ucan-lab/docker-laravel?color=f05340)

## Introduction

Build a simple laravel development environment with docker-compose.

## Usage

```bash
$ git clone git@github.com:ucan-lab/docker-laravel.git
$ cd docker-laravel
$ make create-project # Install the latest Laravel project
$ make install-recommend-packages # Optional
```

http://localhost

## Tips

- Read this [Makefile](https://github.com/ucan-lab/docker-laravel/blob/main/Makefile).
- Read this [Wiki](https://github.com/ucan-lab/docker-laravel/wiki).

## Container structures

```bash
├── app
├── web
├── db
├── mail
├── cache
└── s3
```

### app container

- Base image
  - [php](https://hub.docker.com/_/php):8.0-fpm-bullseye
  - [composer](https://hub.docker.com/_/composer):2.1

### web container

- Base image
  - [nginx](https://hub.docker.com/_/nginx):1.20-alpine
  - [node](https://hub.docker.com/_/node):16-alpine

### db container

- Base image
  - [mysql/mysql-server](https://hub.docker.com/r/mysql/mysql-server):8.0

### mail container

- Base image
  - [mail/mailhog](https://hub.docker.com/r/mailhog/mailhog)

### cache container

- Base image
  - [redis](https://hub.docker.com/_/redis):6.2-alpine

### s3 container

- Base image
  - [minio/minio](https://hub.docker.com/r/minio/minio)


### Debug on VSCode
If you have changed the Laravel directory, please also change the pathMappings in launch.json.  
```launch.json
"pathMappings": {
    "/work/backend": "Your Laravel Directory"
},
```

#### PHPUnit Coverage
If you use PHPUnit's Coverage, please change the debug.mode in composer.json script.
```
"scripts": {
    "test:coverage": [
        "export XDEBUG_MODE=coverage && phpunit --coverage-html coverage"
    ]
}
```

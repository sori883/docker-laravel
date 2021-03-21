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
$ make install-recommend-packages # Not required
```

http://localhost

Read this [Makefile](https://github.com/sori883/docker-laravel/blob/main/Makefile).

## Tips

Read this [Wiki](https://github.com/ucan-lab/docker-laravel/wiki).

## Container structure

```bash
├── app
├── web
├── db
└── mail
```

### app container

- Base image
  - [php](https://hub.docker.com/_/php):7.4-fpm-buster
  - [composer](https://hub.docker.com/_/composer):2.0
  - [xDebug](https://xdebug.org/):3

### web container

- Base image
  - [nginx](https://hub.docker.com/_/nginx):1.18-alpine
  - [node](https://hub.docker.com/_/node):14.2-alpine

### db container

- Base image
  - [postgresql](https://hub.docker.com/_/postgres):12

  
### mail container

- Base image
  - [mailhog](https://hub.docker.com/r/mailhog/mailhog/)

#### Persistent PostgreSQL Storage

By default, the [named volume](https://docs.docker.com/compose/compose-file/#volumes) is mounted, so PostgreSQL data remains even if the container is destroyed.
If you want to delete PostgreSQL data intentionally, execute the following command.

```bash
$ docker-compose down -v && docker-compose up
```

#### Debug on VSCode
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

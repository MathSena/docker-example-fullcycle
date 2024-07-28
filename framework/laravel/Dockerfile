# Usando a imagem base do PHP 7.4 CLI
FROM php:7.4-cli

# Definindo o diretório de trabalho para /var/www
WORKDIR /var/www

# Atualizando os pacotes e instalando a biblioteca libzip-dev
# Em seguida, instalando a extensão zip do PHP
RUN apt-get update && apt-get install -y \
    libzip-dev \
    && docker-php-ext-install zip

# Baixando o instalador do Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

# Verificando a integridade do instalador do Composer
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

# Instalando o Composer
RUN php composer-setup.php

# Removendo o instalador do Composer
RUN php -r "unlink('composer-setup.php');"

# Criando um novo projeto Laravel usando o Composer
RUN php composer.phar create-project --prefer-dist laravel/laravel laravel

# Definindo o ponto de entrada para iniciar o servidor do Laravel
ENTRYPOINT [ "php", "laravel/artisan", "serve" ]

# Definindo o comando padrão para o ponto de entrada
CMD [ "--host=0.0.0.0" ]
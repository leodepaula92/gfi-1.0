# Usamos a imagem oficial do PHP com Apache como nossa base
FROM php:8.2-apache

# Habilita o módulo 'rewrite' do Apache. Este é o passo crucial.
RUN a2enmod rewrite

# (Opcional, mas recomendado) Instala extensões PHP comuns necessárias pela maioria dos frameworks
# pdo_mysql é essencial para se conectar ao banco de dados MySQL
RUN docker-php-ext-install pdo pdo_mysql
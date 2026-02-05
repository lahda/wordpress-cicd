#!/bin/bash
echo "=== Installation des dépendances ==="

# Mettre à jour le système
export DEBIAN_FRONTEND=noninteractive
apt-get update -y

# Installer Apache et PHP
apt-get install -y \
    apache2 \
    php \
    libapache2-mod-php \
    php-mysql \
    php-curl \
    php-gd \
    php-mbstring \
    php-xml \
    php-xmlrpc \
    php-intl \
    php-zip

# Activer Apache au démarrage
systemctl enable apache2

echo "=== Dépendances installées ==="
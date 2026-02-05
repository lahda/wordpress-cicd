#!/bin/bash
apt-get update
apt-get install -y apache2 php libapache2-mod-php php-mysql mysql-client
systemctl enable apache2
#!/bin/bash
echo "=== Démarrage du serveur Apache ==="

# Nettoyer le fichier index.html par défaut
if [ -f /var/www/html/index.html ]; then
    rm -f /var/www/html/index.html
    echo "Fichier index.html par défaut supprimé"
fi

# Permissions correctes
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

# Démarrer Apache
systemctl start apache2

# Vérifier le statut
if systemctl is-active --quiet apache2; then
    echo "=== Apache démarré avec succès ==="
else
    echo "=== ERREUR: Apache n'a pas démarré ==="
    systemctl status apache2
    exit 1
fi
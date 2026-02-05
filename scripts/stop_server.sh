#!/bin/bash
echo "=== Arrêt du serveur Apache ==="

if systemctl is-active --quiet apache2; then
    systemctl stop apache2
    echo "Apache arrêté"
else
    echo "Apache n'était pas démarré"
fi
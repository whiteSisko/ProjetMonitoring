#!/bin/bash

# Fonction pour afficher l'utilisation de la RAM
function get_ram_usage {
    echo "--- Utilisation RAM ---"
    # Affiche l'utilisation totale, utilisée et libre en format lisible (Mio/Gio)
    free -h | grep Mem
    echo ""
}

# Fonction pour afficher l'utilisation du CPU
function get_cpu_usage {
    echo "--- Utilisation CPU ---"
    # Utilise top en mode batch pour obtenir une seule ligne de données
    # et extrait le pourcentage d'inactivité (idle)
    # Calcule l'utilisation CPU = 100% - Inactivité
    CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    echo "Utilisation actuelle du CPU: ${CPU_IDLE}%"
    echo ""
}

# Fonction pour afficher l'espace disque
function get_disk_usage {
    echo "--- Espace Disque ---"
    # Affiche l'utilisation de l'espace disque des systèmes de fichiers locaux en format lisible
    df -h --exclude-type=tmpfs --exclude-type=devtmpfs
    echo ""
}

# Programme principal
get_ram_usage
get_cpu_usage
get_disk_usage
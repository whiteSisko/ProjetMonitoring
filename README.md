💻 system_monitor : Mini-Projet de Surveillance Système

Ce projet est un script shell léger conçu pour afficher les statistiques de base de l'utilisation des ressources d'un système Linux/Unix : RAM, CPU et espace disque.

Il sert également de démonstration pratique pour l'application du Workflow Git Flow pour la gestion des versions et des fonctionnalités.
📋 Prérequis

Pour exécuter ce script, vous devez disposer d'un environnement compatible Linux/Unix avec les commandes de base suivantes installées :

    bash

    free

    top

    df

🚀 Démarrage Rapide

    Cloner le dépôt :
    git clone https://github.com/whiteSisko/ProjetMonitoring

Exécuter le script :
Bash

    ./monitor.sh

📄 Description du Script (src/monitor.sh)

Le script agrège les données suivantes :

    Utilisation RAM : Affiche la mémoire totale, utilisée et libre (free -h).

    Utilisation CPU : Calcule le pourcentage d'utilisation active du processeur (via top).

    Espace Disque : Affiche l'utilisation des systèmes de fichiers locaux (df -h).

⚙️ Workflow de Développement (Git Flow)

Ce projet utilise un workflow inspiré de Git Flow, organisé autour des branches principales suivantes :
 - Branche	Rôle
 - main	
 - Production. 
Contient le code stable et release (versions taguées uniquement).
develop	Intégration. 
Contient le dernier code développé et testé, prêt pour la prochaine release.
feature/*	
Développement de Fonctionnalités. Branches pour l'ajout de nouvelles fonctionnalités.
Historique des Branches de Fonctionnalités

Toutes les fonctionnalités ont été développées de manière isolée sur leur propre branche et intégrées dans develop :

    feature/ram : Implémentation de la fonction d'affichage de l'utilisation RAM.

    feature/cpu : Implémentation de la fonction d'affichage de l'utilisation CPU.

    feature/disk : Implémentation de la fonction d'affichage de l'espace disque.

Exemple de Fusion (pour information)

Le développement typique d'une fonctionnalité (ex: l'affichage du CPU) a suivi ces étapes :
Bash

# 1. Création de la branche de fonctionnalité
git switch -c feature/cpu develop

# 2. Travail et Commit
# ... (modification de src/monitor.sh)
git commit -m "feat: Add CPU usage calculation based on idle time"

# 3. Fusion dans develop
git switch develop
git merge feature/cpu --no-ff
git branch -d feature/cpu

📝 TODO et Améliorations Futures

    [ ] Ajouter une option de surveillance en boucle (rafraîchissement automatique).

    [ ] Intégrer la journalisation des données dans un fichier log.

    [ ] Améliorer le formatage de la sortie (couleurs, tableau).

Ce projet est maintenu par Sisko.

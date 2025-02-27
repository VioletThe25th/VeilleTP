# Projet Python avec Docker

Ce projet est une application Flask minimale containerisée avec Docker. Il intègre des outils open source pour renforcer la qualité et la sécurité de l'image Docker.

## Prérequis

- Docker installé

## Construction de l'image Docker

Dans le répertoire du projet, exécutez :

```bash
docker build -t my-flask-app .
```

```bash
docker run -p 5000:5000 my-flask-app
```


## Outils intégrés

- **Hadolint** : Vérifie la syntaxe et les bonnes pratiques du Dockerfile.
- **Trivy** : Analyse l'image Docker à la recherche de vulnérabilités.

## Lancement manuel des outils

Un script `run_tools.sh` a été ajouté pour lancer les outils manuellement :

1. **Ajouter les droits**  
   Depuis la racine du projet :
   ```bash
   chmod +x run_tools.sh
   ```


2. **Lancer l'analyse**  
   Lancer le script depuis la racine du projet :
   ```bash
   ./run_tools.sh
   ```
    Si jamais ça ne fonctionne pas, alors essayer de le lancer avec la commande : 
    ```
    sudo bash run_tools.sh
    ```
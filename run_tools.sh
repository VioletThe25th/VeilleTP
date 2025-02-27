#!/bin/bash

set -e

echo "=== Lancement de Hadolint sur le Dockerfile ==="
# Hadolint pour anaylser Dockerfile
docker run --rm -i hadolint/hadolint < Dockerfile

echo "=== Construction de l'image Docker ==="
docker build -t my-flask-app .

echo "=== Analyse de vulnérabilités avec Trivy ==="
# Scanner image Trivy
docker run --rm --user root -v /var/run/docker.sock:/var/run/docker.sock bitnami/trivy:latest image my-flask-app

echo "=== Fin des analyses ==="

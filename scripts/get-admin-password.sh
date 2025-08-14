#!/bin/bash
set -e

NAMESPACE="argocd"

echo "Création du namespace argocd..."
kubectl create namespace $NAMESPACE || echo "Namespace exists"

echo "Installation de Argo CD en mode HA via Helm (NodePort)..."
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
helm upgrade --install argocd argo/argo-cd -n $NAMESPACE -f helm/values-ha.yaml

echo "Vérification du service NodePort..."
kubectl get svc -n argocd argocd-server -o wide

echo "Installation terminée !"

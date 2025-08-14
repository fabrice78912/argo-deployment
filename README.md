# 🚀 Déploiement Argo CD HA sur EKS avec NodePort & OIDC GitHub Actions

## 📌 Description
Ce projet permet de déployer **Argo CD en mode Haute Disponibilité (HA)** sur un cluster **Amazon EKS**, en exposant l'interface web via un **Service NodePort**.  
L'authentification entre GitHub Actions et AWS se fait via **OIDC** (OpenID Connect), ce qui évite l'utilisation de clés AWS dans les secrets GitHub.

---

## 📂 Structure du projet
argo-deployment/
├── helm/
│ └── values-ha.yaml # Configuration HA pour Argo CD
├── manifests/
│ └── argocd-ingress.yaml # (optionnel) Exemple d'Ingress
├── .github/
│ └── workflows/
│    └── deploy-argo.yml # Workflow GitHub Actions
└── README.md


# 🚀 Argo CD HA Deployment on EKS with LoadBalancer & GitHub Actions OIDC

## 📌 Description

This project deploys **Argo CD in High Availability (HA) mode** on an **Amazon EKS** cluster, exposing the web UI through a **LoadBalancer Service**.
Authentication between GitHub Actions and AWS is handled via **OIDC** (OpenID Connect), eliminating the need to store AWS keys in GitHub secrets.

---

## 📂 Project Structure

argo-deployment/
├── helm/
│   └── values-ha.yaml # HA configuration for Argo CD
├── manifests/
│   └── argocd-ingress.yaml # (optional) Example Ingress
├── .github/
│   └── workflows/
│       └── deploy-argo.yml # GitHub Actions workflow
└── README.md


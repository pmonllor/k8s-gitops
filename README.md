# k8s-gitops
The purpose of this repo is to handle **GitOps** with **ArgoCD**, using **Helm** charts for my Kubernetes cluster that is running on VirtualBox, if you're interested, check out my repo [k3s-vagrant-virtualbox](https://github.com/pmonllor/k3s-vagrant-virtualbox)

# Architecture

The `argocd` chart will create an ArgoCD deployment

The `argocd-apps` chart will handle the configuration, firstly enabling ArgoCD to manage itself and then generating Applications with an ApplicationSet that looks for them in the `kubernetes/apps/` directory

# Launch

You can launch the ArgoCD installation & configuration with one command, making use of the Makefile

```bash
make
```

# Destroy

You can also destroy the ArgoCD deployment with one command

```bash
make destroy
```
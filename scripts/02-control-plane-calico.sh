#!/usr/bin/env bash
# Run on the CONTROL PLANE node only (Calico option).
# Usage: ./02-control-plane-calico.sh <control-plane-private-ip>
set -euo pipefail

CP_IP="${1:?Usage: $0 <control-plane-private-ip>}"

sudo kubeadm init --pod-network-cidr=192.168.0.0/16 --apiserver-advertise-address="$CP_IP"
mkdir -p "$HOME/.kube"
sudo cp -i /etc/kubernetes/admin.conf "$HOME/.kube/config"
sudo chown "$(id -u):$(id -g)" "$HOME/.kube/config"
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.28.0/manifests/calico.yaml
kubectl get pods -n kube-system
kubectl get nodes

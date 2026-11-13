#!/usr/bin/env bash
# Run on the CONTROL PLANE node.
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get nodes
kubectl get pods -A
# Print the join command for worker nodes (run the output on workers as root):
kubeadm token create --print-join-command

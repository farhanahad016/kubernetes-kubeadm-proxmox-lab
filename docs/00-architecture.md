# Architecture

- Hypervisor: Proxmox VE 9.2.2, single node `pve`
- Storage: `local`, `local-lvm`
- Two independent kubeadm clusters, each with 1 control plane:
  - **c1**: c1-cp1 (201), c1-w1 (202), c1-w2 (203)
  - **c2**: c2-cp1 (301), c2-w1 (302)

## Network details

Fill in as you go:

| Item | c1 | c2 |
|---|---|---|
| Node IPs | | |
| Pod network CIDR | | |
| CNI | | |
| Service CIDR | default | default |

## Resources per VM

| VM | vCPU | RAM | Disk |
|---|---|---|---|
| c1-cp1 | | | |
| c1-w1 | | | |
| c1-w2 | | | |
| c2-cp1 | | | |
| c2-w1 | | | |

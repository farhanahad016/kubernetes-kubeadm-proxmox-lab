# 3. Worker nodes

Paste the output of the following command (run on the control plane) on each worker node **with root privilege**:

```bash
kubeadm token create --print-join-command
```

> Do not commit the join command or token to Git.

# 6. TODO / improvements

Items to revisit gradually. The current docs are a direct copy of the original working notes.

- [ ] Review pod CIDR for the Calico option against the LAN range
- [ ] Use one CNI per cluster and document which cluster uses which
- [ ] Pin the Flannel manifest version instead of `latest`
- [ ] Review Kubernetes version (currently v1.29 repo)
- [ ] Decide whether the control-plane taint removal is needed when workers exist
- [ ] Add static IPs and hostnames per node to the architecture doc
- [ ] Add real command outputs to the verification doc
- [ ] Test a full rebuild using only these docs
- [ ] Add a test deployment under `manifests/`

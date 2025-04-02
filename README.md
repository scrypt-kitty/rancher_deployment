To get `~/.kube/config` from Rancher dashboard, go to `Cluster Management`, check a cluster and click `Download KubeConfig`, or select a cluster's hamburger menu -> `Download KubeConfig`

Configure /etc/fstab:
/ / ext4  defaults,rshared 0 0
/prod /proc proc defaults,rshared 0 0
/sys /sys sysfs defaults,rshared 0 0

To install charts, go to a cluster -> Apps -> Charts

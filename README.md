# k8s_lab

A k8s lab in a laptop based on [Learn Kubernetes in a Month of Lunches](https://kiamol.net/)([Its repo](https://github.com/sixeyed/kiamol.git )). This lab helps build a k8s cluster with 1 controller and 3 worker nodes.


My environment:
* Ubuntu 22.04
* A laptop or a desktop computer with 4 core CPUs(8 threads) and 16GB RAM

## How to create a cluster

1. Run `setup.sh` to clone KIAMOL repo, install ansible, virtualbox and vagrant. This will take some time
2. Go to nfs01 directory and run `vagrant up` to start a NFS server
3. Go to controller01 directory and run `vagrant up` to start a controller machine.
4. Go to worker[01:03] directories and run `vagrant up` to start worker node machines.
5. Once provision by ansible playbook is done, k8s cluster is built.
6. Verify the cluster in the controller machine as root
```
kubectl get nodes
```

## Notes
* This is just a lab, so `root` in controller has admin config file. This **should** not be accepted in production environment.
* The playbook installs k8s 1.29 so that I can learn k8s upgrade.
* There is a work in progress to learn NFS storage provisioner

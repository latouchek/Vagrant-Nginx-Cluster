# Vagrant-Nginx-Cluster
A vagrant file and a playbook that allow you to deploy a 3 nodes nginx cluster behind an Nginx Round Robin loadbalancer . (cluster nodes are registered automaticaly in the loadbalancer)

# Requirements

- VirtualBox 4+
- Vagrant 1.7+
- Ansible 1.9+

# Usage

- clone the repo
- cd into the folder and run vagrant up


# Testing the cluster

Nginx loadbalancer listens on port 80 forwarded to port 8080 on the host.

- testlb.sh can be used to test servers are properly loadbalanced (Usage: ./testlb.sh hostname number of requests)
- eg:

<pre>
  /testlb.sh localhost 10
   Node1 3
   Node2 3
   Node3 4

  </pre>

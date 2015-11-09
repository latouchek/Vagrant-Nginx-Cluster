# Vagrant-Nginx-Cluster
A vagrant file and a playbook that allow you to deploy a 3 nodes nginx cluster behind an Nginx Round Robin loadbalancer . (cluster nodes are registered automaticaly in the loadbalancer)

# Requirements

- VirtualBox 4++
- Vagrant 1.7+
- Ansible 1.9

# Usage

- clone the repo
- cd into the folder and run vagrant up


# Testing the cluster

loadbalancer listen on port 80 forwarded to port 8080 on the host.

- testlb.sh can be used to test servers are properly loadbalanced (Usage: ./testlb.sh hostname number of requests)
- eg:

<pre>
  /testlb.sh localhost 6789
   Node1 3333
   Node2 3333
   Node3 3333

  </pre>

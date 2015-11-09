# Vagrant-Nginx-Cluster
A vagrant file and a playbook that allow you to deploy a 3 nodes nginx cluster behing an Nginx Round Robin loadbalancer . (cluster nodes are registered automaticaly in the loadbalancer)

# Requirements

- VirtaulBox 4++
- Vagrant 1.7+
- Ansible 1.9

# Usage

- clone the repo
- cd into the folder and run vagrant up


# Testing the cluster

loadbalancer listen on port 80 forwarded on port 8080 to the host. 

- testlb.sh can be used to test servers are properly loadbalanced

<pre>
  /testlb.sh localhost 678
  </pre>

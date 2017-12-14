#!/bin/bash                                         
useradd -d /home/takipi takipi                      
echo takipi | passwd --stdin takipi                 
echo 'takipi ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/takipi                                             
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCsz4cx1IzfR9USDiEIWooxzzxf28IaC8BQcUybYveIrcgXUG3gIYajcTlO2EEFQvvYG5vOGfbZUg8LjoIBh5IJ4qTOzHWjaKKxTZj2vIUMX7aWubAD0D2be/Hk5yboYJ1+WSQ+ZJhAQErAcysTIDvxiuwrWHOHWtRNMAYXn6YVDng+h62AEOw4Ix4bkTthGZoH2gGnc1Lyc7XGcg1fBCQdLQNDPqmkQJEdwwLJ7+X38JFCn34McTS5XZFFZdX8F4BwyFe9oBOoQAgQt5lzSNZzsWX+Eo0A2OVRSmLAP60dW3O5/EfG3Nboa3+L8X+FUWjxtk43C+FT29uNTYTC5631 terraform-ansible-example-key' >> /home/takipi/.ssh/authorized_keys


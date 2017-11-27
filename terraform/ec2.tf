locals {
  # The default username for our AMI
  vm_user = "${lookup(var.user_names, var.ami)}"
}

resource "aws_instance" "inst" {
  instance_type = "m3.xlarge"
  tags 		= "${merge(map("Name", "${var.name}"), "${var.tags}")}"
  ami 		= "${lookup(var.amis, var.ami)}"
  subnet_id 	= "subnet-02cb3074"
  key_name 	= "${var.key_name}"
  user_data 	= "${file("cloud-init.sh")}"
  associate_public_ip_address = "true"

  root_block_device {
    volume_size = "${var.size}"
  }

  vpc_security_group_ids = ["sg-102d636c"]

  # force Terraform to wait until a connection can be made, so that Ansible doesn't fail when trying to provision
  provisioner "remote-exec" {
    # The connection will use the local SSH agent for authentication
    inline = ["echo Successfully connected"]

    # The connection block tells our provisioner how to communicate with the resource (instance)
    connection {
      user = "${local.vm_user}"
    }
  }
}

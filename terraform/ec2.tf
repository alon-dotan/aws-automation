locals {
  # The default username for our AMI
  vm_user = "${lookup(var.user_names, var.ami)}"
  ssh_key_path = "${var.ssh_key_path}"
}

resource "aws_instance" "inst" {
  instance_type 	= "${lookup(var.instance_type, var.env)}"
  tags 			= "${merge(map("Name", "${var.name}"), "${var.tags}")}"
  ami 			= "${lookup(var.amis, var.ami)}"
  subnet_id 		= "${lookup(var.subnet_id, var.env)}"
  key_name 		= "${lookup(var.key_name, var.env)}"
  user_data 		= "${data.template_file.init.rendered}"
  availability_zone 	= "us-east-1b"
  associate_public_ip_address = "true"

  root_block_device {
    volume_size = "${var.size}"
  }

  vpc_security_group_ids = ["${lookup(var.security_group, var.env)}"]

  # force Terraform to wait until a connection can be made, so that Ansible doesn't fail when trying to provision
  provisioner "remote-exec" {
    # The connection will use the local SSH agent for authentication
    inline = ["echo Successfully connected"]

    # The connection block tells our provisioner how to communicate with the resource (instance)
    connection {
      user = "${local.vm_user}"
      private_key = "${file("${var.ssh_key_path}")}"
    }
  }
}

data "template_file" "init" {
  template = "${file("${path.module}/init.tpl")}"
  vars {
    hostname = "${var.name}"
  }
}


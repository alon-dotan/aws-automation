variable "public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}

variable "aws_access_key" {
  default = ""
}

variable "aws_secret_key" {
  default = ""
}

variable "size" {
  default = "80"
}

variable "name" {
  default = "Terraform-default-name"
}

variable "ami" {
  default = "ubuntu_16_04"
}

variable "ssh_key_path" {
  default = "~/.ssh/id_rsa"
}

variable "key_name" {
  type = "map"
  default = {
    dev = "devkey"
    stage = ""
    prod = "chenkey"
  }
}

variable "tags" {
  type = "map"
  default = {
    Repo = "https://github.com/startup-systems/terraform-ansible-example"
    Terraform = true
  }
}

variable "env" {
  default = "dev"
}

variable "subnet_id" {
  type = "map"
  default = {
    dev = "subnet-02cb3074"
    stage = ""
    prod = "subnet-85f84eaa"
  }
}

variable "security_group" {
  type = "map"
  default = {
    dev = "sg-102d636c"
    stage = ""
    prod = "sg-64c1e311"
  }
}

variable "instance_type" {
  type = "map"
  default = {
    dev = "m3.xlarge"
    stage = ""
    prod = "c3.xlarge"
  }
}

variable "amis" {
  type = "map"
  default = {
    ubuntu_16_04 = "ami-aa2ea6d0"
    ubuntu_14_04 = "ami-c29e1cb8"
    centos_7 = "ami-46c1b650"
    centos_6 = "ami-01e2a017"
  }
}

variable "user_names" {
  type = "map"
  default = {
    ubuntu_16_04 = "ubuntu"
    ubuntu_14_04 = "ubuntu"
    centos_7 = "centos"
    centos_6 = "centos"
  }
}

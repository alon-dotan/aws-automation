variable "public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}

variable "key_name" {
  default = "terraform-ansible-example-key"
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

variable "tags" {
  type = "map"
  default = {
    Repo = "https://github.com/startup-systems/terraform-ansible-example"
    Terraform = true
  }
}

variable "amis" {
  type = "map"
  default = {
    ubuntu_16_04 = "ami-aa2ea6d0"
    centos_7 = "ami-46c1b650"
  }
}

variable "user_names" {
  type = "map"
  default = {
    ubuntu_16_04 = "ubuntu"
    centos_7 = "centos"
  }
}

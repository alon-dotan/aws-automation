output "address" {
  value = "${aws_instance.inst.public_ip}"
}

output "ssh" {
  value = "ssh ${local.vm_user}@${aws_instance.inst.public_ip} -i ${local.ssh_key_path}"
}

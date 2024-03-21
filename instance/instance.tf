resource "aws_instance" "serverInstance" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name="${var.key_name}"
  vpc_security_group_ids  = ["${var.sgid}"]

  provisioner "remote-exec" {
      inline = "${var.inlineparams}"
      connection {
            user = "${var.user}"
            private_key = "${file("${var.key}")}"
            host        = self.public_ip
        }
  }
}




output "ip" {
  value = "${aws_instance.serverInstance.public_ip}"
}
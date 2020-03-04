resource "aws_instance" "instance" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_id}"
  count = "${var.instace_count}"
  security_groups = ["${var.security_group}"]
  tags = {
    Name = "Server ${count.index}"
  }
}

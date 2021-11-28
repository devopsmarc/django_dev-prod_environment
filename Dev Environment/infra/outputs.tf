output "Genesis-IP" {
  value = "${aws_instance.Genesis-[0].public_ip}"
}

output "Genesis-State" {
  value = "${aws_instance.Genesis-[0].instance_state}"
}

output "Genesis-Zone" {
  value = "${aws_instance.Genesis-[0].availability_zone}"
}

output "Genesis-Security_Group" {
  value = aws_security_group.all_SSH.id
}

output "Genesis-ID" {
  value = "${aws_instance.Genesis-[0].id}"
}
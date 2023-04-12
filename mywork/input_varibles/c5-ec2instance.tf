resource "aws_instance" "cron" {
    ami = data.aws_ami.amzlinux2.id
    instance_type = var.instancetype
    #instance_type = var.instance-type-list[1]
    #instance_type = var.instance_type_map["qa"]

    user_data = file("${path.module}/ruby-install.sh")
    key_name = var.ec2_keypair
    vpc_security_group_ids = [aws_security_group.vpc_ssh.id, aws_security_group.vpc_web.id]
    count = 2
    tags = {
      "name" = "cron.${count.index}"
    }
  
}
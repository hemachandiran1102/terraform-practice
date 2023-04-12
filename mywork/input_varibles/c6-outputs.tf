#output "instance_publicip" {
##  description = "EC2 Instance Public IP"
#  value = aws_instance.cron.public_ip
#}

# EC2 Instance Public DNS
#output "instance_publicdns" {
#  description = "EC2 Instance Public DNS"
#  value = aws_instance.cron.public_dns
#}

output "for_output_list_instance" {
  description = "for loop with list "
  value = [ for instance in aws_instance.cron: instance.public_ip ] 

}

output "for_out_map" {
  description = "For Loop with Map"
  value = {for instance in aws_instance.cron: instance.id => instance.public_dns}

  
}
output "for-out-map" {
  description = "for loop with map advanced " 
  value = { for c , i in aws_instance.cron: c => i.public_dns } 
}

output "legacy-splat-operator" {
  description = "legacysplat"
  value = aws_instance.cron.*.public_dns
  
}
output "latest_splat_operator" {
  description = "generalised splat"
  value = aws_instance.cron[*].public_dns  
}
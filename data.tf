data "aws_availability_zones" "available" {
  state = "available"
}

output "azs-info" {
  value = data.aws_availability_zones.available

}
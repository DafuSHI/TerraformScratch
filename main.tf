resource "flexibleengine_vpc_v1" "vpc_v1" {
  name = var.vpc_name
  cidr = "10.0.0.0/8"
}
resource "flexibleengine_vpc_subnet_v1" "subnet_front" {
  name        = var.subnet_front_name
  cidr        = "10.1.7.0/24"
  gateway_ip  = "10.1.7.1"
  vpc_id      = flexibleengine_vpc_v1.vpc_v1.id
  dns_list    = ["100.126.0.41", "100.125.0.41"]
}
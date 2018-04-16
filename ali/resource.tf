resource "alicloud_instance" "web" {
  # cn-beijing
  provider          = "alicloud"
  availability_zone = "cn-beijing-b"
  image_id          = "ubuntu"

  #  instance_network_type = "Classic"
  internet_charge_type  = "PayByBandwidth"

  instance_type        = "ecs.n1.medium"
  io_optimized         = "optimized"
  system_disk_category = "cloud_efficiency"
  security_groups      = ["${alicloud_security_group.default.id}"]
  instance_name        = "web"
}

# Create security group
resource "alicloud_security_group" "default" {
  name        = "default"
  provider    = "alicloud"
  description = "default"
}



resource "mgc_virtual_machine_instances" "basic_instance" {
  name = var.name

  dynamic "machine_type" {
    for_each = var.machine_type

    content {
      name  = machine_type.value.name
    }
  }

  dynamic "image" {
    for_each = var.image

    content {
      name  = image.value.name
    }
  }

  dynamic "network" {
    for_each = var.network

    content {
      associate_public_ip  = image.value.associate_public_ip
      delete_public_ip = image.value.delete_public_ip
    }
  }

  ssh_key_name = var.ssh_key_name
}
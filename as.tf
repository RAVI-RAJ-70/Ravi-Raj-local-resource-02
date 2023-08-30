variable "arg1_value" {
  description = "Name"
  type        = string
}

variable "arg2_value" {
  description = "Address"
  type        = string
}

variable "arg3_value" {
  description = "Purpose"
  type        = string
}

locals {
  local_resource = {
    arg1 = var.arg1_value
    arg2 = var.arg2_value
    arg3 = var.arg3_value
  }
}

resource "null_resource" "local_resource" {
  triggers = local.local_resource
  provisioner "local-exec" {
    command = "echo 'Local Argument 1: ${local.local_resource.arg1}' > raaz.txt && echo 'Local Argument 2: ${local.local_resource.arg2}' >> raaz.txt && echo 'Local Argument 3: ${local.local_resource.arg3}' >> raj.txt"
  }
}

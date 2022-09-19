
data "azurerm_subscription" "current" {
}

locals {
  location_based_capabilities_url="https://management.azure.com/subscriptions/${data.azurerm_subscription.current.subscription_id}/providers/Microsoft.DBforMySQL/locations/${var.location}/capabilities?api-version=2021-05-01"
}


resource "null_resource" "test" {
  provisioner "local-exec" {
  command = <<EOT
  curl -X GET -H "Authorization: Bearer ${var.aad_token}" -H "Content-Type: application/json" ${local.location_based_capabilities_url} -o output.txt
  EOT
  }
}


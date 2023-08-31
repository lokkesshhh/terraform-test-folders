locals {
  rg_name   = "${var.business_unit}-${var.resource_group_name}"
  vnet_name = "${var.virtual_network_name}-${local.rg_name}"

  department = "TDS TS"
  owner      = "Lokesh Dutta"
  common_tags = {
    billing_sec = local.department
    owner       = local.owner
  }
}
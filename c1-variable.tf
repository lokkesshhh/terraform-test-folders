# resource names  


variable "resource_group_name" {

  default     = "merarg" # 
  description = "adding new name"
  type        = string

}

variable "virtual_network_name" {
  default     = "vn1"
  description = "description of the virtual network wohoooo"
  type        = string

}

variable "subnet" {
  default     = "sn1"
  description = "subnet for the virtual network"
  type        = string

}
# business units
variable "business_unit" {
  default     = "CloudOps"
  description = "Cloud operations team"
  type        = string

}
variable "location" {
  default = "eastus"
  #   validation {
  #     # condition     = var.location == "eastus" || var.loca÷tion == "eastus2"
  #     # condition= contains(["eastus","westus","centralus","eastus2"],var.location)
  #     # condition     = can(regex("India", var.location))
  # error_message = "only eastus or eastus2 are allowed"
  #   }

  description = "lappu location"
  type        = string

}

variable "env" {

  description = "ni karungi"
  type        = string
  # default     = ["dev", "pat, "prod"]
  default = "dev"
}

# variable "env2" {
#   description = "check the list"
#   type        = list(string)
#   default     = ["dev", "pat"]

# }
variable "virtual_network_address_space_for_dev" {
  default     = ["10.0.0.0/16"]
  description = "lappu si dev address space"
  type        = list(string)

}

variable "virtual_network_address_space_except_pat" {
  default     = ["10.1.0.0/16", "10.2.0.0/16"]
  description = "lappu si space for pat"
  type        = list(string)
}

variable "subnet_space" {
  default     = ["10.0.1.0/24", "10.1.1.0/24", "10.2.1.0/24"]
  description = "subnet population"
  type        = list(string)

}

variable "common_tags" {
  description = "map of the tags for this project"
  type        = map(string)
  default = {
    "project" = "learn_terraform"
    "env"     = "dev"
  }

}

variable "storage_account_name" {
  description = "name of the storage account"
  type        = string

}

variable "static_website_index_document" {
  description = "static website index document"
  type        = string
}
variable "static_website_error_404_document" {
  description = "static website error 404 document"
  type        = string
}
variable "static_website_source_folder" {
  description = "static website source folder"
  type        = string
}

# variable "storage_account_name" {
#   description = "The name of the storage account"
#   type = string   
# }
variable "storage_account_tier" {
  description = "Storage Account Tier"
  type        = string
}
variable "storage_account_replication_type" {
  description = "Storage Account Replication Type"
  type        = string
}
variable "storage_account_kind" {
  description = "Storage Account Kind"
  type        = string
}
# variable "static_website_index_document" {
#   description = "static website index document"
#   type = string   
# }
# variable "static_website_error_404_document" {
#   description = "static website error 404 document"
#   type = string   
# }
# variable "public_ip_sku" {

#   description = "map of the public IP skus"
#   type        = map(string)
#   default = {
#     "eastus" = "Basic"
#     "westus" = "Standard"
#   }
# }

# variable "sql_server_name" {

#   description = "name of the database server"
#   type        = string
#   default     = "gsbm-server"
# }

# variable "db_name" {
#   description = "Azure MySQL Database DB Name"
#   type        = string
# }
# variable "administrator_login" {

#   description = "Database user name"
#   sensitive   = false
#   type        = string
# }

# variable "administrator_pwd" {
#   description = "password for the user"
#   sensitive   = true
#   type        = string

# }

# variable "sku_name" {
#   description = "sku type of the azure sql db"
#   default     = "GP_Gen5_2"
#   type        = string
# }

# variable "db_storage_mb" {
#   description = "Azure MySQL Database Storage in MB"
#   type        = number
# }

# # 10. Azure MYSQL DB auto_grow_enabled (Variable Type: Boolean)
# variable "db_auto_grow_enabled" {
#   description = "Azure MySQL Database - Enable or Disable Auto Grow Feature"
#   type        = bool
# }
# # variable "td_policy" {
# #   description = "threat detection policy for the database"
# #   type = object({
# #     state                = bool
# #     retention_days       = number
# #     email_account_admins = bool
# #     email_addresses      = list(string)

# #   })
# # }

# variable "td_policy" {
#   description = "threat detection policy using tuple"
#   type        = tuple([bool, number, bool, list(string)])

# }
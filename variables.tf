variable "rg_name" {
  type        = string
  description = "Name of the resource group"
  default     = "rg_vnet_peering"
}

variable "rg_location" {
  type        = string
  description = "Location of the resource group"
  default     = "canandacentral"
}
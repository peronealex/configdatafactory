variable "resource_group_name" {
  default     = "datalake111"
  description = "name of the resource group"
}

variable "location" {
  default     = "westeurope"
  description = "location where to put the resource"
}

variable "name" {
  default     = "workspace1"
  description = "(optional) describe your variable"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

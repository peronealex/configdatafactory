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

variable "connection_string" {
  default = "Server=tcp:alessiodatalake.database.windows.net,1433;Initial Catalog=alessiodatalake;Persist Security Info=False;User ID=alessiodatalake;Password={your_password};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
  type = string
  description = "(optional) describe your variable"
}
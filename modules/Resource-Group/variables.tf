variable "resource_group" {
  description = "resource group configurations"
  type = object({
    name     = string
    location = string
    tags     = optional(map(string))
  })
}
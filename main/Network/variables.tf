variable "network_name" {
    type = string
    description = "Define network name"
}

variable "network_location" {
    type = string
    description = "Define network region"
}

variable "resource_group_name" {
    type = string
    description = ""
}

variable "address_space" {
    type = list(string)
    description = ""
}


variable "subnets" {
    type = list(object({
    name            = string
    address_prefixes = list(string)
    }))
    description = ""
    default = [ ]
}

variable "tags" {
    type = map(string)
    description = ""
    default = { }
}
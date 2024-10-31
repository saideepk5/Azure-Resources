network_name = "network_one"
network_location = "eastus"
resource_group_name = "test_group"
address_space = ["10.0.0.0/16"]
subnets = [ {
    name = "subnet_one"
    address_prefixes = [ "10.0.1.0/24" ]
  },
  {
    name = "subnet_two"
    address_prefixes = [ "10.0.2.0/24" ]
  } ]
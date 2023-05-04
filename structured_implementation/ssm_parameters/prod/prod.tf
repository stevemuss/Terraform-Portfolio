locals {
  my_parameters = {
    environment = "prod"
    version = "1.0LTS"
    mykey = "myprodvalue"
  }
}

module "parameters" {
  for_each = local.my_parameters
  source = "../ssm-parameters"
  name = each.key
  value = each.value
}

output "all-my-parameters" {
    value = { for k, parameter in module.parameters: k => parameter.arn}
}
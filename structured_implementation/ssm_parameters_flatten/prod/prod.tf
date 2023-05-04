locals {
  my_parameters = [
    {
      "prefix" = "/prod"
      "parameters" = [
        {
          "name"  = "myparameter"
          "value" = "myvalue"
        },
        {
          "name"  = "environment"
          "value" = "prod"
        }
      ]
    },
    {
      "prefix" = "/myapp_prod"
      "parameters" = [
        {
          "name"  = "environment"
          "value" = "prod"
        }
      ]
    }
  ]
}

module "parameters" {
  source     = "../ssm-parameters"
  parameters = local.my_parameters
}

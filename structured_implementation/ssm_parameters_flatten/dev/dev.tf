locals {
  my_parameters = [
    {
      "prefix" = "/dev"
      "parameters" = [
        {
          "name"  = "myparameter"
          "value" = "myvalue"
        },
        {
          "name"  = "environment"
          "value" = "dev"
        }
      ]
    },
    {
      "prefix" = "/myapp_dev"
      "parameters" = [
        {
          "name"  = "environment"
          "value" = "dev"
        }
      ]
    }
  ]
}

module "parameters" {
  source     = "../ssm-parameters"
  parameters = local.my_parameters
}

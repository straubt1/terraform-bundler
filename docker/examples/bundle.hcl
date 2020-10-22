terraform {
  version = "0.13.2"
}

providers {
  aws = {
    versions = ["~> 3.11.0"]
  }
  azurerm = {
    versions = ["1.43.0"]
  }
  random = {
    versions = ["~> 2.2"]
  }
  acme = {
    versions = ["1.5.0-patched"]
    source = "registry.terraform.io/getstackhead/acme"
  }
}
terraform {
  required_version = ">= 0.13"

  required_providers {
    grafanacloud = {
      source  = "github.com/form3tech-oss/grafanacloud"
      version = "0.1.0"
    }
  }
}

provider "grafanacloud" {
  alias = "grafanacloud_test"

  api_key        = var.grafanacloud_auth.api_key
  organisation   = var.grafanacloud_auth.organisation
  url            = var.grafanacloud_auth.url
}
terraform {
  required_version = ">= 0.13"

  required_providers {
    grafanacloud = {
      source  = "github.com/form3tech-oss/grafanacloud"
      version = "0.1.0"
    }
  }
}
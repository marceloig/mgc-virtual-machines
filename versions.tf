terraform {
  required_version = ">= 1.0"

  required_providers {
    mgc = {
      source  = "magalucloud/mgc"
      version = ">= 0.30.1"
    }
  }
}
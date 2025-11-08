terraform {
  cloud {
    organization = "gcp-ariyans"

    workspaces {
      name = "terraform-gcp-backend-resources" # 👈 your Terraform Cloud workspace
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

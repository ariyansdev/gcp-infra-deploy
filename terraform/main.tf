provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "my-deploy-bucket-ariyans-learning-hub"
    prefix = "dev/terraform.tfstate"  # this is like a folder for your environment's state
  }
}
variable "project_id" {}
variable "region" {
  default = "us-central1"
}

resource "google_storage_bucket" "demo" {
  name     = "demo-bucket-${var.project_id}"
  location = upper(var.region)
  uniform_bucket_level_access = true
}

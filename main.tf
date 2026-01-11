terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "7.15.0"
    }
  }
}

provider "google" {
  project     = "hale-monument-477117-k8"
}

resource "google_storage_bucket" "no-public-access" {
  name          = "no-public-bucket-at10012026"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}
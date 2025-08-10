terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.8.0"
    }
  }

  # backend "gcs" {
  #   bucket = "terraform-state-takeuchi-olta-sandbox"
  #   prefix = "terraform/state"
  # }

  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      ## version = "~> 0.0"
    }
    artifactory = {
      source = "jfrog/artifactory"
      ## version = "~> 0.0"
    }
  }
}

provider "google" {
  location = var.location
}

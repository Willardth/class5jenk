terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.29.0"
    }
  }
} 
provider "google" {
  credentials = "secret.json"
  project     = "class-5-freedom"
  
  region      = "us-central1"
  
}

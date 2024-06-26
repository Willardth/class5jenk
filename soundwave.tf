terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.29.0"
    }
  }
} 
provider "google" {
  credentials = "class-5-freedom-2a4e9c52a833.json"
  project     = "class-5-freedom"
  
  region      = "us-central1"
  
}

 
 resource "google_compute_instance" "vm" {
  name         = "test-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
   
 }
 }

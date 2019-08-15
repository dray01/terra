provider "google" {
	project = "bd-lab-45457"
	region = "australia-southeast1"
	zone = "australia-southeast1-b"
}

// Terraform plugin for creating random ids
resource "random_id" "instance_id" {
 byte_length = 4
}

// A single GCE Instance
resource "google_compute_instance" "vm_instance" {
  name         = "terraform-${random_id.instance_id.hex}"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = "default"
    access_config {
    }
  }
}



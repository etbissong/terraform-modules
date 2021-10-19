resource "google_compute_instance" "vm" {
  count        = var.instance_count  
  name         = "${var.project_id}-server-${count.index}"
  machine_type = "f1-micro"
  zone = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}

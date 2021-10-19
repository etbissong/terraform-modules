resource "google_compute_instance" "vm" {
  name         = "${var.project_id}-server"
  machine_type = "e2-medium"
  zone = var.zone
  allow_stopping_for_update = true

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
  labels = {
    phase = "testing"
  }
}

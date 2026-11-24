resource "google_compute_instance" "vm" {
  name         = "td-vm"
  machine_type = "e2-micro"
  zone         = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id

    access_config {
    }
  }
}
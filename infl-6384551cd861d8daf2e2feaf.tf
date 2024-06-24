resource "google_compute_firewall" "default-allow-rdp-88a" {
  allow {
    ports    = ["3389"]
    protocol = "tcp"
  }
  description   = "Allow RDP from anywhere"
  direction     = "INGRESS"
  disabled      = false
  name          = "default-allow-rdp"
  network       = "https://www.googleapis.com/compute/v1/projects/firefly-369408/global/networks/default"
  priority      = 65534
  project       = "firefly-369408"
  source_ranges = ["0.0.0.0/0"]
}




resource "google_compute_firewall" "default-allow-internal-f25" {
  description   = "Allow internal traffic on the default network"
  direction     = "INGRESS"
  disabled      = false
  name          = "default-allow-internal"
  network       = "https://www.googleapis.com/compute/v1/projects/firefly-369408/global/networks/default"
  priority      = 65534
  project       = "firefly-369408"
  source_ranges = ["10.128.0.0/9"]
}


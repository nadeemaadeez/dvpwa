resource "google_compute_firewall" "default-allow-ssh-b59" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  description   = "Allow SSH from anywhere"
  direction     = "INGRESS"
  disabled      = false
  name          = "default-allow-ssh"
  network       = "${google_compute_network.default-d07.self_link}"
  priority      = 65534
  project       = "firefly-369408"
  source_ranges = ["0.0.0.0/0"]
}




resource "google_compute_network" "default-d07" {
  description  = "Default network for the project"
  name         = "default"
  project      = "firefly-369408"
  routing_mode = "REGIONAL"
}


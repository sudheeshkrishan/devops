resource "google_compute_network" "vpc1" {
  name                    = "gkecluster"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "us-central1-subnet"
  ip_cidr_range = "10.20.83.0/28"
  region        = var.region
  network       = google_compute_network.vpc.id
  private_ip_google_access = true
}

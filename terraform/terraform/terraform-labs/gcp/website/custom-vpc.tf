resource "google_compute_subnetwork" "subnets" {
  for_each      = var.regions
  
  region        = each.value
}

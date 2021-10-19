output "server_names" {
  value       = google_compute_instance.vm.name
  description = "The name of the server instance."
}

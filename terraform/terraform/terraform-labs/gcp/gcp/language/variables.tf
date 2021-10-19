variable "project_id" {
  description = "The GCP Project ID."
  type        = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "os_version" {
  type        = number
  default = 9
}

variable "image_id" {
  type = map (string)
  default = {
    9  = "debian-cloud/debian-9",
    10 = "debian-cloud/debian-10"
  }
}

variable "machine_type" {
  type = string
  default = "f1-micro"
}

variable "preemptible" {
  type        = bool
  default = false
}

variable "instance_count" {
  type = number
  default = 1
}

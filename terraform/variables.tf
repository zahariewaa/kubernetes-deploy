variable "project_id" {
  description = "The ID of the project in which resources will be created."
  type        = string
  default     = "gcp-project-pract"
}

variable "region" {
  type        = string
  description = "The region in which resources will be created."
  default     = "europe-west3"
}

variable "cluster_name" {
  type        = string
  description = "The name of the GKE cluster."
  default     = "gke-cluster"
}

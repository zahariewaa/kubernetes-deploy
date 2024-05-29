variable "project_id" {
  type        = string
  description = "The ID of the GCP project."
}

variable "region" {
  type        = string
  description = "The region to deploy resources in."
  default     = "us-central1"
}

variable "cluster_name" {
  type        = string
  description = "The name of the GKE cluster."
  default     = "my-gke-cluster"
}

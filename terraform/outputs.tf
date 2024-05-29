output "kubeconfig" {
  value = <<EOL
  apiVersion: v1
  clusters:
  - cluster:
      certificate-authority-data: ${google_container_cluster.primary.master_auth[0].cluster_ca_certificate}
      server: https://${google_container_cluster.primary.endpoint}
    name: ${var.cluster_name}
  contexts:
  - context:
      cluster: ${var.cluster_name}
      user: ${var.cluster_name}-user
    name: ${var.cluster_name}
  current-context: ${var.cluster_name}
  kind: Config
  preferences: {}
  users:
  - name: ${var.cluster_name}-user
    user:
      auth-provider:
        config:
          access-token: ${google_client_config.default.access_token}
          cmd-args: config config-helper --format=json
          cmd-path: gcloud
          expiry-key: '{.credential.token_expiry}'
          token-key: '{.credential.access_token}'
        name: gcp
  EOL
}

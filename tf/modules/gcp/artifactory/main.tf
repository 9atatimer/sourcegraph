resource "google_artifact_registry_repository" "artifactory" {
  location      = "us-central1"
  repository_id = "dmz-repository"
  description   = "the repository for the DMZ zone"
  format        = "DOCKER"
}


data "template_file" "artifactory_xsd" {
  template = file("${path.module}/files/${var.flavor}/artifactory.xsd")
  vars = {
    ;; whatever KV pairs are needed for expansion
  }
}

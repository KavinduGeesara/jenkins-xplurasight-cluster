module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.11.2"
  gcp_project = "skilful-scarab-358814"
  cluster_name = "cha"
}

terraform {
 backend "gcs" {
    bucket = "ps-jx-terraform-state-files-cha"
    prefix = "terraform/state"
 }
}

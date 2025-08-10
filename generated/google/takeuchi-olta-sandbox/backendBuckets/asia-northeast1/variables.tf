data "terraform_remote_state" "gcs" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/takeuchi-olta-sandbox/gcs/asia-northeast1/terraform.tfstate"
  }
}

data "terraform_remote_state" "backendServices" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/takeuchi-olta-sandbox/backendServices/asia-northeast1/terraform.tfstate"
  }
}

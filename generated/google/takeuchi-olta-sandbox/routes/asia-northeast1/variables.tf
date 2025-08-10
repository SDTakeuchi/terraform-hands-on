data "terraform_remote_state" "networks" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/takeuchi-olta-sandbox/networks/asia-northeast1/terraform.tfstate"
  }
}

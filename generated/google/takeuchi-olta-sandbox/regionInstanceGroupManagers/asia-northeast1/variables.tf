data "terraform_remote_state" "instanceTemplates" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/takeuchi-olta-sandbox/instanceTemplates/asia-northeast1/terraform.tfstate"
  }
}

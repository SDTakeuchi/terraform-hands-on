data "terraform_remote_state" "urlMaps" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/takeuchi-olta-sandbox/urlMaps/asia-northeast1/terraform.tfstate"
  }
}

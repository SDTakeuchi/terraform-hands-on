data "terraform_remote_state" "targetHttpProxies" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/takeuchi-olta-sandbox/targetHttpProxies/asia-northeast1/terraform.tfstate"
  }
}

data "terraform_remote_state" "targetHttpsProxies" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/takeuchi-olta-sandbox/targetHttpsProxies/asia-northeast1/terraform.tfstate"
  }
}

data "terraform_remote_state" "targetSslProxies" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/takeuchi-olta-sandbox/targetSslProxies/asia-northeast1/terraform.tfstate"
  }
}

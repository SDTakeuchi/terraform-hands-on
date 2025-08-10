data "terraform_remote_state" "healthChecks" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/takeuchi-olta-sandbox/healthChecks/asia-northeast1/terraform.tfstate"
  }
}

data "terraform_remote_state" "instanceGroupManagers" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/takeuchi-olta-sandbox/instanceGroupManagers/asia-northeast1/terraform.tfstate"
  }
}

data "terraform_remote_state" "regionInstanceGroupManagers" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/takeuchi-olta-sandbox/regionInstanceGroupManagers/asia-northeast1/terraform.tfstate"
  }
}

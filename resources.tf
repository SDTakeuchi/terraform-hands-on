
resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}


// bucket for storing terraform.tfstate
resource "google_storage_bucket" "terraform_state" {
  name     = "terraform-state-takeuchi-olta-sandbox"
  location = var.region

  versioning {
    enabled = true
  }

  uniform_bucket_level_access = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 365
    }
  }
}

# 元々Google Cloudのコンソールから手動で作ったリソース。
# まずは以下を定義した。
#
# resource "google_storage_bucket" "fugafuga" {
#   name     = "fugafuga"
#   location = "us-east1"
# }
#
# その後`terraform import google_storage_bucket.fugafuga fugafuga`を実行した。
# 続いて、`terraform plan`の実行結果を見て差分を埋めるように以下の定義を地道に修正。
# terraform import → terraform plan の差分をもとに resources.tf を良い感じに修正してくれるようなコマンドは今のところ存在しないので、
# `terraform plan`を実行しつつ地道に修正するしかない。
resource "google_storage_bucket" "fugafuga" {
  name     = "fugafuga"
  location = "us-east1"

  autoclass {
    enabled                = true
    terminal_storage_class = "NEARLINE"
  }

  public_access_prevention = "enforced"

  soft_delete_policy {
    retention_duration_seconds = 604800
  }
}

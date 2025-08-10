provider "google" {
  project = "takeuchi-olta-sandbox"
}

terraform {
	required_providers {
		google = {
	    version = "~> 6.8.0"
		}
  }
}

terraform {
  required_providers {

    kind = {
      source  = "tehcyx/kind"
      version = "0.8.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.16.1"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.36.0"
    }
  }

  required_version = ">= 1.8.0"
}

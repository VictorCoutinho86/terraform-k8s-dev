provider "kind" {}

provider "kubernetes" {
  host = kind_cluster.local_cluster.endpoint

  client_certificate     = kind_cluster.local_cluster.client_certificate
  client_key             = kind_cluster.local_cluster.client_key
  cluster_ca_certificate = kind_cluster.local_cluster.cluster_ca_certificate
}

provider "helm" {
  kubernetes {
    host = kind_cluster.local_cluster.endpoint

    client_certificate     = kind_cluster.local_cluster.client_certificate
    client_key             = kind_cluster.local_cluster.client_key
    cluster_ca_certificate = kind_cluster.local_cluster.cluster_ca_certificate
  }
}

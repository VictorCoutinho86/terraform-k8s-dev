resource "kind_cluster" "local_cluster" {
  name           = "local-cluster"
  wait_for_ready = true
  node_image     = "kindest/node:v1.31.6"

  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role = "control-plane"
      extra_mounts {
        host_path      = pathexpand("${path.cwd}/data/")
        container_path = "/mnt/data"
      }
    }
    node {
      role = "worker"
      extra_mounts {
        host_path      = pathexpand("${path.cwd}/data/")
        container_path = "/mnt/data"
      }
    }

    node {
      role = "worker"
      extra_mounts {
        host_path      = pathexpand("${path.cwd}/data/")
        container_path = "/mnt/data"
      }
    }
  }
}

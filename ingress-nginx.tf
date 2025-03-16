resource "helm_release" "ingress_nginx" {
  name       = "ingress-nginx"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  namespace  = "kube-system"


  set {
    name  = "controller.service.type"
    value = "ClusterIP"
  }

  set {
    name  = "controller.ingressClassResource.default"
    value = "true"
  }

  depends_on = [kind_cluster.local_cluster]
}

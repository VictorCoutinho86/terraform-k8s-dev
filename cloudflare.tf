resource "helm_release" "cloudflare" {
  name       = "cloudflare"
  repository = "https://cloudflare.github.io/helm-charts"
  chart      = "cloudflare-tunnel"
  namespace  = "kube-system"
  wait       = true

  set {
    name  = "replicaCount"
    value = 1
  }

  set {
    name  = "cloudflare.tunnelName"
    value = var.tunnel_name
  }

  set {
    name  = "cloudflare.tunnelId"
    value = var.tunnel_id
  }

  set {
    name  = "cloudflare.secretName"
    value = kubernetes_secret.tunnel-credentials.metadata[0].name
  }

  set {
    name  = "cloudflare.ingress[0].hostname"
    value = "*.${var.domain}"
  }

  set {
    name  = "cloudflare.ingress[0].service"
    value = "https://ingress-nginx-controller.kube-system.svc.cluster.local:443"
  }

  set {
    name  = "cloudflare.ingress[0].originRequest.noTLSVerify"
    value = "true"
  }

  depends_on = [helm_release.ingress_nginx]
}

resource "kubernetes_secret" "cloudflare-api-key" {
  metadata {
    name      = "cloudflare-api-key"
    namespace = "kube-system"
  }

  data = {
    "apiKey" = var.cloudflare_api_key
    "email"  = var.email
  }

  depends_on = [kind_cluster.local_cluster]
}

resource "kubernetes_secret" "tunnel-credentials" {
  metadata {
    name      = "tunnel-credentials"
    namespace = "kube-system"
  }

  data = {
    "credentials.json" = "${file("${var.credentials_path}")}"
  }

  depends_on = [kind_cluster.local_cluster]
}

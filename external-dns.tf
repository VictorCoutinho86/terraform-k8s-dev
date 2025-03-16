resource "helm_release" "external-dns" {
  name       = "external-dns"
  repository = "https://kubernetes-sigs.github.io/external-dns/"
  chart      = "external-dns"
  namespace  = "kube-system"
  wait       = true

  set_list {
    name  = "sources"
    value = ["ingress"]
  }

  set {
    name  = "provider.name"
    value = "cloudflare"
  }

  set {
    name  = "policy"
    value = "sync"
  }

  set {
    name  = "env[0].name"
    value = "CF_API_TOKEN"
  }

  set {
    name  = "env[0].valueFrom.secretKeyRef.name"
    value = kubernetes_secret.cloudflare-api-key.metadata[0].name
  }

  set {
    name  = "env[0].valueFrom.secretKeyRef.key"
    value = "apiKey"
  }

  set {
    name  = "env[1].name"
    value = "CF_API_EMAIL"
  }

  set {
    name  = "env[1].valueFrom.secretKeyRef.name"
    value = kubernetes_secret.cloudflare-api-key.metadata[0].name
  }

  set {
    name  = "env[1].valueFrom.secretKeyRef.key"
    value = "email"
  }

  depends_on = [helm_release.cloudflare]

}

# terraform-k8s-dev
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.16.1 |
| <a name="requirement_kind"></a> [kind](#requirement\_kind) | 0.8.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.36.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.16.1 |
| <a name="provider_kind"></a> [kind](#provider\_kind) | 0.8.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.36.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.argocd](https://registry.terraform.io/providers/hashicorp/helm/2.16.1/docs/resources/release) | resource |
| [helm_release.cloudflare](https://registry.terraform.io/providers/hashicorp/helm/2.16.1/docs/resources/release) | resource |
| [helm_release.external-dns](https://registry.terraform.io/providers/hashicorp/helm/2.16.1/docs/resources/release) | resource |
| [helm_release.ingress_nginx](https://registry.terraform.io/providers/hashicorp/helm/2.16.1/docs/resources/release) | resource |
| [kind_cluster.local_cluster](https://registry.terraform.io/providers/tehcyx/kind/0.8.0/docs/resources/cluster) | resource |
| [kubernetes_secret.cloudflare-api-key](https://registry.terraform.io/providers/hashicorp/kubernetes/2.36.0/docs/resources/secret) | resource |
| [kubernetes_secret.tunnel-credentials](https://registry.terraform.io/providers/hashicorp/kubernetes/2.36.0/docs/resources/secret) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_argo_password"></a> [argo\_password](#input\_argo\_password) | Password to be assigned to admin on ArgoCD | `string` | n/a | yes |
| <a name="input_cloudflare_api_key"></a> [cloudflare\_api\_key](#input\_cloudflare\_api\_key) | Token generated on Cloudflare | `string` | n/a | yes |
| <a name="input_credentials_path"></a> [credentials\_path](#input\_credentials\_path) | Path where the credentials.json file was saved | `string` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | Domain to be used on Cloudflare Tunnel | `string` | n/a | yes |
| <a name="input_email"></a> [email](#input\_email) | Email used for registration on Cloudflare | `string` | n/a | yes |
| <a name="input_tunnel_id"></a> [tunnel\_id](#input\_tunnel\_id) | ID generated after creating the tunnel | `string` | n/a | yes |
| <a name="input_tunnel_name"></a> [tunnel\_name](#input\_tunnel\_name) | Name used for creating the tunnel | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

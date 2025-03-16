variable "argo_password" {
  type        = string
  description = "Password to be assigned to admin on ArgoCD"
}

variable "cloudflare_api_key" {
  type        = string
  description = "Token generated on Cloudflare"
}

variable "email" {
  type        = string
  description = "Email used for registration on Cloudflare"
}

variable "tunnel_name" {
  type        = string
  description = "Name used for creating the tunnel"
}

variable "tunnel_id" {
  type        = string
  description = "ID generated after creating the tunnel"
}

variable "credentials_path" {
  type        = string
  description = "Path where the credentials.json file was saved"
}

variable "domain" {
  type        = string
  description = "Domain to be used on Cloudflare Tunnel"
}

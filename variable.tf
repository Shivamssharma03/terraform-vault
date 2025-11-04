variable "ami" {
  description = "ami of the instance"
  type        = string
}

variable "tags" {
  type = string

}


variable "vault_address" {
  description = "Vault server address"
  type        = string
  sensitive   = true

}

variable "vault_role_id" {
  type        = string
  description = "Vault AppRole Role ID"
  sensitive   = true
}

variable "vault_secret_id" {
  type        = string
  description = "Vault AppRole Secret ID"
  sensitive   = true
}
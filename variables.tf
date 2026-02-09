variable "user" {
  type        = string
  description = "ID del usuario para autenticación y nombres"
}

variable "contra" {
  type        = string
  description = "Token secreto de la API Sunstone"
  sensitive   = true # Oculta el valor en los logs por seguridad
}

variable "prod_network_name" {
  type        = string
  description = "Nombre de la red virtual en OpenNebula"
}

variable "template_base_id" {
  type        = number
  description = "ID de la plantilla de Debian 12"
}
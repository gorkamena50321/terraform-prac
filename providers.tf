terraform {
  required_providers {
    opennebula = {
      source  = "opennebula/opennebula"
      version = "~> 1.5.0"
    }
  }
}

provider "opennebula" {
  endpoint = "https://opennebula.egibide.org/RPC2"
  username = var.user   # Variable de usuario
  password = var.contra # Variable de contraseña
}

# Bloque DATA para buscar la red por nombre
data "opennebula_virtual_network" "network_data" {
  name = var.prod_network_name
}
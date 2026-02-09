resource "opennebula_virtual_machine" "web_server" {
  # Nombre dinámico: web-prod-usuario
  name        = "web-prod-${var.user}"
  template_id = var.template_base_id

  cpu    = 2
  memory = 2048

  # Conexión de red usando el bloque DATA 
  nic {
    network_id = data.opennebula_virtual_network.network_data.id
  }

  # Configuración del Hostname interno 
  context = {
    HOSTNAME = "web-prod-${var.user}"
  }
}
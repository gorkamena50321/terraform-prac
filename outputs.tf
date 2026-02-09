output "server_ip" {
  description = "Dirección IP asignada al servidor"
  # Usamos coalesce para evitar errores si la IP tarda en aparecer
  value = coalesce(opennebula_virtual_machine.web_server.nic[0].computed_ip, "IP_PENDIENTE")
}
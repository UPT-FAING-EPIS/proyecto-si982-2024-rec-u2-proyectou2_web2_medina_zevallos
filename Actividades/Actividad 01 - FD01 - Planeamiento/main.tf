provider "local" {
  # Proveedor local para simular servicios no directamente gestionados por nubes públicas.
}

# Servicio de despliegue: Elastika
resource "local_file" "elasticka_service" {
  filename = "elasticka_service_info.txt"
  content  = "Servicio de despliegue con Elastika. Costo mensual: 35 soles."
}

# API de OpenAI: estimación de costos
resource "local_file" "openai_api" {
  filename = "openai_api_cost.txt"
  content  = <<EOT
Estimación de costos para OpenAI API:
Interacciones mensuales: 1000
Costo por interacción: $0.0004
Costo mensual estimado: $0.40
EOT
}

# Output para los costos estimados
output "elasticka_cost" {
  value = "El servicio de despliegue Elasticka tiene un costo mensual de 35 soles."
}

output "openai_api_cost" {
  value = "El servicio de OpenAI API tiene un costo mensual estimado de $0.40."
}

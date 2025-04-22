using 'container-registry.bicep'

param name = 'acrvpbicepmodules'
param sku = 'Basic'
param tags = {
  Environment: 'Prod'
  Owner: 'Will Velida'
  Company: 'Velocity Platforms'
  Department: 'Technology'
}

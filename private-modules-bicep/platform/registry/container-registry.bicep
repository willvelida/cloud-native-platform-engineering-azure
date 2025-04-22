@description('The name of the Container Registry')
param name string

@description('The region where the Container Registry will be deployed')
param location string = resourceGroup().location

@description('The SKU of the Container Registry')
@allowed([
  'Basic'
  'Standard'
  'Premium'
])
param sku string

@description('The tags that will be applied to the Container Registry')
param tags object = {}

resource containerRegistry 'Microsoft.ContainerRegistry/registries@2024-11-01-preview' = {
  name: name
  location: location
  tags: tags
  sku: {
    name: sku
  }
  properties: {
    adminUserEnabled: true
  }
  identity: {
    type: 'SystemAssigned'
  }
}

@description('The login server for the deployed Container Registry')
output loginServer string = containerRegistry.properties.loginServer

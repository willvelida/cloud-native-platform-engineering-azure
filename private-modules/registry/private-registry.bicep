@description('The name of the Container Registry')
@minLength(5)
@maxLength(50)
param name string

@description('The region where the Container Registry will be deployed')
@allowed([
  'australiaeast'
])
param location string

@description('The tags that will be deployed to the Container Registry')
param tags object

resource acr 'Microsoft.ContainerRegistry/registries@2023-07-01' = {
  name: name
  location: location
  tags: tags
  sku: {
    name: 'Basic'
  }
  properties: {
    adminUserEnabled: true
  }
}

@description('The name of the deployed Azure Container Registry')
output acrName string = acr.name

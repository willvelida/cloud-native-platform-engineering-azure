using 'private-registry.bicep'

param name = 'acrwvprimod'
param location = 'australiaeast'
param tags = {
  Environment: 'Prod'
  Owner: 'willvelida'
}

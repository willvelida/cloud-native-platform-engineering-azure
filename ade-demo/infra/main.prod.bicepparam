using 'main.bicep'

param devCenterName = 'wv-devcenter-prod'
param logAnalyticsName = 'wv-law-prod'
param vnetName = 'wv-vnet-prod'
param keyVaultName = 'wv-kv-prod'
param principalId = '5667d54a-8d63-4fab-87b9-1df5e5804189'
param catalogToken = ''
param subnetName = 'subnet-devpools'
param tags = {
  Owner: 'Will Velida'
  Environment: 'Production'
}

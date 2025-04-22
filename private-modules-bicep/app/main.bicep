@description('The name of the Log Analytics workspace')
param logAnalyticsName string

@description('The region where all Azure Resources will be deployed')
param location string

@description('The Tags that will be applied to the resource')
param tags object

module logAnalytics 'br/VelocityPlatforms:log-analytics:v1' = {
  name: 'law'
  params: {
    name: logAnalyticsName
    location: location
    tags: tags
  }
}

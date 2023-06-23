targetScope = 'subscription'

param resourceGroupName string
param resourceGroupLocation string

param keyVaultName string
param servicePrincipalId string
param loadTestName string


resource resourceGrp 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  location: resourceGroupLocation
  name: resourceGroupName
  properties: {    
  }
}

module keyVault 'resources.bicep' = {
  name: 'resourcesModule${ uniqueString(subscription().id )}'
  scope: resourceGrp
  params: {
    keyVaultName: keyVaultName 
    location: resourceGrp.location
    secretsPermissions: ['all']
    objectId: servicePrincipalId
    loadTestName: loadTestName
  }
}

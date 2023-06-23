param location string
param keyVaultName string
param loadTestName string 

@description('Specifies the object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies. Get it by using Get-AzADUser or Get-AzADServicePrincipal cmdlets.')
param objectId string

param secretsPermissions array = [
  'all'
]

resource keyVault 'Microsoft.KeyVault/vaults@2023-02-01' = {  
  location: location
  name: keyVaultName
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: subscription().tenantId
    accessPolicies: [
      {
        objectId: objectId
        tenantId: subscription().tenantId
        permissions: {
          secrets: secretsPermissions
        }
      }
    ]
  }
}

resource loadTest 'Microsoft.LoadTestService/loadTests@2022-12-01' = {
  location: location
  name: loadTestName
  identity: { 
    type: 'SystemAssigned'
  }
}

resource keyVaultAccessPolicy 'Microsoft.KeyVault/vaults/accessPolicies@2022-07-01' = {
  name: 'add'
  parent: keyVault
  properties: {
    accessPolicies: [
      {
        objectId: loadTest.identity.principalId
        permissions: {
          secrets: [
            'all'
          ]
        }
        tenantId: loadTest.identity.tenantId
      }
    ]
  }
}

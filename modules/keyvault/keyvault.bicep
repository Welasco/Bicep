param keyvaultName string

resource keyvault 'Microsoft.KeyVault/vaults@2021-04-01-preview' = {
  name: keyvaultName
  location: resourceGroup().location
  properties: {
    sku: {
      family: 
      name: 
    }
    tenantId: 
  }
  
}

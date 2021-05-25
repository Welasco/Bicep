param publicipName string
param publicipsku object
param publicipproperties object
resource publicip 'Microsoft.Network/publicIPAddresses@2020-11-01' = {
  name: publicipName
  location: resourceGroup().location
  sku: publicipsku
  properties: publicipproperties
}
output publicipId string = publicip.id

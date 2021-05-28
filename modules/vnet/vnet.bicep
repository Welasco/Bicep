param vnetAddressSpace object = {
  addressPrefixes: [
    '10.0.0.0/16'
  ]
}
param vnetNamePrefix string
param subnets array
param location string = resourceGroup().location

resource vnet 'Microsoft.Network/virtualNetworks@2020-11-01' = {
  name: '${vnetNamePrefix}-VNet'
  location: location
  properties: {
    addressSpace: vnetAddressSpace
    subnets: subnets
  }
}

output vnetId string = vnet.id
output vnetName string = vnet.name
output vnetSubnets array = vnet.properties.subnets

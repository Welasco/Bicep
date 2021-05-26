param privateEndpointName string
param subnetid object
param privateLinkServiceConnections array

resource privateEndpoint 'Microsoft.Network/privateEndpoints@2020-11-01' = {
  name: privateEndpointName
  location: resourceGroup().location
  properties: {
    subnet: subnetid
    privateLinkServiceConnections: privateLinkServiceConnections
  }
}

output privateEndpointName string = privateEndpoint.name

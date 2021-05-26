param routetableName string
param routeName string
param properties object
resource rtroutes 'Microsoft.Network/routeTables/routes@2020-11-01'  = {
  name: '${routetableName}/${routeName}'
  properties: {
    addressPrefix: '0.0.0.0/0'
    nextHopIpAddress: ''
    nextHopType: 'VirtualAppliance'
  }
}

param rtName string
param routeName string
resource rtroutes 'Microsoft.Network/routeTables/routes@2020-11-01'  = {
  name: '${rtName}/${routeName}'
  properties: {
    addressPrefix: '0.0.0.0/0'
    nextHopIpAddress: ''
    nextHopType: 'VirtualAppliance'
  }
}

param rtName string
resource rt 'Microsoft.Network/routeTables@2020-11-01' = {
  name: rtName
  location: resourceGroup().location
}
output routetableID string = rt.id

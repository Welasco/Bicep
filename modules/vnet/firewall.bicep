param fwname string
param fwipConfigurations array
param fwapplicationRuleCollections array
param fwnetworkRuleCollections array
param fwnatRuleCollections array
resource firewall 'Microsoft.Network/azureFirewalls@2020-11-01' = {
  name: fwname
  location: resourceGroup().location
  properties: {
    ipConfigurations: fwipConfigurations
    applicationRuleCollections: fwapplicationRuleCollections 
    networkRuleCollections: fwnetworkRuleCollections    
    natRuleCollections: fwnatRuleCollections
  }
}

param principalId string
param msiResourceId string
param roleGuid string

resource role_assignment 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' = {
  name: guid(subscription().id, principalId)
  properties: {
    principalId: principalId
    //delegatedManagedIdentityResourceId: msiResourceId
    roleDefinitionId: resourceId('Microsoft.Authorization/roleDefinitions', roleGuid) //Private DNS Zone Contributor
  }
}

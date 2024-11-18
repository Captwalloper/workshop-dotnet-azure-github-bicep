@allowed(['dev', 'prod'])
param environment string

var githubUsername = 'Captwalloper'

targetScope = 'resourceGroup'

module appService './appservice.bicep' = {
  name: 'appservice'
  params: {
    appName: 'workshop-dnazghbicep-${githubUsername}-${environment}'
    location: 'centralus'
    environment: environment
  }
}

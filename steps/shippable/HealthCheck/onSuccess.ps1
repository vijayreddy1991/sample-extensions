Function Get-Integration-Name() {
  $IntegrationName = get_integration_name -IntegrationType "Slack"
  Write-Output $IntegrationName
}

Function Get-Resource-Name() {
  $ResourceName = get_resource_name -ResourceNamespace "jfrog" -ResourceType "GitRepo" -ResourceOperation "IN" -ResourceVersion "v1.0"
  Write-Output $ResourceName
}

execute_command Get-Integration-Name
execute_command Get-Resource-Name

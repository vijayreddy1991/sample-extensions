Function Get-Integration-Name() {
  $IntegrationName = get_integration_name --type "Slack"
  Write-Output $IntegrationName
}

execute_command Get-Integration-Name

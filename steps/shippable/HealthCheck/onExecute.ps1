Function Check-Health() {
  $StatusCode = ""
  $Url = "https://www.google.com/"
  $Response = Invoke-WebRequest $Url -Method Get -TimeoutSec 60 -UseBasicParsing
  $StatusCode = $Response.StatusCode

  if ( $StatusCode -eq "200" ) {
    Write-Information "Health check succeeded" -InformationAction Continue
  } else {
    Write-Information "Health check failed" -InformationAction Continue
  }
}

execute_command Check-Health

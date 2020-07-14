sampleResource() {
  local resourceName="$1"
  local resourceFoo=$(find_resource_variable "$resourceName" "foo")
  echo "resourceFoo: $resourceFoo"
}

execute_command "sampleResource %%context.resourceName%%"

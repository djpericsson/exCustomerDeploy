$params = @{
    namespaceName            = 'exky7qibpc7ehfy'
    hybridConnectionName     = 'exky7qibpc7ehfy'
    hybridConnectionHostName = 'MyHCServer'
    hybridConnectionPort     = '443'
    namespaceAuthRuleName    = 'defaultSender'
}

Test-AzureRmResourceGroupDeployment -TemplateFile "C:\Repo\exCustomerDeploy\relayDeployment.json" @params -ResourceGroupName 'SignUp-Test' -location 'westeurope' -Verbose

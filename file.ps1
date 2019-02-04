$globalConfiguration = @{
    subscriptionId = '123-456-789'
    Partner = 'Addleve AB'
    tenantDomain = 'mynenant'
    resourceCharacterLimit = 19
    storage = @{
        type = "Standard_LRS"
        containers = @("attachments", "documents", "exflowdiagnostics")
    }
}

$globalConfigurationJson = ConvertTo-Json $globalConfiguration -Depth 5
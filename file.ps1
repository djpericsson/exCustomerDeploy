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

$globalConfigurationJson = ConvertTo-Json $globalConfiguration -Compress


{"subscriptionId":"123-456-789","storage":{"containers":["attachments","documents","exflowdiagnostics"],"type":"Standard_LRS"},"resourceCharacterLimit":19,"tenantDomain":"mynenant","Partner":"Addleve AB"}
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


"appSettings": {"applicationInsightsInstrumentationKey":"[AppInsightsKey]","APPINSIGHTS_INSTRUMENTATIONKEY":"[AppInsightsKey]","APPINSIGHTS_PORTALINFO":"[APPPORTALINFO]","APPINSIGHTS_PROFILERFEATURE_VERSION":"[APPPROFILERVERSION]","startup.DeploymentName":"[DeploymentName]","Startup.HostRightPart":".[TenantName]","Startup.AzureKeyVaultURL":"[CustomerKeyVault]","offline_":"85.24.197.82"}
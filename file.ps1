$globalConfiguration = {
    "subscriptionId": "[subscription().subscriptionid]",
    "Partner": "[parameters('partner')]",
    "tenantDomain": "tenantName",
    "storage": {
        "type": "Standard_LRS",
        "containers": ["attachments", "documents", "exflowdiagnostics"]
    },
    "corsRules": {
        "allowedHeaders": [
            "x-ms-meta-abc",
            "Content-Encoding",
            "Content-Range",
            "Accept-Ranges",
            "x-ms-meta-data*",
            "x-ms-meta-target*"
        ],
        "allowedOrigins": [
            "[concat('http://', variables('uniqueCustomerString'), '.exflow.debug')]",
            "[concat('http://', variables('uniqueCustomerString'), '.tenantName')]"
        ],
        "maxAgeInSeconds": 0,
        "exposedHeaders": [
            "Accept-Ranges",
            "Content-Range",
            "Content-Encoding",
            "Content-Length",
            "Content-Type"
        ],
        "allowedMethods": ["Get"]
    }
}
resource "azurerm_resource_group" "loganalytics_rg" {
  name     = "loganalytics-sandbox-rg"
  location = "West Europe"
}

resource "azurerm_log_analytics_workspace" "loganalytics_sandbox" {
  name                = "sandbox-la-1"
  location            = azurerm_resource_group.loganalytics_rg.location
  resource_group_name = azurerm_resource_group.loganalytics_rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

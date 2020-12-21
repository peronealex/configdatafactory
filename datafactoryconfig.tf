resource "azurerm_data_factory_pipeline" "example" {
  name                = var.name
  resource_group_name = var.resource_group_name
  data_factory_name   = var.name
  variables = {
    "bob" = "item1"
  }
  activities_json = <<JSON
[
    {
        "name": "Append variable1",
        "type": "AppendVariable",
        "dependsOn": [],
        "userProperties": [],
        "typeProperties": {
            "variableName": "bob",
            "value": "something"
        }
    }
]
  JSON  
}
###
resource "azurerm_data_factory_linked_service_sql_server" "example" {
  name                = var.name
  resource_group_name = var.resource_group_name
  data_factory_name   = var.name
  connection_string   = var.connection_string
}

resource "azurerm_data_factory_dataset_sql_server_table" "example" {
  name                = var.name
  resource_group_name = var.resource_group_name
  data_factory_name   = var.name
  linked_service_name = var.name
}
provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "RSG_Recompra" {
  name = "RSG_Recompra"
  location = "Brazil South"
  tags = {
    environment = var.environment
    project = var.project
    owner = var.owner
    centroCusto = var.centroCusto
  }
}

resource "azurerm_virtual_network" "recompra_subnet" {
  name = "recompra_subnet"
  address_space = ["10.230.0.0/16"]
  location = var.location
  resource_group_name = azurerm_resource_group.RSG_Recompra.name
  tags = {
    environment = var.environment
    project = var.project
    owner = var.owner
    centroCusto = var.centroCusto
  } 
}


resource "azurerm_subnet" "recompra_subnet_front" {
  name = "recompra_subnet_front"
  resource_group_name = azurerm_resource_group.RSG_Recompra.name
  virtual_network_name = azurerm_virtual_network.recompra_subnet.name
  address_prefixes = [ "10.230.1.0/24" ]
  
}

resource "azurerm_subnet" "recompra_subnet_backend" {
  name = "recompra_subnet_backend"
  resource_group_name = azurerm_resource_group.RSG_Recompra.name
  virtual_network_name = azurerm_virtual_network.recompra_subnet.name
  address_prefixes = [ "10.230.2.0/24" ] 
}

resource "azurerm_network_security_group" "recompra_subnet_backend_nsg" {
  name = "recompra_subnet_backend_nsg"
  location = var.location
  resource_group_name = azurerm_resource_group.RSG_Recompra.name
  
}

resource "azurerm_app_service_plan" "recompra_app_service_plan" {
  name = "recompra_app_service_plan"
  location = var.location
  resource_group_name = azurerm_resource_group.RSG_Recompra.name
  kind = "Windows"
  sku {
    tier = "Standard"
    size = "s1"
  }
  }

resource "azurerm_app_service" "recompra_app_service" {
  name = "recompra-app-service"
  location = var.location
  resource_group_name = azurerm_resource_group.RSG_Recompra.name
  app_service_plan_id  = azurerm_app_service_plan.recompra_app_service_plan.id
  tags = {
    environment = var.environment
    project = var.project
    owner = var.owner
    centroCusto = var.centroCusto
      
  }    
}


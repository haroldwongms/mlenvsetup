# mlenvsetup
ML Environment Setup

This template will deploy the following resources.

1.  Data Scientist Virtual Machine
2.  Storage Account for CSV upload
3.  App Service Plan (Consumption based)
4.  Function for processing and validating uploaded CSV file
5.  Function to call prediction model
6.  docker container for hosting web UI for uploading CSV file
7.  docker container for web api
8.  docker container for prediction model

The following input parameters are needed to deploy the template.

1.  _artifactsLocation: Location of the github repo with the template and scripts
2.  location: Azure region to deploy to. Easist to accept the default which is the region of the Resource Group
3.  virtualMachineName: Name of the Virtual machine (VM)
4.  virtualMachineSize: VM size
5.  adminUsername: Adminitistrator user name for the VM
6.  adminPassword: Password for the administrator account. Needs to be a complex password
7.  adminPassword: Name for the function app

Deploy to Azure using Azure Portal: 
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fharoldwongms%2Fmlenvsetup%2Fmaster%2Fazuredeploy.json" target="_blank"><img src="http://azuredeploy.net/deploybutton.png"/></a>
<a href="https://portal.azure.us/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fharoldwongms%2Fmlenvsetup%2Fmaster%2Fazuredeploy.json" target="_blank"><img src="http://azuredeploy.net/AzureGov.png"/></a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fharoldwongms%2Fmlenvsetup%2Fmaster%2Fazuredeploy.json" target="_blank"><img src="http://armviz.io/visualizebutton.png"/></a>
<br/>

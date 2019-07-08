
#Get Reader Role Definition
az role definition list --name "API Management Service Reader Role"

# Check access for user
az role assignment list --assignee 22e8dec2-7d27-4f83-b90f-59955c1ad1e4
 
# Create new write role
az role definition create --role-definition ./roles/APIM-Scoped-Role.json
az role definition update --role-definition ./roles/APIM-Scoped-Role.json


az role assignment create --role "Reader" --assignee steve-leonard@outlook.com --resource-group PaaSDemos
az role assignment create --role "APIM Contribute to Jobs API" --assignee 22e8dec2-7d27-4f83-b90f-59955c1ad1e4 --scope /subscriptions/3d3a0fec-2648-40a0-8f3a-f9fc5a5f3db0/resourceGroups/PaaSDemos/providers/Microsoft.ApiManagement/service/SteveAPI/apis/Jobs



az role assignment delete --assignee 22e8dec2-7d27-4f83-b90f-59955c1ad1e4 --role "APIM Contribute to Jobs API" --scope /subscriptions/3d3a0fec-2648-40a0-8f3a-f9fc5a5f3db0/resourceGroups/PaaSDemos/providers/Microsoft.ApiManagement/service/SteveAPI/apis/Jobs
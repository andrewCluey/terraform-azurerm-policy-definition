# Find and read the file data into local Variables.
locals {
  policy_files = fileset("./data", "*.json")
  raw_data     = [for f in local.policy_files : jsondecode(file("./data/${f}"))]
}

/*
 'for' expression is used to convert the Tuple (from local.json_data), to an Object type.
 In depth explanation of 'for' expression can be found in the Readme
*/


module "custom_policy" {
  for_each = { for f in local.raw_data : f.name => f }
  source   = "andrewCluey/policy-definition/azurerm"
  version  = "0.1.1"

  policy_name      = each.key
  policy_mode      = each.value.properties.mode
  display_name     = each.value.properties.displayName
  management_group = "im"
  metadata         = jsonencode("${each.value.properties.metadata}")   #format("<<METADATA \n %s \n METADATA", each.value.properties.metadata)
  parameters       = jsonencode("${each.value.properties.parameters}") #format("<<PARAMETERS \n %s \n PARAMETERS", each.value.properties.parameters)
  policy_rule      = jsonencode("${each.value.properties.policyRule}") #format("<<POLICYRULE \n %s \n POLICYRULE", each.value.properties.policyRule)
}




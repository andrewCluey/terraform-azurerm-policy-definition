# terraform-azurerm-policy-definition
Terraform module that will define Azure policies using json file inputs




reads the files specified 

Stores the content from the read JSON policy file into local variables.
Local variables are then used as inputs into the policy definition resource

When caling the module, a for_each can be used to iterate through multiple files, EXAMPLE:

```
locals {
    policy_files = fileset(path.module, "lib/*.json")
}


module "policies" {
    for_each = local.policy_files
    source = "../"

    policy_file = each.value


}


```
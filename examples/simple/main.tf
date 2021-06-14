module "policy" {
  source = "../../"

  policy_name      = "remoteTest"
  policy_mode      = "Indexed"
  management_group = "im"
  display_name     = "im-asc"
  metadata         = <<METADATA
  {
    "category": "General"
  }
METADATA

  parameters = <<PARAMETERS
  {
    "allowedLocations": {
      "type": "Array",
      "metadata": {
        "description": "The list of allowed locations for resources.",
        "displayName": "Allowed locations",
        "strongType": "location"
      }
    }
  }
PARAMETERS

  policy_rule = <<POLICYRULE
    {
      "if": {
        "not": {
          "field": "location",
          "in": "[parameters('allowedLocations')]"
        }
      },
      "then": {
        "effect": "audit"
      }
    }
POLICYRULE
}
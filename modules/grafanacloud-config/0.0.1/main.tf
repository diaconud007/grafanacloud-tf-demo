# by diaconud007
#
# This module could be used in order to manage grafanacloud stacks and grafanacloud api keys
# using the provider created by form3tech-oss which I found here: https://github.com/form3tech-oss/terraform-provider-grafanacloud

# Manages Stack in Grafana Cloud
resource "grafanacloud_stack" "grafanacloud_stacks" {

  for_each = { for grafanacloudstack in var.grafanacloud_stacks: grafanacloudstack.name => grafanacloudstack }

  name = each.value.name
  slug = each.value.stack_parameters.slug
  url =  each.value.stack_parameters.url
}

# Manages API key on a Grafana instance inside a Grafana Cloud stack.
resource "grafanacloud_grafana_api_key" "api_client" {
  depends_on = [grafanacloud_stack.grafanacloud_stacks]

  for_each = { for grafanacloudstack in var.grafanacloud_stacks: grafanacloudstack.name => grafanacloudstack }

  name  = each.value.api_key_parameters.name
  role  = each.value.api_key_parameters.role
  stack = each.value.name
}

resource "grafanacloud_portal_api_key" "portal_api_keys" {

  for_each = { for portal_api_key in var.portal_api_keys: portal_api_key.name => portal_api_key }

  name = each.value.name
  role = each.value.role
}
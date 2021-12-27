module "grafanacloud-test-resources" {
  source = "../modules/grafanacloud-config/0.0.1"

  grafanacloud_stacks = [for grafanacloudstack in var.grafanacloud_stacks : {
    name = grafanacloudstack.name
    stack_parameters = grafanacloudstack.stack_parameters
    api_key_parameters = grafanacloudstack.api_key_parameters
  }]

  portal_api_keys = [for portal_api_key in var.portal_api_keys : {
    name = portal_api_key.name
    role = portal_api_key.role
  }]

  providers = {
    grafanacloud =grafanacloud.grafanacloud_test
  }
}
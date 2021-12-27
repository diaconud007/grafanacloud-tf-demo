variable "grafanacloud_stacks" {
  type = list(object({
    name = string
    stack_parameters = object({
      slug = string
      url = string
    })
    api_key_parameters = object({
      name = string
      role = string
    })
  }))
}

variable "portal_api_keys" {
  type = list(object({
    name = string
    role = string
  }))
}

variable "grafanacloud_auth" {
  type = object({
    api_key = string
    organisation = string
    url = string
  })
}
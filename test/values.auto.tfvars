grafanacloud_auth = {
  api_key = "eyJrIjoiMzQ4NjhjODg3YWQ5ZGY0MTlkN2NiYTA0MDZhMDk4NTRiNTRkZDFhYiIsIm4iOiJ0ZXJyYWZvcm0tYWRtaW4iLCJpZCI6NTc5NTcwfQ=="
  organisation = "diaconud007"
  url = "https://grafana.com/api"
}

grafanacloud_stacks = [
  {
    name = "Stack_No1"
    stack_parameters = {
      slug = "Slug_Of_Stack_No1"
      url = "url_No1"
    }
    api_key_parameters = {
      name = "ApiKeyForStackNo1"
      role = "Editor"
    }
  },
  {
    name = "Stack_No2"
    stack_parameters = {
      slug = "Slug_Of_Stack_No2"
      url = "url_No2"
    }
    api_key_parameters = {
      name = "ApiKeyForStackNo2"
      role = "Admin"
    }
  },
  {
    name = "Stack_No3"
    stack_parameters = {
      slug = "Slug_Of_Stack_No3"
      url = "url_No3"
    }
    api_key_parameters = {
      name = "ApiKeyForStackNo3"
      role = "Viewer"
    }
  }
]

portal_api_keys = [
  {
    name = "FullAdmin"
    role = "Admin"
  },
  {
    name = "PrometheusRemoteWrite"
    role = "MetricsPublisher"
  }
]
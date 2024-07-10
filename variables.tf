variable "apim" {
  type = object({
    id                  = string
    name                = string
    resource_group_name = string
  })
}

variable "workspace" {
  type = object({
    name         = string
    description  = string
    display_name = string
  })
}

variable "products" {
  type = list(object({
    name                  = string
    approval_required     = bool
    description           = string
    display_name          = string
    subscription_required = bool
    subscriptions_limit   = number
  }))
}

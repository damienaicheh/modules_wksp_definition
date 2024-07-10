variable "apim" {
  type = object({
    name                = string
    resource_group_name = string
  })
}

variable "workspace" {
  type = object({
    name = string
    description = string
    display_name = string
  })
}
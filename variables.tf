variable "apim_id" {
  type = string
}

variable "workspace" {
  type = object({
    name = string
    description = string
    display_name = string
  })
}
variable "Location" {
  type    = string
  default = "WestEurope"
}
variable "ResourceGroup" {
  type = string
}

variable "Size" {
  type = string
  validation {
    condition     = contains(["Standard_B4ms", "Standard_D2s_v3", "Standard_F8s_v2"], var.Size)
    error_message = "Valid values for size are (Standard_B4ms, Standard_D2s_v3, Standard_F8s_v2)."
  }
}
variable "tags" {
  default     = {}
  description = "Resource tags"
  type        = map(string)
}
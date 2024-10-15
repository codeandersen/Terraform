variable "resource_group_location" {
default     = "westeurope"
description = "Location of the resource group."
}

variable "rg_name" {
type        = string
default     = "rg-avdinfosys-weu-p"
description = "Name of the Resource group in which to deploy service objects"
}

variable "workspace" {
type        = string
description = "Name of the Azure Virtual Desktop workspace"
default     = "avws-avdinfosys-weu-p"
}

variable "hostpool" {
type        = string
description = "Name of the Azure Virtual Desktop host pool"
default     = "vdpool-avdinfosys-weu-p"
}

variable "rfc3339" {
type        = string
default     = "2024-03-26T15:30:00Z"
description = "Registration token expiration"
}

variable "prefix" {
type        = string
default     = "vdpool-avdinfosys-weu-p"
description = "Prefix of the name of the AVD machine(s)"
}
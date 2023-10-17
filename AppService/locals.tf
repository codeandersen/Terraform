locals {
  subcriptionId   = var.environment == "Development" ? "abff8683-59ad-4d0f-a6a8-6a9e2d37e71d" : "9f588036-eb08-448d-bf25-fb476f0a32f3"
  env  = var.environment == "Development" ? "d" : "p"

  tags = {
    "Environment"       = var.environment
    "MFT Company Owner" = var.MFT_Company_Owner
  }
}
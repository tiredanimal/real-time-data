provider "cloudflare" {}

provider "aws" {
  region = "eu-west-2"
}

locals {
  org_name      = "tiredanimal"
  custom_domain = "${local.org_name}.com"
}

module "aws" {
  source = "./modules/aws"

  env           = var.env
  custom_domain = local.custom_domain
}

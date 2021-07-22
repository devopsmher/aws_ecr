module "ecr" {
  source  = "cloudposse/ecr/aws"
  version = "0.32.2"
  for_each = { for x in var.repo : x => x }
  name  = "${each.value}"
}

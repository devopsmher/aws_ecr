module "ecr" {
  source = "lgallard/ecr/aws"
  for_each = { for x in ["ansible", "jankins", "nginx"] : x => x }
  name  = "${each.value}"
}

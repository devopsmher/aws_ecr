provider "aws" {
    access_key = "AKIA2BFLQL7NRVGDLLTM"
    secret_key = "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"
    region = "us-east-2"
}



module "ecr" {
  source = "lgallard/ecr/aws"
  for_each = { for x in ["ansible", "jankins", "nginx"] : x => x }
  name  = "${each.value}"
}
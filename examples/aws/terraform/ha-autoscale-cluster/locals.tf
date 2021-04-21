locals {
  common_tags_list = [
    for key, value in var.aws_tags : {
      key   = key
      value = value
    }
  ]
}

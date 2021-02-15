resource "aws_cloudformation_stack" "this" {
  name = "cloud9-${replace(var.UserName, ".", "-")}"

  parameters {
    SubnetId    = "${var.SubnetId}"
    UserName    = "${var.UserName}"
    AssumedRole = "${var.AssumedRole}"
    SpecialUserName = "${var.SpecialUserName}"
    SpecialUserEmail = "${var.SpecialEmail}"
  }

  template_body = "${file("${path.module}/stack.yml")}"

  tags = "${merge(    
    local.common_tags,
    map(
      "Owner", "${var.UserName}",
      "Purpose", "Cloud-based IDE for project development"
    )
  )}"
}


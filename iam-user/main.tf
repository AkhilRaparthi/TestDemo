resource "aws_iam_user" "user-1" {
  name = "aws-predator-sense-dev"
  tags = {
    name = "Predator"
    owner = "Akhil"
    environment = "Dev"
  }
}

resource "aws_iam_access_key" "key-1" {
  aws_iam_user = aws_iam_user.user-1.id
}

data "aws_iam_policy_document" "policy-1" {
  statement {
    effect    = "Allow"
    actions   = [
                  "ec2:*",
                  "iam:*"
                ]
    resources = ["*"]
  }
}

resource "aws_iam_user_policy" "policy1" {
  name   = "Ec2_Access"
  user   = aws_iam_user.user-1.id
  policy = data.aws_iam_policy_document.policy-1.id
}

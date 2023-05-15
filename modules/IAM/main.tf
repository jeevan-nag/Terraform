resource "aws_iam_user" "admin-user" {
  name = "lucy-g1"
}

resource "aws_iam_policy" "adminUser" {
  name = "adminUsers"
  policy =  file("admin-policy.json")
}

resource "aws_iam_user_policy_attachment" "policy_attachment" {
  user       = "lucy-g1"
  policy_arn = aws_iam_policy.adminUser.arn
}
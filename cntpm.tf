


resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 2
  path = "/system/"

}

output "iamusers" {
  value = aws_iam_user.lb[*].name
  
}

output "arnnames" {
   value = aws_iam_user.lb[*].arn
  
}

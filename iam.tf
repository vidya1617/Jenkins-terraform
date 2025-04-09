resource "aws_iam_role" "my_role1" {
    name = "new_role_for_s3_using_terraform_jenkins_vcvc"
    assume_role_policy = jsonencode({
        Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = {
        Service = "ec2.amazonaws.com"
      },
      Action = "sts:AssumeRole"
    }]
    })
  
}
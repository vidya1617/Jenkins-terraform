provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "new-bucket" {
  bucket = "jenkins-vcvcvcvc-terraform"
}
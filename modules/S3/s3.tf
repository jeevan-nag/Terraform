resource "aws_s3_bucket" "upload1" {
  bucket = "pixar-studios"
}

resource "aws_s3_bucket_object" "woody" {
  bucket = aws_s3_bucket.upload1.id
  key    = "woody.png"
  source = "./variables.png"
}

# terraform {
#   backend "s3" {
#     key = "terraform.tfstate"
#     region = "ca-central-1"
#     bucket = "pixar-studios"
#     profile = "softsuave"
#   }
# }
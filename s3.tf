resource "aws_s3_bucket" "dummy" {
  bucket = "my-atlantis-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "POC"
  }
}

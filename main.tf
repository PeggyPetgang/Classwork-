resource "aws_s3_bucket" "peggy-bucket-mine" {
     bucket = "peggy.tfstate"
     acl    = "private"
}


resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "${var.env}-infra-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "${var.env}-infra-table"
    Environment = var.env
  }
}

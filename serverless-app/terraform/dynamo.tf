resource "aws_dynamodb_table" "this" {
  hash_key       = "learnId"
  name           = var.service_name
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "learnId"
    type = "S"
  }
  tags = local.common_tags

}


resource "aws_dynamodb_table_item" "todo" {
  table_name = aws_dynamodb_table.this.name
  hash_key   = aws_dynamodb_table.this.hash_key
  item       = <<ITEM
    {
    "learnId": {"S": "1"},
    "Task": {"S": "Aprender Terraform"},
    "Done": {"S": "0"}
    }
    ITEM

}

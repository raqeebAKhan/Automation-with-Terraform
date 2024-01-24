resource "aws_dynamodb_table" "my_app_table" {
    name = "${var.env}-app-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "userID"
    attribute {
        name = "userID"
        type = "S"
    }
    tags = {
        Name = "${var.env}-app-table"
    }
}

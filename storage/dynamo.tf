# resource "aws_dynamodb_table" "DataLakeSettingsDynamo" {
#   name           = "data-lake-settings"
#   billing_mode   = "PAY_PER_REQUEST"
#   hash_key       = "setting_id"

#   attribute {
#     name = "setting_id"
#     type = "S"
#   }
# }
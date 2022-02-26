resource "aws_cloudformation_stack" "datalake" {
  name = "datalake-deploy-stack"
  capabilities = ["CAPABILITY_AUTO_EXPAND", "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM"]
  parameters = {
   AdministratorName = "Paul Fries"
   AdministratorEmail = "pffries@amazon.com" 
   CognitoDomain = "paulstest"
  }
  template_url = "https://s3.amazonaws.com/solutions-reference/data-lake-solution/latest/data-lake-deploy.template"
}
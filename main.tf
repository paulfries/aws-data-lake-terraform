resource "aws_cloudformation_stack" "datalake" {
  name         = "datalake-deploy-stack"
  capabilities = ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM"]
  parameters = {
    AdministratorName  = var.DeployFederated ? null : var.AdministratorName
    AdministratorEmail = var.DeployFederated ? null : var.AdministratorEmail
    CognitoDomain      = var.CognitoDomain
    AdFsHostname       = var.DeployFederated ? var.AdFsHostname : null
  }
  template_url = var.DeployFederated ? var.FederatedTemplate : var.NonFederatedTemplate

}
output "sso_instruction" {
  value       = var.DeployFederated ? "You've Deployed the federated stack" : null
  description = "Please complete the manual SSO configuration with the instructions found here: https://docs.aws.amazon.com/solutions/latest/data-lake-solution/appendix-a.html"
}
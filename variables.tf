variable "AdministratorName" {
  type        = string
  description = "The user name for the initial solution Administrator. After the solution is deployed, this Administrator can create and manage other users, including additional Administrators."
}

variable "AdministratorEmail" {
  type        = string
  description = "A valid email associated with the Administrator user."
}

variable "CognitoDomain" {
  type        = string
  description = "Choose an available domain prefix for your Amazon Cognito hosted domain. The solution uses Amazon Cognito for user authentication for Kibana. Defining a domain name for the user pool is a pre-requirement for that."
}

variable "DeployFederated" {
  description = "Deploy the Federated Teplate to connect a thrid-party SSO provider? (true/false)"
  default     = false
}

variable "AdFsHostname" {
  description = "Insert the hostname of your AD FS endpoint."
}

variable "NonFederatedTemplate" {
  type    = string
  default = "https://s3.amazonaws.com/solutions-reference/data-lake-solution/latest/data-lake-deploy.template"
}

variable "FederatedTemplate" {
  type    = string
  default = "https://s3.amazonaws.com/solutions-reference/data-lake-solution/latest/data-lake-deploy-federated.template"
}
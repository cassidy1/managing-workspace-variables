variable "enviornments" {
    type = list(string)
    default = ["dev", "staging", "prod"]
}
variable "organization" {}
variable "vcs_identifier" {}
variable "oauth_token_id" {}
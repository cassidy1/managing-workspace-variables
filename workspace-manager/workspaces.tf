resource "tfe_workspace" "cat-app" {
  count = length(var.environments)
  name         = "cat-app-${element(var.environments, count.index)}"
  organization = var.organization

  vcs_repo {
      identifier = var.vcs_identifier
      oauth_token_id = var.oauth_token_id
  }
  working_directory = "cat-app/${element(var.environments, count.index)}"
  trigger_prefixes = ["cat-app"]
}

resource "tfe_workspace" "dog-app" {
  count = length(var.environments)
  name         = "dog-app-${element(var.environments, count.index)}"
  organization = var.organization

  vcs_repo {
      identifier = var.vcs_identifier
      oauth_token_id = var.oauth_token_id
  }
  working_directory = "dog-app/${element(var.environments, count.index)}"
  trigger_prefixes = ["dog-app"]
}
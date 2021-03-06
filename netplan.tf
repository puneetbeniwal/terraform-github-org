module "netplan" {
  source                       = "./modules/repository"
  name                         = "netplan"
  cookbook_team                = github_team.netplan.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "netplan" {
  name        = "netplan"
  description = "netplan Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "netplan-maintainer-1" {
  team_id  = github_team.netplan.id
  username = "Xorima"
  role     = "maintainer"
}

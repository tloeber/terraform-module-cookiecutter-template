module "repo" {
  source           = "github.com/tloeber/terraform-module_github-repo"
  repo_name        = "terraform-module-cookiecutter-template"
  repo_description = "Template for terraform modules."
  repo_visibility  = "public"
  is_template      = false

  aws_region            = "us-east-1"
  secret_arn_github_PAT = var.secret_arn_github_PAT
}

# resource "tfe_workspace" "workspace" {
#   # Set as env variable. Note: Starting with Terraform v1.7, TF_WORKSPACE will be renamed to TF_CLOUD_WORKSPACE.
#   # See https://developer.hashicorp.com/terraform/cli/v1.6.x/cloud/settings#the-cloud-block
#   name         = var.TF_WORKSPACE
#   organization = var.TF_CLOUD_ORGANIZATION
#   # auto_apply   = true
#   # vcs_repo {
#   #   identifier          = module.repo.repo_id
#   #   oauth_token_id      = var.oauth_token_id
#   #   branch              = "main"
#   #   ingress_submodules  = true
#   #   ingress_terraform_tf = true
#   # }
# }

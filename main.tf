provider "github" {
  token = var.github_token
  owner = var.github_owner
}

resource "github_repository" "candy_crush_docker_repo" {
  name        = "Candy-crush-Docker"
  description = "Repository for Candy Crush Docker setup"
  visibility  = "public"
}

resource "github_actions_secret" "example_secret" {
  repository     = github_repository.candy_crush_docker_repo.name
  secret_name    = "MY_SECRET"
 plaintext_value = "my_secret_value"
}

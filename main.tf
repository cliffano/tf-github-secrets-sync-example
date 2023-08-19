### PyPI token

data "aws_ssm_parameter" "pypi_token" {
  name = "/secrets/pypi-token"
}

resource "github_actions_secret" "pypi_token" {
  for_each        = toset(var.python_repos)
  repository      = each.key
  secret_name     = "PYPI_TOKEN"
  plaintext_value = data.aws_ssm_parameter.pypi_token.value
}

### RubyGems token

data "aws_ssm_parameter" "rubygems_token" {
  name = "/secrets/rubygems-token"
}

resource "github_actions_secret" "rubygems_token" {
  for_each        = toset(var.ruby_repos)
  repository      = each.key
  secret_name     = "RUBYGEMS_TOKEN"
  plaintext_value = data.aws_ssm_parameter.rubygems_token.value
}

### npmjs token

data "aws_ssm_parameter" "npmjs_token" {
  name = "/secrets/npmjs-token"
}

resource "github_actions_secret" "npmjs_token" {
  for_each        = toset(var.nodejs_repos)
  repository      = each.key
  secret_name     = "NPMJS_TOKEN"
  plaintext_value = data.aws_ssm_parameter.npmjs_token.value
}

### GitHub token

data "aws_ssm_parameter" "github_token" {
  name = "/secrets/github-token"
}

resource "github_actions_secret" "github_token" {
  for_each        = toset(var.github_repos)
  repository      = each.key
  secret_name     = "GH_TOKEN"
  plaintext_value = data.aws_ssm_parameter.github_token.value
}
provider "aws" {
  region = "ap-southeast-2"
}

# Note: requires GITHUB_TOKEN environment variable to be set
provider "github" {
}
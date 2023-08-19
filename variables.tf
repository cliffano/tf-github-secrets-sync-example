variable "python_repos" {
  type        = list(any)
  default     = []
  description = "Python repositories"
}

variable "ruby_repos" {
  type        = list(any)
  default     = []
  description = "Ruby repositories"
}

variable "nodejs_repos" {
  type        = list(any)
  default     = []
  description = "node.js repositories"
}

variable "github_repos" {
  type        = list(any)
  default     = []
  description = "GitHub repositories"
}
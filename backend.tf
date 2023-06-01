terraform {
  cloud {
    organization = "maslovsjyi-edu"

    workspaces {
      name = "tf-pipeline"
    }
  }
}

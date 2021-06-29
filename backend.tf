terraform {
  backend "s3" {
    bucket = "devops-june2021-training"
    key    = "digital/gigabit/miniproject-statefile"
    region = "eu-west-2"
  }
}

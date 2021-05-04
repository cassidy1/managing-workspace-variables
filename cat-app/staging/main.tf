module "cat-app" {
  source = "../"
  prefix = "ryan-staging"
  region = "us-west-2"
  environment = "staging"
  placeholder = "placekitten.com"
}
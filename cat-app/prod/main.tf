module "cat-app" {
  source = "../"
  prefix = "ryan-prod"
  region = "us-west-2"
  environment = "prod"
  placeholder = "placekitten.com"
}
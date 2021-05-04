module "cat-app" {
  source = "../"
  prefix = "ryan-dev"
  region = "us-west-2"
  environment = "dev"
  placeholder = "placekitten.com"
}
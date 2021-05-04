module "dog-app" {
  source = "../"
  prefix = "ryan-staging"
  region = "us-west-2"
  environment = "staging"
  placeholder = "placedog.net"
}
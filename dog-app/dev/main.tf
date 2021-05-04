module "dog-app" {
  source = "../"
  prefix = "ryan-dev"
  region = "us-west-2"
  environment = "dev"
  placeholder = "placedog.net"
}
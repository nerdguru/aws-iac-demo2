module "aws-example" {
  source = "github.com/nerdguru/aws-iac-cicddemo.git"

  region = "us-east-2"
  ami = "ami-0d5d9d301c853a04a"
  instance_type = "t2.micro"
}
output "ip_address" {
  description = "IP address of our new instance"
  value       = module.aws-example.ip_address
}

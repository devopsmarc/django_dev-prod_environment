module "dev_aws" {
  source = "../../infra"
  aws_region = "us-east-1"
  ami = "ami-083654bd07b5da81d"
  instance_type = "t2.micro"
  key_name = "dev_aws_key"
}

output "Dev_Genesis-IP" {
  value = module.dev_aws.Genesis-IP
}

output "Dev_Genesis-State" {
  value = module.dev_aws.Genesis-State
}

output "Dev_Genesis-Zone" {
  value = module.dev_aws.Genesis-Zone
}

output "Dev_Genesis-Security_Group" {
  value = module.dev_aws.Genesis-Security_Group
}

output "Dev_Genesis-ID" {
  value = module.dev_aws.Genesis-ID
}
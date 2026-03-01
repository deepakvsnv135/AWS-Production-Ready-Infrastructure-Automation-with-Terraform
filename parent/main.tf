module "ec2" {
  source        = "../child/ec2"
  ami_id        = "ami-0f5ee92e2d63afc18"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.subnet.subnet_id
  instance_type = "t3.micro"
}

module "vpc" {
  source    = "../child/vpc"
  vpc_cidr  = "10.0.0.0/16"
  vpc_name  = "deepak-vpc"
}

module "s3" {
  source = "../child/s3"
  bucket_name = "deepak-s3-6198"
  environment = "dev"
}

module "subnet" {
  source       = "../child/subnet"
  vpc_id       = module.vpc.vpc_id
  subnet_cidr  = "10.0.1.0/24"
  az           = "ap-south-1a"
  subnet_name  = "deepak-public-subnet"
}

module "network" {
  source    = "../child/network"
  vpc_id    = module.vpc.vpc_id
  subnet_id = module.subnet.subnet_id
}


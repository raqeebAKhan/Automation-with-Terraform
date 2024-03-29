terraform {
  required_providers {
     aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
	backend "s3" {
		bucket = "terra-remote--bucket"
		key = "terraform.tfstate"
		region = "us-east-2"
		dynamodb_table = "terra-remote-table"
}
}

provider "aws"{
	region = "us-east-2"
}


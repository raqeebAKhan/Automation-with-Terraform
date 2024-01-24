variable "ami" {
	type = string
	description = "This is the AMI Id for EC2 instance"
}

variable "instance_type" {
        type = string
        description = "This is the instance type for EC2 instance"
}

variable "instance_name" {
        type = string
        description = "This is the name for EC2 instance"
}

variable "env" {
        type = string
        description = "This is env for infra"
}

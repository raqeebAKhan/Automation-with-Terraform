resource "aws_instance" "my_instance"{
	 ami = "ami-0e83be366243f524a"
	 instance_type = "t2.micro"
	 tags = {
	 Name = "terra-proj-instance"
}
}

module "my_dev_app" {
	source = "./my_module"
	env = "dev"	
	instance_type = "t2.micro"
	ami = "ami-0e83be366243f524a"
	instance_name = "my-module-name"
}

module "my_prd_app" {
        source = "./my_module"
        env = "prd"
        instance_type = "t2.micro"
        ami = "ami-0e83be366243f524a"
        instance_name = "my-module-name"
}

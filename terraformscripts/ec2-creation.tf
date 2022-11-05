provider "aws"{
   region  = "ap-south-1" 
   
}

resource "aws_instance" "AWSEC2Instance"{
     count   = 1
     ami     =  "ami-051f0947e420652a9"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-2"]
     key_name        = "maven_server"
     tags = {
        Name = "tomeey"
     }
}


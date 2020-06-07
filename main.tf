provider "aws" {
    access_key="xxxx"
    secret_key="xxxxxxx"
    region="us-east-1"
}


resource "aws_instance" "myfirstec2" {
  ami="ami-09d95fab7fff3776c"
  instance_type="t2.micro"
  tags= {
      Name="The Techie House demo"
  }
}

resource "aws_s3_bucket" "theTechieHouseB" {
  bucket="the-techie-house-first-bucket"
  acl="private"
  tags ={
            Name="The Techie House demo"
  }
}

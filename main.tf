terraform{
  required_providers{
    aws={
      source="hashicorp/aws"
      version="~> 5.0"
    }
  }
}

provider "aws"{
  region="us-east-1"
}

resource "aws-instance" "TerraInst"{
  ami= "ami-08a0d1e16fc3f61ea"
  instance_type="t2.micro"
  tags={
    Name="TerraInst"
  }
}

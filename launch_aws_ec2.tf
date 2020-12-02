provider "aws" {
  region  = "us-east-1"
  access_key = "ASIAQYZ37JWTJF362NPA"
  secret_key = "ukG/ivdbQLUqOBIUKhEZhJc4zRJ5B3Ej45UErXsS"
  token = "FwoGZXIvYXdzEAoaDIkr8H0bIpwy5mZgJyK0AZ+mgOt7crLLstIuibn/sSoDKpfkF94xSrqNfTsCzlev0wZvMQQ5cH6s7R0KgBDRNnzRcSEZYguuhdlddz/cH+f6DWLeBMxmCynLmEbZWT76aLXpBT+vlrZCXaBYjaCZTpXsxXB9lEeM5yzw7VmebF/TeQleX3rLXwShJngt8HdCZGafyXcrCrj88AnIo/MMh5PHo+oz3nzlsPmC5+CGgbzPt55orX4RjQH4UtD5wrwGDusgWyjxkpb+BTItLutuzHV1PrYNUhRDDtuKYALufCr8yeOMFqZJjEeHbJ2adRijzWIUDYrXIJuZ"
}

resource "aws_instance" "ubuntu" {  
  ami = "ami-00ddb0e5626798373"
  instance_type = "t2.micro"
  key_name = "key1"
  vpc_security_group_ids = [
     "sg-1d3f8b24"
  ]

  tags = {
    Name = "Terraform Instance"
       }
}

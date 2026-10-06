data "aws_vpc" "main" {
  id = "vpc-0425909ee6d1b525e"
}

data "aws_subnet" "public_1" {
  id = "subnet-04a6a826c274ba561"
}

data "aws_subnet" "public_2" {
  id = "subnet-0c29aac6204f5400a"
}

data "aws_internet_gateway" "main" {
  internet_gateway_id = "igw-007349282de8d882c"
}

data "aws_route_table" "public" {
  route_table_id = "rtb-0cc20500760228da6"
}

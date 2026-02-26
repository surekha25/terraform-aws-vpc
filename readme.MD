# Terraform AWS VPC

This module creates the following resources.

* VPC
* IGW
* 2 Public subnets in us-east-1a and us-east-1b AZ
* 2 Private subnets in us-east-1a and us-east-1b AZ
* 2 Database subnets in us-east-1a and us-east-1b AZ
* Route Table for public, private and database
* 1 Elastic IP (EIP) for NAT Gateway
* NAT Gateway in public subnet 1a AZ
* IGW route is added to public route
* NAT Gateway route is added to private and database route tables
* Route Table associations with subnets
* VPC to default vpc peering
* public route table to default vpc route
* default VPC main route table to created VPC Route

### Inputs

* vpc_cidr - (Required). User must supply the CIDR for VPC
* project_name - (Required). User must provide project name
* environment - (Required)
* vpc_tags - (optional)
* is_peering_required - (optional). By default peering is "false". if you want to peer, you should mention "true"

### Outputs

* vpc_id
* igw
* public_subnet_ids
* private_subnet_ids
* database_subnet_ids
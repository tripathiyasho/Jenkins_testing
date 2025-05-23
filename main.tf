# Configure AWS Provider
provider "aws" {
  region = var.aws_region
}

# Create EC2 instance with minimal required configuration
resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id             # Required: The AMI ID to use
  instance_type = var.instance_type      # Required: The EC2 instance type

  # Optional: Place instance in a specific subnet
  # subnet_id = var.subnet_id

  # Optional: Attach one or more security groups
  # vpc_security_group_ids = var.security_group_ids

  # Optional: Associate a public IP address (usually used in public subnets)
  # associate_public_ip_address = var.associate_public_ip

  # Optional: Use a specific key pair to access instance via SSH
  # key_name = var.key_pair_name

  # Optional: Customize root block volume size/type
  # root_block_device {
  #   volume_size = var.root_volume_size
  #   volume_type = var.root_volume_type
  # }

  # Optional: Add tags like Name or Environment
  tags = var.instance_tags
}


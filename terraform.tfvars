

# Required variables
ami_id        = "ami-0123456789abcdef0"         # Replace with your desired AMI ID

# Optional but now active
instance_type    = "t2.micro"
aws_region       = "us-east-2"


instance_tags = {
  Name        = "my-ec2-instance"
  Environment = "production"
  Project     = "demo"
}

# Additional optional settings (still commented)
# subnet_id          = "subnet-0123456789abcdef0"  # Replace with your subnet ID
# security_group_ids = ["sg-0123456789abcdef0"]    # Replace with your security group ID(s)
# key_pair_name      = "your-key-pair-name"        # Replace with your key pair name
# associate_public_ip = true
# root_volume_type   = "gp2"


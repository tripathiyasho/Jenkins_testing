# Required variables
variable "aws_region" {
  description = "AWS region where the EC2 instance will be launched"
  type        = string
  
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# Optional variables (commented out for minimal setup)

# variable "subnet_id" {
#   description = "Subnet ID where the EC2 instance will be launched"
#   type        = string
# }

# variable "security_group_ids" {
#   description = "List of security group IDs"
#   type        = list(string)
# }

# variable "associate_public_ip" {
#   description = "Whether to associate a public IP address"
#   type        = bool
#   default     = true
# }

# variable "key_pair_name" {
#   description = "Name of the key pair for SSH access"
#   type        = string
# }

# variable "root_volume_size" {
#   description = "Size of the root volume in GB"
#   type        = number
#   default     = 8
# }

# variable "root_volume_type" {
#   description = "Type of the root volume"
#   type        = string
#   default     = "gp2"
# }

 variable "instance_tags" {
   description = "Tags to apply to the EC2 instance"
   type        = map(string)
   default     = {
     Name = "terraform-ec2-instance"
   }
 }


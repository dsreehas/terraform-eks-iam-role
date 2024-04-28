variable "aws_region" {
  description = "Specified AWS region"
  type        = string
  default     = null

}

variable "aws_profile" {
  description = "Specified AWS profile"
  type        = string
  default     = null
}

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = "instance-profile-role"
}

# variable "assume_role_policy" {
#   description = "Assume role policy document"
#   type        = string
#   default     = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Effect": "Allow",
#       "Principal": {
#         "Service": "ec2.amazonaws.com"
#       },
#       "Action": "sts:AssumeRole"
#     }
#   ]
# }
# EOF
# }
# Common Variables
variable "region" {
  description = "AWS region to deploy"
}

variable "environment" {
  description = "Specify the environment - dev/stg/prod"
}

variable "project" {

    description = "Name of the project"
  
}

variable "sns_arn" {
  description = "ARN of SNS to shoot the alert"
}

variable "rds_instance_identifier" {
  description = "Instance identifier of rds machine"
}
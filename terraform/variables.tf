
variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-north-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "vardhan-bucket-2398027"
}

variable "index_document" {
  description = "Index document for the static website"
  type        = string
  default     = "index.html"
}

variable "tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
  default     = {
    Project     = "StaticWebsiteDeployment"
    Environment = "Production"
  }
}

variable "codepipeline_role_name" {
  description = "Name of the IAM role for CodePipeline"
  default     = "codepipeline-role-for-s3-deployment-3"
}

variable "codepipeline_policy_name" {
  description = "Name of the IAM policy for CodePipeline"
  default     = "codepipeline-s3-access-policy-3"
}

variable "codebuild_role_name" {
  description = "Name of the IAM role for CodeBuild"
  default     = "codebuild-role-for-static-website-3"
}

variable "codebuild_policy_name" {
  description = "Name of the IAM policy for CodeBuild"
  default     = "codebuild-s3-access-policy-3"
}

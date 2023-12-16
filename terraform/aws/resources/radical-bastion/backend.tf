terraform {
  backend "s3" {                      # Define a remote bucket (AWS S3)
    bucket = "radical-sep-weekend-10am"       # Make sure the bucket is already created in your reqgion
    key    = "terraform.tfstate"    # Set the bucket key
    region = var.AWS_REGION            # Set the region where the bucket exists
  }
  
}
  
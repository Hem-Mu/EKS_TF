# terraform {
#   backend "s3" {
#     bucket         = "hemmu" # bucket name
#     key            = "terraform/terraform.tfstate"
#     region         = "ap-northeast-3"
#     dynamodb_table = "terraform-up-and-running-locks" # dynamoDB table name
#     encrypt        = true
#   }
# } # depends on S3

data "terraform_remote_state" "network" {
    backend = "local"
    config = {
        path = "C:/Users/김햄무/Desktop/terraform/Aws/@init_network/terraform.tfstate"
    }   
}

/* 
terraform init -backend-config="access_key=AKIA5TOVVFHINU67IIWT" -backend-config="secret_key=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"
*/
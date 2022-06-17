# terraform init -backend-config="access_key=AKIA5TOVVFHINU67IIWT" -backend-config="secret_key=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" -backend-config="region=ap-northeast-2" 
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = "ap-northeast-2"
}
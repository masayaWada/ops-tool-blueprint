# {ツール名} — Terraform メイン設定
#
# ガイド: ツールが使用するクラウドリソースの定義をここに記述してください。
#   モジュールが大きくなる場合は infra/modules/ 配下に分割してください。

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    # AWS の場合
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    # Azure の場合
    # azurerm = {
    #   source  = "hashicorp/azurerm"
    #   version = "~> 3.0"
    # }
  }

  # ガイド: リモートバックエンドを設定してください（S3 / Azure Blob 等）
  # backend "s3" {
  #   bucket = "{バケット名}"
  #   key    = "{ツール名}/terraform.tfstate"
  #   region = "ap-northeast-1"
  # }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project   = "{ツール名}"
      ManagedBy = "terraform"
    }
  }
}

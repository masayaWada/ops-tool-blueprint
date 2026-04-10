# 共通変数定義
#
# ガイド: 全環境で共通の変数をここに定義してください。
#   環境固有の値は environments/{env}/terraform.tfvars で設定します。

variable "aws_region" {
  description = "AWS リージョン"
  type        = string
  default     = "ap-northeast-1"
}

variable "environment" {
  description = "デプロイ環境（dev / stg / prod）"
  type        = string
}

variable "app_name" {
  description = "アプリケーション名"
  type        = string
  default     = "{ツール名}"
}

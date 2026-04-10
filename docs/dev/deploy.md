# デプロイ

<!-- ツール名: {ツール名} -->

## デプロイ環境

| 環境 | 用途 | URL |
|---|---|---|
| development | 開発・検証 | `https://dev.example.com` |
| staging | ステージング | `https://stg.example.com` |
| production | 本番 | `https://example.com` |

## デプロイ手順

### 1. 事前準備

```bash
# 最新のコードを取得
git checkout main
git pull origin main

# テストを実行
npm test

# ビルド
npm run build
```

### 2. ステージング環境へのデプロイ

```bash
# Terraform / IaC でインフラを更新（必要な場合）
cd infra/
terraform plan -var-file=staging.tfvars
terraform apply -var-file=staging.tfvars

# アプリケーションをデプロイ
npm run deploy:staging
```

### 3. 本番環境へのデプロイ

```bash
# リリースタグを作成
git tag -a v{X.Y.Z} -m "Release v{X.Y.Z}"
git push origin v{X.Y.Z}

# 本番デプロイ（CI/CD パイプラインが自動実行）
# または手動デプロイ:
npm run deploy:production
```

### 4. デプロイ後の確認

```bash
# ヘルスチェック
curl https://example.com/health

# ログの確認
{ログ確認コマンド}
```

## ロールバック手順

```bash
# 直前のバージョンに戻す
npm run deploy:rollback

# 特定のバージョンに戻す
npm run deploy:rollback -- --version v{X.Y.Z}
```

# デプロイ手順

<!-- ガイド: ビルドからデプロイ、ロールバックまでの手順をステップ形式で記載してください。環境ごとに手順が異なる場合はセクションを分けてください。 -->

## デプロイ環境一覧

| 環境 | 用途 | デプロイ先 | URL |
|---|---|---|---|
| development | 開発・動作検証 | {デプロイ先: 例 AWS dev アカウント} | `{URL: 例 https://dev.example.com}` |
| staging | リリース前検証 | {デプロイ先: 例 AWS stg アカウント} | `{URL: 例 https://stg.example.com}` |
| production | 本番 | {デプロイ先: 例 AWS prod アカウント} | `{URL: 例 https://example.com}` |

## 必要な権限

<!-- ガイド: デプロイを実行するために必要な IAM ロール / サービスプリンシパル / アクセス権限を明記してください。 -->

| 操作 | 必要な権限 |
|---|---|
| {操作: 例 ビルド・デプロイ} | {権限: 例 IAM ロール `deploy-role` の AssumeRole 権限} |
| {操作: 例 インフラ変更} | {権限: 例 Terraform 用 IAM ロール} |
| {操作: 例 シークレット参照} | {権限: 例 Secrets Manager の Read 権限} |

## ビルド

```bash
# 1. 依存関係のインストール
{インストールコマンド: 例 npm ci}

# 2. テスト実行
{テストコマンド: 例 npm test}

# 3. ビルド
{ビルドコマンド: 例 npm run build}
```

## デプロイ手順

### staging 環境

```bash
# 1. staging ブランチにマージ / プッシュ
{手順}

# 2. インフラ変更がある場合
{IaC コマンド: 例 terraform plan -var-file=staging.tfvars}
{IaC コマンド: 例 terraform apply -var-file=staging.tfvars}

# 3. アプリケーションデプロイ
{デプロイコマンド: 例 npm run deploy:staging}

# 4. 動作確認
{確認コマンド: 例 curl https://stg.example.com/health}
```

### production 環境

<!-- ガイド: 本番デプロイは CI/CD で自動化されている場合はそのトリガー条件を記載してください。手動の場合はコマンドを記載してください。 -->

```bash
# 1. リリースタグを作成
git tag -a v{X.Y.Z} -m "Release v{X.Y.Z}"
git push origin v{X.Y.Z}

# 2. デプロイ実行（CI/CD 自動 or 手動）
{デプロイコマンド}

# 3. デプロイ後の確認
{確認コマンド: 例 curl https://example.com/health}
{ログ確認コマンド}
```

## ロールバック手順

<!-- ガイド: デプロイ後に問題が発生した場合のロールバック手順を必ず記載してください。 -->

```bash
# 直前のバージョンに戻す
{ロールバックコマンド}

# 特定のバージョンに戻す
{ロールバックコマンド: 例 npm run deploy:rollback -- --version v{X.Y.Z}}
```

**ロールバック時の注意点**:

- {注意点1: 例 DB マイグレーションを伴うリリースでは手動でのロールバックが必要}
- {注意点2}

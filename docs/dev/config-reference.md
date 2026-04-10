# 設定リファレンス

<!-- ツール名: {ツール名} -->

## 設定ファイル（config.yaml）

```yaml
# アプリケーション設定
app:
  name: "{ツール名}"
  port: 3000
  log_level: "info"  # debug | info | warn | error

# データベース設定
database:
  host: "localhost"
  port: 5432
  name: "{db_name}"
  pool_size: 10

# 外部サービス設定
external:
  api_url: "https://api.example.com"
  timeout: 30  # 秒
```

## 環境変数

| 変数名 | 型 | デフォルト値 | 必須 | 説明 |
|---|---|---|---|---|
| `APP_PORT` | number | `3000` | No | アプリケーションのポート番号 |
| `DATABASE_URL` | string | - | Yes | データベース接続URL |
| `API_KEY` | string | - | Yes | 外部API認証キー |
| `LOG_LEVEL` | string | `info` | No | ログ出力レベル |
| `NODE_ENV` | string | `development` | No | 実行環境 |

## 秘密情報

以下の値はシークレットとして管理し、ソースコードにハードコードしないでください。

| 変数名 | 管理場所 | 説明 |
|---|---|---|
| `DATABASE_URL` | AWS Secrets Manager / Azure Key Vault | DB接続文字列 |
| `API_KEY` | AWS Secrets Manager / Azure Key Vault | 外部API認証キー |

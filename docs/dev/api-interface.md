# API / インターフェース

<!-- ツール名: {ツール名} -->

## CLI コマンド

```bash
# 基本構文
{tool-name} <command> [options]

# コマンド一覧
{tool-name} init          # 初期化
{tool-name} run           # 実行
{tool-name} status        # 状態確認
{tool-name} config        # 設定表示
{tool-name} version       # バージョン表示
```

| コマンド | 説明 | オプション |
|---|---|---|
| `init` | プロジェクトの初期化 | `--template <name>` |
| `run` | メイン処理の実行 | `--env <env>`, `--dry-run` |
| `status` | 現在の状態を表示 | `--json` |

## Web API エンドポイント

### `GET /api/v1/{resource}`

**説明**: {リソース}の一覧を取得

**リクエスト**:

```
GET /api/v1/{resource}?page=1&limit=20
Authorization: Bearer {token}
```

**レスポンス**:

```json
{
  "data": [],
  "total": 0,
  "page": 1,
  "limit": 20
}
```

### `POST /api/v1/{resource}`

**説明**: {リソース}を作成

**リクエスト**:

```json
{
  "name": "string",
  "description": "string"
}
```

**レスポンス**:

```json
{
  "id": "string",
  "name": "string",
  "description": "string",
  "created_at": "2024-01-01T00:00:00Z"
}
```

## React コンポーネント API

```tsx
interface {ComponentName}Props {
  /** {プロパティの説明} */
  prop1: string;
  /** {プロパティの説明} */
  prop2?: number;
  /** {コールバックの説明} */
  onChange?: (value: string) => void;
}
```

## 外部連携

| 連携先 | 方式 | 説明 |
|---|---|---|
| {サービス名} | REST API | {連携内容} |
| {サービス名} | Webhook | {連携内容} |

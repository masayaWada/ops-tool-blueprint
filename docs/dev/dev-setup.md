# 開発環境セットアップ

<!-- ツール名: {ツール名} -->

## 前提条件

- {言語/ランタイム} {バージョン}
- Docker / Docker Compose
- {その他必要なツール}

## セットアップ手順

### 1. リポジトリをクローン

```bash
git clone https://github.com/{org}/{repo}.git
cd {repo}
```

### 2. 依存関係のインストール

```bash
npm install
```

### 3. ローカル環境の起動

```bash
# Docker で依存サービスを起動（DB、キャッシュなど）
docker compose up -d

# 環境変数を設定
cp .env.example .env
# .env を編集

# アプリケーションを起動
npm run dev
```

### 4. 動作確認

```bash
# ヘルスチェック
curl http://localhost:3000/health

# テストを実行
npm test
```

## 開発用コマンド

| コマンド | 説明 |
|---|---|
| `npm run dev` | 開発サーバーを起動（ホットリロード） |
| `npm test` | テストを実行 |
| `npm run lint` | リンターを実行 |
| `npm run build` | プロダクションビルド |
| `npm run format` | コードフォーマット |

## ブランチ戦略

- `main`: 本番リリース用
- `develop`: 開発統合ブランチ
- `feature/*`: 機能開発
- `fix/*`: バグ修正
- `hotfix/*`: 緊急修正

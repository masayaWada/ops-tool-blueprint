# {ツール名}

<!-- ツール名: 実際のツール名に置き換えてください -->

{ツールの概要を1〜2文で記載}

## クイックスタート

### 前提条件

- {前提条件1: 例 AWS CLI v2 以上}
- {前提条件2: 例 Node.js 18 以上}
- {前提条件3: 例 Terraform 1.5 以上}

### インストール

```bash
# 1. リポジトリをクローン
git clone https://github.com/{org}/{repo}.git
cd {repo}

# 2. 依存関係をインストール
npm install

# 3. 環境変数を設定
cp .env.example .env
# .env を編集して必要な値を設定

# 4. 起動
npm run start

# 5. 動作確認
curl http://localhost:3000/health
```

### 設定

主な設定は `config.yaml` または環境変数で行います。詳細は [設定リファレンス](docs/dev/config-reference.md) を参照してください。

## ドキュメント

| ドキュメント | 説明 |
|---|---|
| [利用ガイド](docs/usage-guide.md) | 基本的な使い方と応用例 |
| [トラブルシューティング](docs/troubleshooting.md) | よくある問題と解決方法 |
| [アーキテクチャ](docs/dev/architecture.md) | システム構成と設計 |
| [技術スタック](docs/dev/tech-stack.md) | 使用技術の一覧 |
| [設定リファレンス](docs/dev/config-reference.md) | 設定項目の詳細 |
| [API / インターフェース](docs/dev/api-interface.md) | CLI・API・UIの仕様 |
| [デプロイ](docs/dev/deploy.md) | デプロイ手順 |
| [開発環境セットアップ](docs/dev/dev-setup.md) | 開発環境の構築方法 |
| [ADR](docs/dev/adr/) | アーキテクチャ決定記録 |

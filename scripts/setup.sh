#!/usr/bin/env bash
#
# 開発環境セットアップスクリプト
#
# ガイド: `docs/dev/dev-setup.md` に記載した手順を自動化するスクリプトです。
#   必要に応じてコマンドを追加・変更してください。

set -euo pipefail

echo "=== 依存関係のインストール ==="
npm install

echo "=== 環境変数ファイルの作成 ==="
if [ ! -f .env ]; then
  cp .env.example .env
  echo ".env を作成しました。必要な値を設定してください。"
else
  echo ".env は既に存在します。スキップします。"
fi

echo "=== ローカルサービスの起動 ==="
# docker compose up -d

echo "=== セットアップ完了 ==="
echo "次のコマンドで開発サーバーを起動してください: npm run dev"

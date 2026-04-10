# ガイド: コンテナ化が必要な場合に使用してください。不要なら削除して構いません。

# --- ビルドステージ ---
FROM node:18-alpine AS builder

WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY tsconfig.json ./
COPY src/ ./src/
RUN npm run build

# --- 実行ステージ ---
FROM node:18-alpine

WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY --from=builder /app/dist ./dist
COPY config/ ./config/

USER node
EXPOSE 3000
CMD ["node", "dist/index.js"]

# アーキテクチャ

<!-- ツール名: {ツール名} -->

## システム構成図

```mermaid
graph TB
    User[ユーザー] --> CLI[CLI / Web UI]
    CLI --> API[API サーバー]
    API --> DB[(データベース)]
    API --> Queue[メッセージキュー]
    Queue --> Worker[ワーカー]
    Worker --> Cloud[クラウドサービス]
```

## インフラ構成（AWS / Azure）

```mermaid
graph TB
    subgraph VPC
        subgraph Public Subnet
            ALB[Application Load Balancer]
        end
        subgraph Private Subnet
            ECS[ECS / App Service]
            RDS[(RDS / Azure SQL)]
            ElastiCache[ElastiCache / Azure Cache]
        end
    end
    Route53[Route 53 / Azure DNS] --> ALB
    ALB --> ECS
    ECS --> RDS
    ECS --> ElastiCache
    ECS --> S3[S3 / Blob Storage]
```

## コンポーネント説明

| コンポーネント | 役割 | 技術 |
|---|---|---|
| {コンポーネント1} | {役割の説明} | {使用技術} |
| {コンポーネント2} | {役割の説明} | {使用技術} |
| {コンポーネント3} | {役割の説明} | {使用技術} |
| {コンポーネント4} | {役割の説明} | {使用技術} |

## データフロー

```mermaid
sequenceDiagram
    participant U as ユーザー
    participant A as API
    participant D as DB
    participant W as ワーカー

    U->>A: リクエスト送信
    A->>D: データ取得/保存
    D-->>A: 結果返却
    A->>W: 非同期タスク発行
    A-->>U: レスポンス返却
    W->>D: 処理結果を保存
```

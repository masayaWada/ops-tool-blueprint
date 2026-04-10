# アーキテクチャ

<!-- ガイド: このドキュメントではツール全体の構成図・処理フロー・コンポーネント間の依存関係を記載します。図は Mermaid 記法で記述し、GitHub 上でそのままレンダリングされるようにしてください。 -->

## 全体構成図

<!-- ガイド: ツールを構成する主要コンポーネントとその関係を Mermaid の graph で描いてください。外部サービスやユーザーとの境界が分かるようにすると読みやすくなります。 -->

```mermaid
graph TB
    subgraph ユーザー
        User["{利用者の種別}"]
    end

    subgraph "{ツール名}"
        A["{コンポーネント1: 例 CLI / Web UI}"]
        B["{コンポーネント2: 例 API サーバー}"]
        C["{コンポーネント3: 例 ワーカー}"]
    end

    subgraph 外部サービス
        D[("{データストア: 例 RDS / DynamoDB}")]
        E["{クラウドサービス: 例 S3 / Lambda}"]
    end

    User --> A
    A --> B
    B --> C
    B --> D
    C --> E
```

## 処理フロー

<!-- ガイド: 代表的なユースケースにおけるデータの流れを sequence diagram で描いてください。複数のフローがある場合はユースケースごとにサブセクションを分けてください。 -->

```mermaid
sequenceDiagram
    participant U as {利用者}
    participant A as {コンポーネント1}
    participant B as {コンポーネント2}
    participant C as {外部サービス}

    U->>A: {操作内容}
    A->>B: {リクエスト内容}
    B->>C: {外部呼び出し内容}
    C-->>B: {レスポンス内容}
    B-->>A: {処理結果}
    A-->>U: {出力内容}
```

## AWS / Azure サービス構成

<!-- ガイド: 使用しているクラウドサービスとネットワーク構成を記載してください。VPC / サブネット / セキュリティグループなどの境界が分かると、インフラ担当者が構成を把握しやすくなります。 -->

```mermaid
graph TB
    subgraph "{クラウド環境: 例 AWS ap-northeast-1}"
        subgraph VPC
            subgraph Public Subnet
                ALB["{ロードバランサー: 例 ALB}"]
            end
            subgraph Private Subnet
                App["{コンピューティング: 例 ECS / Lambda}"]
                DB[("{データベース: 例 RDS / Aurora}")]
                Cache["{キャッシュ: 例 ElastiCache}"]
            end
        end
        S3["{ストレージ: 例 S3}"]
    end

    DNS["{DNS: 例 Route 53}"] --> ALB
    ALB --> App
    App --> DB
    App --> Cache
    App --> S3
```

## コンポーネント一覧と依存関係

<!-- ガイド: 各コンポーネントの役割と、どのコンポーネントに依存しているかを表で整理してください。 -->

| コンポーネント | 役割 | 依存先 | 技術 |
|---|---|---|---|
| {コンポーネント1} | {役割の説明} | {依存するコンポーネント名} | {使用技術} |
| {コンポーネント2} | {役割の説明} | {依存するコンポーネント名} | {使用技術} |
| {コンポーネント3} | {役割の説明} | {依存するコンポーネント名} | {使用技術} |

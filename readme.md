# 🏦 Banking Simulation

Ledger Chart a helm manifests of `ledger-service`, you can have a look to other charts.

All charts (`public-gateway-chart`,`public-user-chart`, `public-auth-chart`,`public-notification-chart` and `public-wallet-chart`). For this specific repository, you will need **Istio**, **PostgreSQL**, **Apache Kafka**, **OpenTelemetry Collector**, and **Vault**.

## 📦 GHCR Image
🐳 [ghcr.io/anotherdanger/ledger-service:latest](https://github.com/anotherDanger/ledger-service/pkgs/container/ledger-service)

## ⚙️ Prerequisites & Setup

Ensure that **PostgreSQL** and **Kafka** are already **running** to pass the readiness probes. For credentials and secrets management, you can inject them securely using **HashiCorp Vault**.

You can use **Kafka** topic auto-creation with:
```properties
wallet.wallet-service.wallet-created.v1
user.user-service.user-created.v1
user.user-service.resend-verification-token.v1
```
For the **PostgreSQL** schema, you can use `initdbscripts`.

To deploy these dependencies, you can leverage the official third-party Helm charts available via **Artifact Hub**.

## ☸️ Connected Charts
* 🗺️ [**Gateway Chart**] (https://github.com/anotherDanger/public-auth-chart.git)
* 🔑 [**Auth Chart**] (https://github.com/anotherDanger/public-auth-chart.git)
* 🔔 [**Notification Chart**] (https://github.com/anotherDanger/public-notification-chart.git)
* 👤 [**User Chart**](https://github.com/anotherDanger/public-user-chart.git)
* 💳 [**Wallet Chart**] (https://github.com/anotherDanger/public-wallet-chart.git)
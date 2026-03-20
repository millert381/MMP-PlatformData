# MMP Platform Data Layer

This repository contains the standardized PostgreSQL-based data platform used for internal platform initiatives.

## Overview

This data platform provides:

- PostgreSQL (core relational engine)
- TimescaleDB (time-series capabilities)
- pgvector (AI / embedding / RAG support)

It is designed to serve as the **shared data backbone** for platform services, analytics, and future AI capabilities.

> Note: Some internal projects may refer to this platform using codenames (e.g., "P42"). These are not formal product names.

---

## Features

- Fully containerized (Docker)
- One-command startup
- Automatic bootstrap:
  - Extensions
  - Schemas
  - Roles
  - Baseline structures
- Ready for:
  - EF Core (Npgsql)
  - Dapper
  - Serilog sinks
  - AI pipelines (pgvector)
  - Time-series workloads (TimescaleDB)

---

## Quick Start

```bash
git clone <repo>
cd docker
docker-compose up --build
# Story Time - Kids Story Generator

A production-grade web application for generating customized children's stories with illustrations, PDF export, and payments.

## Features

- **Character Creation**: Create characters with names, avatars, and traits
- **Story Generation**: Generate age-appropriate stories with custom objects, values, and genres
- **AI Illustrations**: Generate consistent cartoon-style illustrations for each story page
- **PDF Export**: Export stories as printable PDFs
- **Bookshelves**: Organize and save your favorite stories
- **Subscription Plans**: Free and paid tiers with different limits and features

## Architecture

This is a microservices-based application built with:

- **Frontend**: Next.js web application
- **Backend Services**: Go-based microservices for APIs
- **AI Workers**: Python workers for text and image generation
- **Infrastructure**: AWS (RDS, S3, CloudFront, SQS, ElastiCache)
- **Payments**: Stripe integration
- **AI Provider**: OpenAI API

## Project Structure

```
/apps
  /web               (Next.js frontend)
  /auth-service      (Go authentication service)
  /billing-service   (Go billing & Stripe integration)
  /catalog-service   (Go catalog management)
  /character-service (Go character management)
  /story-service     (Go story orchestration)
  /text-worker       (Python text generation worker)
  /image-worker      (Python image generation worker)
  /pdf-service       (Node.js PDF generation)
  /notify-service    (Node.js notifications)
/packages
  /proto             (API schemas)
  /sdk-js            (TypeScript client SDK)
  /sdk-go            (Go internal clients)
/infra
  /terraform         (Infrastructure as Code)
  /docker            (Docker configurations)
/tests
  /e2e               (End-to-end tests)
```

## Getting Started

### Prerequisites

- Node.js 18+
- Go 1.21+
- Python 3.11+
- Docker & Docker Compose
- OpenAI API key

### Development Setup

1. Clone the repository
2. Copy `.env.example` to `.env` and configure your environment variables
3. Run `docker-compose up` to start local services (MySQL, Redis, etc.)
4. Start individual services for development

## Environment Variables

Create a `.env` file with:

```bash
# Database
DB_URL=mysql://user:password@localhost:3306/storytime

# Redis
REDIS_URL=redis://localhost:6379

# OpenAI
OPENAI_API_KEY=your_openai_api_key

# Stripe
STRIPE_SECRET_KEY=your_stripe_secret_key
STRIPE_PUBLISHABLE_KEY=your_stripe_publishable_key

# JWT
JWT_SECRET=your_jwt_secret

# AWS (for production)
AWS_REGION=us-east-1
S3_BUCKET=your_s3_bucket
```

## License

Private - All rights reserved

# Environment Setup Instructions

## Required Environment Variables

Create a `.env` file in the root directory (`/Users/mac/nodegaze/`) with the following variables:

```bash
# Database Configuration
DATABASE_URL=sqlite:nodegaze.db
DB_MAX_CONNECTIONS=5
DB_ACQUIRE_TIMEOUT_SECONDS=3

# JWT Configuration
JWT_SECRET=your-super-secret-jwt-key-change-this-in-production
JWT_EXPIRES_IN_SECONDS=86400

# Server Configuration
SERVER_PORT=3000
BASE_URL=http://localhost:3000

# Email Configuration (Optional)
# SMTP_HOST=smtp.gmail.com
# SMTP_PORT=587
# SMTP_USERNAME=your-email@gmail.com
# SMTP_PASSWORD=your-app-password
# FROM_EMAIL=your-email@gmail.com
# FROM_NAME=NodeGaze
```

## Frontend Environment Variables

Create a `.env.local` file in the frontend directory (`/Users/mac/nodegaze/frontend/`) with:

```bash
# Backend URL - should match the backend SERVER_PORT
BACKEND_URL=http://localhost:3000
NEXTAUTH_URL=http://localhost:3001
NEXTAUTH_SECRET=your-nextauth-secret-key-change-this-in-production
```

## Port Configuration

- **Backend**: Runs on port 3000 (configurable via SERVER_PORT)
- **Frontend**: Runs on port 3001 (Next.js default)
- **Database**: SQLite file at `nodegaze.db`

## Quick Setup

1. Copy the environment variables above into `.env` and `.env.local` files
2. Run `cargo build` in the backend directory to compile
3. Run `npm install` in the frontend directory to install dependencies
4. Start the backend: `cargo run` (from backend directory)
5. Start the frontend: `npm run dev` (from frontend directory)

## Security Notes

- Change the JWT_SECRET and NEXTAUTH_SECRET to secure random strings in production
- The JWT_SECRET should be at least 32 characters long
- Never commit the `.env` files to version control


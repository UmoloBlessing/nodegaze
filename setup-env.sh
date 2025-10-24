#!/bin/bash

# NodeGaze Environment Setup Script
# This script helps you set up the required environment variables

echo "Setting up NodeGaze environment variables..."

# Create .env file for backend
cat > .env << 'EOF'
# Database Configuration
DATABASE_URL=sqlite:nodegaze.db
DB_MAX_CONNECTIONS=5
DB_ACQUIRE_TIMEOUT_SECONDS=3

# JWT Configuration
JWT_SECRET=your-super-secret-jwt-key-change-this-in-production-$(openssl rand -hex 16)
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
EOF

# Create .env.local file for frontend
cat > frontend/.env.local << 'EOF'
# Backend URL - should match the backend SERVER_PORT
BACKEND_URL=http://localhost:3000
NEXTAUTH_URL=http://localhost:3001
NEXTAUTH_SECRET=your-nextauth-secret-key-change-this-in-production
EOF

echo "✅ Environment files created successfully!"
echo ""
echo "📝 Next steps:"
echo "1. Review and update the generated .env and frontend/.env.local files"
echo "2. Change the JWT_SECRET and NEXTAUTH_SECRET to secure random strings"
echo "3. Run 'cargo build' in the backend directory to compile"
echo "4. Run 'npm install' in the frontend directory to install dependencies"
echo "5. Start the backend: 'cargo run' (from backend directory)"
echo "6. Start the frontend: 'npm run dev' (from frontend directory)"
echo ""
echo "🔒 Security Note: Never commit .env files to version control!"


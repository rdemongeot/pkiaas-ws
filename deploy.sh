#!/bin/bash

# PKIaaS Commercial Website Deployment Script
# Deploys to web-01.rdem-systems.com:/var/www/rdem-systems/pkiaas/

set -e

# Configuration
LOCAL_PATH="/home/rdem/git/pkiaas-ws/"
REMOTE_HOST="rdem@web-01.rdem-systems.com"
REMOTE_PATH="/var/www/rdem-systems/pkiaas/"

echo "🚀 PKIaaS Commercial Website Deployment"
echo "========================================"
echo ""
echo "📂 Source: $LOCAL_PATH"
echo "🌐 Target: $REMOTE_HOST:$REMOTE_PATH"
echo ""

# Confirm deployment
read -p "Deploy to production? (yes/no): " CONFIRM
if [ "$CONFIRM" != "yes" ]; then
    echo "❌ Deployment cancelled."
    exit 0
fi

echo ""
echo "🔄 Starting deployment..."

# Rsync files to production
rsync -avz --delete \
    --exclude='.git' \
    --exclude='.gitignore' \
    --exclude='deploy.sh' \
    --exclude='CLAUDE.md' \
    "$LOCAL_PATH" "$REMOTE_HOST:$REMOTE_PATH"

echo ""
echo "✅ Deployment completed successfully!"
echo "🌍 Website available at: https://pkiaas.rdem-systems.com"

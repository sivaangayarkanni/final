#!/bin/bash

# Mini CRM Deployment Script for Render
echo "🚀 Preparing Mini CRM for Render deployment..."

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Git not initialized. Please run 'git init' first."
    exit 1
fi

# Add all changes
echo "📦 Adding changes to git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Deploy: Optimize for Render deployment"

# Push to GitHub
echo "🔄 Pushing to GitHub..."
git push origin master

echo "✅ Code pushed to GitHub!"
echo ""
echo "🌐 Next steps:"
echo "1. Go to https://render.com"
echo "2. Sign in with GitHub"
echo "3. Click 'New' → 'Blueprint'"
echo "4. Connect repository: https://github.com/sivaangayarkanni/final"
echo "5. Render will auto-deploy both services"
echo ""
echo "📍 Your services will be available at:"
echo "   Backend:  https://final-backend-07ab.onrender.com"
echo "   Frontend: https://final-frontend-xxxx.onrender.com"
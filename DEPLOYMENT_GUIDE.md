# Render Deployment Guide for Mini CRM

## Prerequisites
- GitHub repository with your Mini CRM code
- MongoDB Atlas account (free tier available)
- Render account (free tier available)

## Step 1: Prepare MongoDB Atlas

1. **Create MongoDB Atlas Account**
   - Go to [MongoDB Atlas](https://www.mongodb.com/atlas)
   - Create a free account and cluster

2. **Get Connection String**
   - In Atlas dashboard, click "Connect"
   - Choose "Connect your application"
   - Copy the connection string (replace `<password>` with your actual password)
   - Example: `mongodb+srv://username:password@cluster0.xxxxx.mongodb.net/minicrm?retryWrites=true&w=majority`

3. **Configure Network Access**
   - Go to "Network Access" in Atlas
   - Add IP address `0.0.0.0/0` (allow access from anywhere)

## Step 2: Deploy Backend to Render

1. **Create Web Service**
   - Go to [Render Dashboard](https://dashboard.render.com)
   - Click "New" → "Web Service"
   - Connect your GitHub repository

2. **Configure Backend Service**
   - **Name**: `mini-crm-backend`
   - **Runtime**: `Node`
   - **Build Command**: `cd backend && npm install`
   - **Start Command**: `cd backend && npm start`
   - **Plan**: `Free`

3. **Set Environment Variables**
   ```
   NODE_ENV=production
   PORT=10000
   MONGODB_URI=your_mongodb_atlas_connection_string
   JWT_SECRET=your_super_secret_jwt_key_here_make_it_strong_and_unique_for_production
   ```

4. **Deploy**
   - Click "Create Web Service"
   - Wait for deployment to complete
   - Note your backend URL: `https://mini-crm-backend.onrender.com`

## Step 3: Deploy Frontend to Render

1. **Create Static Site**
   - In Render dashboard, click "New" → "Static Site"
   - Connect the same GitHub repository

2. **Configure Frontend Service**
   - **Name**: `mini-crm-frontend`
   - **Build Command**: `cd frontend && npm install && npm run build`
   - **Publish Directory**: `frontend/build`

3. **Set Environment Variables**
   ```
   REACT_APP_API_URL=https://mini-crm-backend.onrender.com
   ```
   (Replace with your actual backend URL from Step 2)

4. **Deploy**
   - Click "Create Static Site"
   - Wait for deployment to complete
   - Your frontend will be available at: `https://mini-crm-frontend.onrender.com`

## Step 4: Update CORS Settings (if needed)

If you encounter CORS issues, update your backend `server.js`:

```javascript
// Update CORS configuration
app.use(cors({
  origin: ['https://mini-crm-frontend.onrender.com', 'http://localhost:3000'],
  credentials: true
}));
```

## Step 5: Test Your Deployment

1. **Visit your frontend URL**
2. **Test registration/login**
3. **Verify all features work**
4. **Check browser console for any errors**

## Important Notes

### Free Tier Limitations
- **Backend**: May sleep after 15 minutes of inactivity (takes ~30 seconds to wake up)
- **Frontend**: No sleep limitations
- **Database**: MongoDB Atlas free tier has 512MB storage limit

### Production Considerations
- Remove hardcoded tokens from AuthContext.jsx
- Implement proper error handling
- Add logging for production debugging
- Consider upgrading to paid plans for better performance

### Environment Variables Security
- Never commit `.env` files to GitHub
- Use Render's environment variable settings
- Generate strong JWT secrets for production

### Monitoring
- Check Render logs for any deployment issues
- Monitor MongoDB Atlas for connection issues
- Set up alerts for service downtime

## Troubleshooting

### Common Issues
1. **Build Failures**: Check build logs in Render dashboard
2. **Database Connection**: Verify MongoDB Atlas connection string and network access
3. **CORS Errors**: Update CORS settings in backend
4. **Environment Variables**: Ensure all required variables are set correctly

### Support
- Render Documentation: https://render.com/docs
- MongoDB Atlas Documentation: https://docs.atlas.mongodb.com/
- Check service logs in respective dashboards

## URLs After Deployment
- **Frontend**: `https://mini-crm-frontend.onrender.com`
- **Backend API**: `https://mini-crm-backend.onrender.com`
- **Health Check**: `https://mini-crm-backend.onrender.com/api/health`

Your Mini CRM is now live and accessible worldwide! 🚀
# Troubleshooting Guide

## Dashboard Quick Actions Errors

### Issue: "Error adding lead", "Error adding contact", "Error adding schedule"

**Common Causes:**
1. **Backend not running** - Make sure backend server is running on port 5000
2. **Database connection** - Verify MongoDB is connected
3. **Authentication issues** - Check if user is properly logged in
4. **CORS issues** - Verify CORS is configured correctly

### Quick Fixes:

#### 1. Check Backend Status
```bash
cd backend
npm run dev
```
Look for: `Server running on port 5000` and `MongoDB Atlas connected successfully`

#### 2. Check Database Connection
- Open MongoDB Compass
- Verify connection to your database
- Check if `minicrm` database exists with collections: `users`, `contacts`, `leads`, `tasks`

#### 3. Check Browser Console
- Open Developer Tools (F12)
- Look for error messages in Console tab
- Check Network tab for failed API requests

#### 4. Test API Endpoints Manually
```bash
# Test health endpoint
curl http://localhost:5000/api/health

# Test with authentication (replace TOKEN with actual token)
curl -H "Authorization: Bearer TOKEN" http://localhost:5000/api/contacts
```

#### 5. Reset Authentication
- Clear browser localStorage
- Log out and log back in
- Check if token is valid

### Environment Variables Check

**Backend (.env file):**
```env
PORT=5000
MONGODB_URI=mongodb://localhost:27017/minicrm
JWT_SECRET=your_secret_key
NODE_ENV=development
```

**Frontend (.env file):**
```env
REACT_APP_API_URL=http://localhost:5000
```

### Common Error Messages:

#### "Network Error" or "ERR_CONNECTION_REFUSED"
- Backend server is not running
- Wrong API URL in frontend
- Firewall blocking connection

#### "401 Unauthorized"
- Invalid or expired JWT token
- User not logged in
- Token not included in request headers

#### "400 Bad Request"
- Missing required fields
- Invalid data format
- Validation errors

#### "500 Internal Server Error"
- Database connection issues
- Server-side code errors
- Check backend console logs

### Step-by-Step Debug Process:

1. **Check Backend Logs**
   ```bash
   cd backend
   npm run dev
   ```
   Look for any error messages when making requests

2. **Check Frontend Network Requests**
   - Open DevTools → Network tab
   - Try adding a lead/contact
   - Check if request is sent and what response is received

3. **Verify Database**
   - Open MongoDB Compass
   - Check if data is being saved
   - Verify collection structure

4. **Test Authentication**
   - Try logging out and back in
   - Check if user data loads on dashboard

### Production Deployment Issues:

#### Render Deployment
- Check environment variables are set correctly
- Verify MongoDB Atlas connection string
- Check build logs for errors
- Ensure CORS allows your frontend domain

#### CORS Configuration
Update backend `server.js`:
```javascript
app.use(cors({
  origin: ['http://localhost:3000', 'https://your-frontend-url.onrender.com'],
  credentials: true
}));
```

### Still Having Issues?

1. **Check logs** in both frontend (browser console) and backend (terminal)
2. **Verify all dependencies** are installed (`npm install`)
3. **Clear cache** and restart both servers
4. **Check MongoDB** connection and data
5. **Test with Postman** or curl to isolate frontend vs backend issues

### Contact Support
If issues persist, provide:
- Error messages from browser console
- Backend server logs
- Steps to reproduce the issue
- Environment details (OS, Node version, etc.)
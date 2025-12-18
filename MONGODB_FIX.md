# MongoDB Connection Fix for Render Deployment

## Issue
Authentication failed error during deployment.

## Solution Options

### Option 1: Fix Current User
In Render environment variables, use:
```
MONGODB_URI=mongodb+srv://siva21baba_db_user:loveangai123@mini-crm.vs8hoe0.mongodb.net/minicrm?retryWrites=true&w=majority&authSource=admin
```

### Option 2: Create New User (Recommended)
1. Go to MongoDB Atlas → Database Access
2. Add New Database User:
   - Username: `render_user`
   - Password: [generate strong password]
   - Privileges: Read and write to any database
3. Update MONGODB_URI in Render:
```
MONGODB_URI=mongodb+srv://render_user:[new_password]@mini-crm.vs8hoe0.mongodb.net/minicrm?retryWrites=true&w=majority
```

## Network Access
Ensure MongoDB Atlas allows connections from anywhere (0.0.0.0/0) for Render deployment.

## Current Backend URL
https://final-backend-07ab.onrender.com
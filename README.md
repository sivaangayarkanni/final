# Mini CRM - Professional Customer Relationship Management System

A full-stack MERN application designed specifically for Indian businesses to manage customer relationships, track leads, and analyze sales performance.

## 🚀 Features

### Core Features
- **User Authentication & Authorization** - JWT-based secure login with role-based access (User/Admin)
- **Contact Management** - Comprehensive contact database with search and filtering
- **Lead Tracking** - Complete sales pipeline management with probability tracking
- **Task Management** - Full-featured task and follow-up system with reminders
- **Quick Actions** - One-click access to add leads, contacts, and schedule follow-ups
- **Analytics Dashboard** - Real-time insights with interactive charts and metrics
- **Today's Overview** - Quick stats widget showing daily metrics and trends
- **Theme Toggle** - Professional dark/light mode switching
- **Responsive Design** - Mobile-first approach with professional UI/UX

### Business Features
- **Indian Business Ready** - Currency in INR, Indian locations, local business practices
- **Role-Based Access Control** - Different permissions for users and administrators
- **Professional Design** - Clean, modern interface with professional icons and imagery
- **Real-time Analytics** - Sales performance tracking with conversion rates
- **Secure Data Management** - Enterprise-grade security with encrypted passwords
- **Productivity Tools** - Task management, reminders, and follow-up scheduling
- **Quick Lead Capture** - Instant lead and contact creation from dashboard
- **Smart Reminders** - Priority-based reminder system with visual indicators

## 🛠️ Technology Stack

### Frontend
- **React 18** with TypeScript
- **React Router DOM** for navigation
- **Axios** for API communication
- **Recharts** for data visualization
- **Lucide React** for professional icons
- **CSS3** with custom variables and responsive design

### Backend
- **Node.js** with Express.js
- **MongoDB** with Mongoose ODM
- **JWT** for authentication
- **bcryptjs** for password hashing
- **CORS** for cross-origin requests

## 📦 Installation & Setup

### Prerequisites
- Node.js (v16 or higher)
- MongoDB (local or cloud instance)
- Git

### Backend Setup

1. **Navigate to backend directory**
   ```bash
   cd backend
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Environment Configuration**
   Create a `.env` file in the backend directory:
   ```env
   PORT=5000
   MONGODB_URI=mongodb://localhost:27017/minicrm
   JWT_SECRET=your_super_secret_jwt_key_here_make_it_strong_and_unique
   NODE_ENV=development
   ```

4. **Start MongoDB**
   Make sure MongoDB is running on your system

5. **Start the backend server**
   ```bash
   npm run dev
   ```
   The backend will run on `http://localhost:5000`

### Frontend Setup

1. **Navigate to frontend directory**
   ```bash
   cd frontend
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Start the development server**
   ```bash
   npm start
   ```
   The frontend will run on `http://localhost:3000`

## 🎯 User Registration

Create your account to get started:

### Account Types
- **User Account**: Personal contacts/leads management, analytics
- **Admin Account**: Full system access, user management, team analytics

### Getting Started
1. Visit the registration page
2. Choose your account type (User or Admin)
3. Complete the registration form
4. Start managing your business relationships

## 🎨 Design System

### Color Palette
- **Primary**: #007E6E (Teal)
- **Secondary**: #73AF6F (Green)
- **Accent**: #E7DEAF (Light Green)
- **Light**: #D7C097 (Beige)
- **Supporting**: Standard success, warning, danger colors

### Typography
- **Font Family**: Segoe UI, Tahoma, Geneva, Verdana, sans-serif
- **Responsive scaling** with mobile-first approach

## 📱 Pages & Features

### Public Pages
- **Landing Page** - Professional homepage with features showcase
- **Login** - Secure authentication for registered users
- **Register** - User registration with role selection

### Protected Pages (User)
- **Dashboard** - Overview with stats, quick actions, recent activity, and today's metrics
- **Contacts** - Full CRUD operations for contact management
- **Leads** - Sales pipeline with visual status tracking
- **Tasks** - Complete task and follow-up management system
- **Analytics** - Personal performance metrics and charts
- **Profile** - Account settings and password management

### Admin-Only Pages
- **User Management** - Team member administration and role management
- **System Analytics** - Organization-wide performance insights

## 🔐 Security Features

- **JWT Authentication** - Secure token-based authentication
- **Password Hashing** - bcrypt encryption for user passwords
- **Role-Based Access** - Granular permissions system
- **Input Validation** - Server-side validation for all inputs
- **CORS Protection** - Configured for secure cross-origin requests

## 📊 Analytics & Reporting

### Key Metrics
- Total pipeline value in INR
- Conversion rates and trends
- Lead source analysis
- Sales performance tracking
- User activity monitoring

### Visualizations
- Interactive charts with Recharts
- Real-time data updates
- Mobile-responsive graphs
- Export capabilities

## 🌐 API Endpoints

### Authentication
- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `GET /api/auth/me` - Get current user

### Contacts
- `GET /api/contacts` - Get all contacts (paginated)
- `POST /api/contacts` - Create new contact
- `PUT /api/contacts/:id` - Update contact
- `DELETE /api/contacts/:id` - Delete contact

### Leads
- `GET /api/leads` - Get all leads (paginated)
- `POST /api/leads` - Create new lead
- `PUT /api/leads/:id` - Update lead
- `DELETE /api/leads/:id` - Delete lead
- `GET /api/leads/analytics` - Get analytics data

### Users (Admin only)
- `GET /api/users` - Get all users
- `PUT /api/users/:id/role` - Update user role
- `DELETE /api/users/:id` - Delete user

## 🎯 New Features (v2.0)

### Quick Actions Dashboard
- **Add Lead** - Quick modal form for instant lead capture
- **Add Contact** - Fast contact creation without navigation
- **Schedule Follow-up** - Reminder system with priority levels
- **View Analytics** - One-click access to reports

### Task Management
- Create, edit, and delete tasks
- Priority levels (High, Medium, Low)
- Categories (Follow-up, Meeting, Call, Email, Other)
- Search and filter functionality
- Task completion tracking
- Due date management

### Today's Overview Widget
- Today's follow-ups count
- Pending calls tracker
- Email activity
- Active deals summary
- Average response time
- Meeting schedule
- Trend indicators

### Reminders System
- Visual reminder cards on dashboard
- Priority-based color coding
- Quick complete/delete actions
- Due date display
- Persistent storage

For detailed feature documentation, see [FEATURES_ADDED.md](FEATURES_ADDED.md)
For usage instructions, see [QUICK_START_GUIDE.md](QUICK_START_GUIDE.md)

## 🚀 Deployment

### Render Deployment (Recommended)
For detailed deployment instructions, see [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md)

**Quick Steps:**
1. **Backend**: Deploy as Web Service on Render with MongoDB Atlas
2. **Frontend**: Deploy as Static Site on Render
3. **Environment**: Configure production environment variables

**Live URLs after deployment:**
- Frontend: `https://mini-crm-frontend.onrender.com`
- Backend API: `https://mini-crm-backend.onrender.com`

### Alternative Platforms
- **Backend**: Heroku, Railway, DigitalOcean
- **Frontend**: Netlify, Vercel, AWS S3

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/new-feature`
3. Commit changes: `git commit -am 'Add new feature'`
4. Push to branch: `git push origin feature/new-feature`
5. Submit a pull request

## 📚 Documentation

- **[README.md](README.md)** - Main documentation (this file)
- **[FEATURES_ADDED.md](FEATURES_ADDED.md)** - Detailed feature documentation
- **[QUICK_START_GUIDE.md](QUICK_START_GUIDE.md)** - User guide and best practices

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- **Unsplash** for professional stock images
- **Lucide** for beautiful icons
- **Recharts** for data visualization components
- **MongoDB** for database solutions

## 📞 Support

For support and questions:
- Create an issue in the GitHub repository
- Email: support@minicrm.com (demo)
- Check [QUICK_START_GUIDE.md](QUICK_START_GUIDE.md) for common questions

## 🎉 What's New in v2.0

✨ **Functional Quick Actions** - All dashboard quick actions now fully operational
📋 **Task Management** - Complete task and follow-up system
📊 **Today's Overview** - Real-time daily metrics widget
🔔 **Smart Reminders** - Priority-based reminder system
🚀 **Enhanced Productivity** - Streamlined workflows for faster operations
📱 **Mobile Optimized** - All new features work seamlessly on mobile

---

**Made with ❤️ for Indian Businesses 🇮🇳**

Transform your customer relationships with Mini CRM - the professional, secure, and feature-rich solution designed specifically for growing Indian businesses.

**Version 2.0** - Now with enhanced productivity features!
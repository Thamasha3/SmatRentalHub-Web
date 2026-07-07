🏠 Smart Rental Hub – Online House Rental Management System

Smart Rental Hub is a web-based house rental management system built using Java (Servlets & JSP), JDBC, and MySQL, following the MVC architecture.  
It connects tenants, landlords, and admins through a single platform for property listings, user profiles, community interaction, and secure account management.

🚀 Key Features

👤 User & Profile Management
- User registration, login & logout (Tenants, Landlords, Admins)
- Admin registration secured with access code
- Profile creation with image & cover photo uploads
- Edit profile details, change password, and update visibility preferences
- Account settings, update, and delete functions
- Privacy Preferences: Users can set their profile as public or private using the “Profile Visible” option in account settings.
  Only admins can view all profiles regardless of visibility for moderation and reporting purposes.

🏘️ Property Management (Landlord Side)
- Add, edit, and delete property listings
- Include city, price, property type, and image upload
- Update availability (active/inactive)

🔍 Tenant Features
- View all property listings
- Search & filter by city, price range, or property type
- Like favorite properties (property_likes table)

💬 Community Wall
- Tenants & landlords can post updates or messages
- Image-supported posts (community_posts)
- Comment and like others’ posts
- Report abuse or inappropriate content

🧰 Admin Dashboard
- View all users, properties, and posts
- Remove reported/abusive posts or users
- System overview and activity monitoring

🛡️ Security & Validation
- Secure admin access code during registration
- Session handling for all roles
- Server-side and client-side form validation
- Custom error pages (404, 500, invalid input)
- SQL injection prevention and hashed passwords

🗄️ Database Design

Database: `smartrentalhub`

Main Tables:
- `users` – Stores all user details with roles (`tenant`, `landlord`, `admin`)
- `user_settings` – Profile visibility preferences
- `user_covers` – User cover image paths
- `properties` – Landlord property listings
- `property_likes` – Likes on properties
- `community_posts` – Wall posts with optional images
- `community_comments` – Comments under posts
- `community_post_likes` – Likes on posts
- `abuse_reports` – User and post report tracking

 Technology Stack

| Layer | Technology |
|-------|-------------|
| Frontend | HTML5, CSS, JSP |
| Backend | Java Servlets (Jakarta EE), JDBC |
| Database | MySQL |
| Server | Apache Tomcat |
| IDE | NetBeans  |
| Architecture | MVC (Model-View-Controller) |

👥 Team Contributions

| Member | Responsibilities |
|--------|------------------|
| Member 1 (Me)  | User registration/login/logout, profile management, account settings, Profile Search, error handling, security testing |
| Member 2 | Property CRUD, search/filter, like system, tenant-landlord interactions |
| Member 3 | Community wall (posts/comments/likes), abuse reports, admin dashboard & moderation tools |

All members contributed to database design, UI consistency, integration, and testing.
⚙️ Setup Instructions


🧾 Future Enhancements
Email notifications

Booking requests

Payment gateway integration

Property verification status

Mobile-responsive design

🏁 Conclusion
Smart Rental Hub provides a unified, secure, and user-friendly system for managing rental properties and social interaction between tenants, landlords, and admins — developed entirely using Java Servlets, JSP, and MySQL, following best practices in modular MVC design.

📌 Developed by Team Smart Rental Hub — National Institute of Business Management, School of Computing & Engineering


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>SmartRentalHub - Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f6f7f8;
        }

        .header {
            background-color: #ffffff;
            padding: 15px 20px;
            border-bottom: 1px solid #ccc;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header h1 {
            color: #ff4500;
            margin: 0;
        }

        .nav-buttons a {
            text-decoration: none;
            margin-left: 15px;
            color: #555;
            font-weight: bold;
        }

        .nav-buttons a:hover {
            color: #ff4500;
        }

        .container {
            display: flex;
            padding: 20px;
        }

        .sidebar {
            width: 250px;
            background-color: #fff;
            padding: 15px;
            margin-right: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
        }

        .main-content {
            flex-grow: 1;
            background-color: #fff;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
        }

        .post {
            border-bottom: 1px solid #eee;
            padding: 10px 0;
        }

        .post:last-child {
            border-bottom: none;
        }

        .post h3 {
            margin: 0;
            color: #333;
        }

        .post p {
            margin: 5px 0 0 0;
            color: #666;
        }

        .footer {
            text-align: center;
            padding: 10px;
            font-size: 14px;
            color: #aaa;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>SmartRentalHub</h1>
        <div class="nav-buttons">
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
            <a href="profile.jsp">Profile</a>
            <a href="listings.jsp">Browse Properties</a>
            <a href="community.jsp">Community</a>
        </div>
    </div>

    <div class="container">
        <div class="sidebar">
            <h3>Welcome!</h3>
            <p>Explore rental properties, connect with landlords, or share with the community.</p>
            <ul>
                <li><a href="listings.jsp">🏠 View Listings</a></li>
                <li><a href="community.jsp">💬 Community Wall</a></li>
                <li><a href="profile.jsp">👤 Your Profile</a></li>
            </ul>
        </div>

        <div class="main-content">
            <div class="post">
                <h3>🏡 New: Apartments in Colombo</h3>
                <p>Beautiful 2-bedroom apartments now available from Rs. 55,000/month.</p>
            </div>

            <div class="post">
                <h3>🔔 System Update</h3>
                <p>Admins can now moderate comments and view platform stats!</p>
            </div>

            <div class="post">
                <h3>💬 Community Post</h3>
                <p>“Can anyone recommend a good landlord near Kandy?” – User123</p>
            </div>
        </div>
    </div>

    <div class="footer">
        &copy; 2025 SmartRentalHub. All rights reserved.
    </div>

</body>
</html>

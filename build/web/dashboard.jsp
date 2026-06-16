<%@ page import="com.smart.rentalhub.model.User" %>
<%@ page session="true" contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>SmartRentalHub – Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f6f7f8;
        }

        .topbar {
            background-color: #ffffff;
            padding: 10px 20px;
            border-bottom: 1px solid #ccc;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .topbar h1 {
            color: #ff4500;
            margin: 0;
        }

        .topbar a {
            margin-left: 15px;
            text-decoration: none;
            color: #333;
            font-weight: bold;
        }

        .layout {
            display: flex;
            max-width: 1200px;
            margin: auto;
            padding: 20px;
        }

        .sidebar {
            width: 250px;
            background-color: #fff;
            padding: 15px;
            border-radius: 8px;
            border: 1px solid #ddd;
            margin-right: 20px;
        }

        .sidebar h3 {
            margin-top: 0;
            color: #333;
        }

        .sidebar ul {
            list-style: none;
            padding-left: 0;
        }

        .sidebar ul li {
            margin: 10px 0;
        }

        .sidebar ul li a {
            text-decoration: none;
            color: #333;
        }

        .feed {
            flex-grow: 1;
        }

        .card {
            background-color: #fff;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
        }

        .card h4 {
            margin: 0;
            color: #222;
        }

        .card p {
            margin: 8px 0 0 0;
            color: #555;
        }

        .footer {
            text-align: center;
            padding: 20px;
            font-size: 14px;
            color: #aaa;
        }
    </style>
</head>
<body>

<div class="topbar">
    <h1>SmartRentalHub</h1>
    <div>
        <span>Welcome, <%= user.getFullName() %> 👋</span>
        <a href="profile.jsp">Profile</a>
        <a href="logout.jsp">Logout</a>
    </div>
</div>

<div class="layout">

    <!-- Sidebar -->
    <div class="sidebar">
        <h3>Navigation</h3>
        <ul>
            <li><a href="dashboard.jsp">🏠 Dashboard</a></li>
            <li><a href="listings.jsp">🔍 Browse Listings</a></li>
            <li><a href="addListing.jsp">➕ Post Property</a></li>
            <li><a href="community.jsp">💬 Community Wall</a></li>
            <li><a href="profile.jsp">👤 My Profile</a></li>
        </ul>
    </div>

    <!-- Main Feed -->
    <div class="feed">
        <!-- Example Listing -->
        <div class="card">
            <h4>🏡 2-Bedroom in Kandy - Rs. 40,000/mo</h4>
            <p>Spacious and modern, close to the city. Posted by <b>Landlord123</b>.</p>
        </div>

        <!-- Community Post -->
        <div class="card">
            <h4>💬 User456 asks:</h4>
            <p>“Any recommendations for a good landlord in Colombo?”</p>
        </div>

        <!-- System Notification -->
        <div class="card">
            <h4>📣 System Update</h4>
            <p>Admins can now manage abuse reports directly from their dashboard.</p>
        </div>

        <!-- Another Listing -->
        <div class="card">
            <h4>🏘️ Studio Apartment in Galle – Rs. 25,000/mo</h4>
            <p>Perfect for singles or students. Quiet neighborhood. By <b>Landlady007</b>.</p>
        </div>
    </div>
</div>

<div class="footer">
    &copy; 2025 SmartRentalHub. Inspired by Reddit, built by you. 🚀
</div>

</body>
</html>

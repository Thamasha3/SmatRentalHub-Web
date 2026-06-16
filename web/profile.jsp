<%@ page import="com.smart.rentalhub.model.User" %>
<%@ page session="true" contentType="text/html; charset=UTF-8" language="java" %>
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
    <title><%= user.getUsername() %>'s Profile - SmartRentalHub</title>
</head>
<body>
    <%@ include file="components/sidebar.jsp" %>

    <div class="profile-container">
        <div class="profile-header">
            <img src="<%= user.getProfileImg() %>" alt="Avatar" class="avatar">
            <h2><%= user.getFullName() %> (@<%= user.getUsername() %>)</h2>
            <p><%= user.getBio() != null ? user.getBio() : "" %></p>
        </div>

        <div class="profile-tabs">
            <button onclick="showSection('posts')">My Posts</button>
            <button onclick="showSection('bookmarks')">Bookmarks</button>
            <button onclick="showSection('reviews')">Reviews</button>
        </div>

        <div id="posts" class="tab-section">
            <h3>Listing Posts</h3>
            <!-- Loop through user's listings -->
        </div>
        <div id="bookmarks" class="tab-section" style="display:none">
            <h3>Bookmarked Properties</h3>
            <!-- Loop through bookmarks -->
        </div>
        <div id="reviews" class="tab-section" style="display:none">
            <h3>Reviews</h3>
            <!-- Loop through reviews or ratings -->
        </div>
    </div>

    <script>
        function showSection(id) {
            document.querySelectorAll('.tab-section').forEach(s => s.style.display = 'none');
            document.getElementById(id).style.display = 'block';
        }
    </script>
</body>
</html>

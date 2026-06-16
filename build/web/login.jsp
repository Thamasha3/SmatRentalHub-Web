<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login - SmartRentalHub</title>
</head>
<body>
    <h2>Login</h2>
    
    <!-- Show error if login failed via URL parameter -->
    <%
        String error = request.getParameter("error");
        if ("1".equals(error)) {
    %>
        <p style="color:red;">Invalid username or password!</p>
    <%
        }
    %>

    <form action="login" method="post">
        <label>Username:</label>
        <input type="text" name="username" required><br>

        <label>Password:</label>
        <input type="password" name="password" required><br>

        <input type="submit" value="Login">
    </form>

    <p>Don't have an account? <a href="register.jsp">Register here</a>.</p>
</body>
</html>

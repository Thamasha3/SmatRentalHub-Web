<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>User Registration</title></head>
<body>
<h2>Register</h2>
<form action="register" method="post" enctype="multipart/form-data">
    <label>Username:</label> <input type="text" name="username" required minlength="3"><br>
    <label>Password:</label> <input type="password" name="password" required minlength="6"><br>
    <label>Full Name:</label> <input type="text" name="fullname"><br>
    <label>Email:</label> <input type="email" name="email" required ><br>
    <label>Bio:</label> <textarea name="bio"></textarea><br>
    <label>Profile Picture:</label> <input type="file" name="profile_img"><br>
    <label>Role:</label>
    <select name="role">
        <option value="tenant">Tenant</option>
        <option value="landlord">Landlord</option>
        <option value="admin">Admin</option>
    </select><br>
    <input type="submit" value="Register">
</form>
</body>
</html>

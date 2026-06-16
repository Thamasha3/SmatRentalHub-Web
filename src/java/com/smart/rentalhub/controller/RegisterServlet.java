package com.smart.rentalhub.controller;

import com.smart.rentalhub.model.User;
import com.smart.rentalhub.dao.UserDAO;
import com.smart.rentalhub.util.PasswordEncryptor;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/register")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
                 maxFileSize = 1024 * 1024 * 10,       // 10MB
                 maxRequestSize = 1024 * 1024 * 50)    // 50MB
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Get form data
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullName = request.getParameter("fullname");
        String email = request.getParameter("email");
        String bio = request.getParameter("bio");
        String role = request.getParameter("role");

        // 2. Handle profile picture upload
        Part filePart = request.getPart("profile_img");
        String fileName = filePart.getSubmittedFileName();
        String uploadPath = getServletContext().getRealPath("") + "uploads";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();
        filePart.write(uploadPath + File.separator + fileName);
        String profileImgPath = "uploads/" + fileName;

        // 3. Create User object
        User user = new User();
        user.setUsername(username);
       user.setPassword(PasswordEncryptor.hash(password));
        user.setFullName(fullName);
        user.setEmail(email);
        user.setBio(bio);
        user.setProfileImg(profileImgPath);
        user.setRole(role);

        // 4. Save to DB
        UserDAO dao = new UserDAO();
        boolean registered = dao.registerUser(user);

        // 5. Redirect
        if (registered) {
    System.out.println("✅ User registered successfully");
    response.sendRedirect("login.jsp");
} else {
    System.out.println("❌ User registration failed (insert error)");
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    out.println("<h3 style='color:red'>Registration Failed</h3>");
}
    }
}

package com.smart.rentalhub.dao;

import com.smart.rentalhub.model.User;
import com.smart.rentalhub.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    // ✅ REGISTER USER
    public boolean registerUser(User user) {
        boolean success = false;
        try {
            Connection conn = DBConnection.getConnection();
            String sql = "INSERT INTO users (username, password, full_name, email, bio, profile_img, role) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword()); // (Consider hashing)
            ps.setString(3, user.getFullName());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getBio());
            ps.setString(6, user.getProfileImg());
            ps.setString(7, user.getRole());
            success = ps.executeUpdate() > 0;
            conn.close();
        } catch (Exception e) {
            System.out.println("❌ Error in registerUser(): " + e.getMessage());
            e.printStackTrace();
        }
        return success;
    }

    // ✅ LOGIN VALIDATION
   public User validateUserByUsername(String username, String password) {
    User user = null;
    try {
        Connection conn = DBConnection.getConnection();
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            user = new User();
            user.setId(rs.getInt("id"));
            user.setUsername(rs.getString("username"));
            user.setFullName(rs.getString("full_name"));
            user.setEmail(rs.getString("email"));
            user.setBio(rs.getString("bio"));
            user.setProfileImg(rs.getString("profile_img"));
            user.setRole(rs.getString("role"));
        }
        conn.close();
    } catch (Exception e) {
        System.out.println("❌ Error in validateUserByUsername(): " + e.getMessage());
        e.printStackTrace();
    }
    
    
    return user;
}


    // Optional: Add updateUser(), deleteUser(), getUserById() etc. later if needed.
}

package com.sda.jsp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UsersDao {

  public String login(String username, String password) {
    Connection c = null;
    Statement s = null;
    ResultSet rs = null;

    try {
      Class.forName("com.mysql.jdbc.Driver");
      c = DriverManager.getConnection(
          "jdbc:mysql://localhost:3306/jsp",
          "root",
          "password");
      s = c.createStatement();
      s.executeUpdate("CREATE TABLE IF NOT EXISTS users ("
          + "username VARCHAR(255) PRIMARY KEY, "
          + "password VARCHAR(255), "
          + "emailAddress VARCHAR(255))");

      rs = s.executeQuery("SELECT users.password FROM users WHERE users.username = '"
          + username + "'");

      if (rs.next()) {
        String userPassword = rs.getString(1);
        if (!userPassword.equals(password)) {
          return "Password invalid!";
        }
      } else {
        return "User does not exists!";
      }
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      try {
        c.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
      try {
        s.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
      try {
        rs.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
    return null;
  }

  public String createUser(User newUser) {
    Connection c = null;
    Statement s = null;
    ResultSet rs = null;

    try {
      Class.forName("com.mysql.jdbc.Driver");
      c = DriverManager.getConnection(
          "jdbc:mysql://localhost:3306/jsp",
          "root",
          "password");
      s = c.createStatement();
      s.executeUpdate("CREATE TABLE IF NOT EXISTS users ("
          + "username VARCHAR(255) PRIMARY KEY, "
          + "password VARCHAR(255), "
          + "emailAddress VARCHAR(255))");

      s.executeUpdate("INSERT INTO users "
          + "(username, password, emailAddress) "
          + "VALUES ('" + newUser.getUsername()
          + "', '" + newUser.getPassword()
          + "', '" + newUser.getEmailAddress()
          + "')");
    } catch (Exception e) {
      e.printStackTrace();
      return "User with given username already exists!";
    } finally {
      try {
        c.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
      try {
        s.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
//      try {
//        rs.close();
//      } catch (SQLException e) {
//        e.printStackTrace();
//      }
    }
    return null;
  }

  public List<User> getAllUsers() {
    Connection c = null;
    Statement s = null;
    ResultSet rs = null;

    try {
      Class.forName("com.mysql.jdbc.Driver");
      c = DriverManager.getConnection(
          "jdbc:mysql://localhost:3306/jsp",
          "root",
          "password");
      s = c.createStatement();
      s.executeUpdate("CREATE TABLE IF NOT EXISTS users ("
          + "username VARCHAR(255) PRIMARY KEY, "
          + "password VARCHAR(255), "
          + "emailAddress VARCHAR(255))");

      rs = s.executeQuery("SELECT * FROM users");

      List users = new ArrayList();
      while (rs.next()) {
        users.add(new User(
            rs.getString("username"),
            rs.getString("password"),
            rs.getString("emailAddress")
        ));
      }

      return users;
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      try {
        c.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
      try {
        s.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
      try {
        rs.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
    return null;
  }
}

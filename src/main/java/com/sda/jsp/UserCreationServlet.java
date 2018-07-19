package com.sda.jsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserCreationServlet extends HttpServlet {

  @Override
  protected void doGet(
      HttpServletRequest req,
      HttpServletResponse resp) throws ServletException, IOException {

    PrintWriter out = resp.getWriter();

    Connection c = null;
    Statement s = null;
    ResultSet rs = null;

    try {
      Class.forName("com.mysql.jdbc.Driver");
      c = DriverManager.getConnection(
          "jdbc:mysql://localhost:3306/spring",
          "root",
          "password");
      s = c.createStatement();
      rs = s.executeQuery("SELECT * FROM products");

      int index = 0;
      while (rs.next()) {
        index++;
        out.println("Row nr " + index);
        out.println("id: " + rs.getString(1));
        out.println("name: " + rs.getString(2));
        out.println("price: " + rs.getString(3));
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
  }
}

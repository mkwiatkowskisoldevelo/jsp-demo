package com.sda.jsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserCreationServlet extends HttpServlet {

  @Override
  protected void doPost(
      HttpServletRequest req,
      HttpServletResponse resp) throws ServletException, IOException {

    String username = req.getParameter("username");
    String password = req.getParameter("password");
    String passwordConfirm = req.getParameter("passwordConfirm");
    String emailAddress = req.getParameter("emailAddress");

    if (!password.equals(passwordConfirm)) {
      req.setAttribute("errorMessage", "Given passwords do not match!");
      resp.sendRedirect("/demo/application/createUser.jsp");
      return;
    }

    UsersDao dao = new UsersDao();
    String errorMessage = dao.createUser(new User(username, password, emailAddress));

    if (errorMessage != null) {
      req.setAttribute("errorMessage", errorMessage);
      resp.sendRedirect("/demo/application/createUser.jsp");
    } else {
      resp.sendRedirect("/demo/application/loginForm.jsp");
    }
  }
}

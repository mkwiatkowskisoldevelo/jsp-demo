package com.sda.jsp;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

  @Override
  protected void doPost(
      HttpServletRequest request,
      HttpServletResponse response) throws IOException, ServletException {

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    UsersDao dao = new UsersDao();
    String errorMessage = dao.login(username, password);

    if (errorMessage != null) {
      request.setAttribute("errorMessage", errorMessage);
      RequestDispatcher dispatcher = getServletContext()
          .getRequestDispatcher("/application/loginForm.jsp");
      dispatcher.forward(request, response);
    } else {
      HttpSession session = request.getSession();
      session.setAttribute("currentUser", username);
      response.sendRedirect("/demo/application/main.jsp");
    }
  }
}

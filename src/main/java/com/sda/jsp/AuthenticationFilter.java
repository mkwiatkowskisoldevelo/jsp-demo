package com.sda.jsp;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthenticationFilter implements Filter {

  @Override
  public void init(FilterConfig filterConfig) throws ServletException {

  }

  @Override
  public void doFilter(
      ServletRequest servletRequest,
      ServletResponse servletResponse,
      FilterChain filterChain) throws IOException, ServletException {
    HttpServletResponse response = (HttpServletResponse) servletResponse;
    HttpServletRequest request = (HttpServletRequest) servletRequest;

    String url = request.getRequestURI();

    HttpSession session = request.getSession();

    if (session.getAttribute("currentUser") == null
        && !url.endsWith("/loginForm.jsp")
        && !url.endsWith("/login.jsp")
        && !url.endsWith("/createUser.jsp")
        && !url.endsWith("/user.jsp")) {
      response.sendRedirect("/demo/application/loginForm.jsp");
    } else {
      filterChain.doFilter(request, response);
    }
  }

  @Override
  public void destroy() {

  }
}

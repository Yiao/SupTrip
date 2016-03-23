package com.supinfo.suptrip.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Objects;

/**
 * Created by sya on 3/11/2016.
 */
@WebFilter(filterName = "AuthFilter", urlPatterns = "/auth/*")
public class AuthFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        String account = null;
        if (req instanceof HttpServletRequest) {
            HttpServletRequest request = (HttpServletRequest) req;


            HttpSession session = request.getSession();
            account = (String) session.getAttribute("account");

            if (account == null || Objects.equals(account, ""))
            {
                if (resp instanceof HttpServletResponse)

                {
                    HttpServletResponse response=(HttpServletResponse) resp;
                    response.sendRedirect("/login.jsp");
                }

            }
            else
            {
                chain.doFilter(request, resp);
            }
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}

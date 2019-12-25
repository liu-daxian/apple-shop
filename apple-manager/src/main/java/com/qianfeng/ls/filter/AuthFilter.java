package com.qianfeng.ls.filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    String noauthstr = ".jsp.js.css.font.html.jpg.jpeg.png";
    String noauthpath = "/login/regist";

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String path = request.getServletPath(); //我们的请求地址

        if(path.lastIndexOf(".") > -1){ //当前的请求是xx.xx
            String suf = path.substring(path.lastIndexOf("."));//截取到请求地址的后缀

            if(noauthstr.indexOf(suf) > -1){ //不需要进行权限验证的请求
                filterChain.doFilter(request,response);
                return;

            }
        }

        if(noauthpath.indexOf(path) > -1){ //不需要进行权限校验的路径,直接放行
            filterChain.doFilter(request,response);
            return;
        }

        //判断当前用户是否有权限执行这个请求地址;
        Object obj = request.getSession().getAttribute("authstring");
        if(null == obj){ //说明这个用户没有登录
            response.sendRedirect("login.jsp");
            return;
        }

        String auths = String.valueOf(obj);
        if(auths.indexOf(path) > -1){ //找到了这个权限
            filterChain.doFilter(request,response);
        }else{
            response.sendRedirect("noauth.jsp");
        }
    }

    @Override
    public void destroy() {
    }
}

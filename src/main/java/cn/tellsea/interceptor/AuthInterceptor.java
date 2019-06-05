package cn.tellsea.interceptor;

import cn.tellsea.bean.User;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        User currentUser = (User) request.getSession().getAttribute("currentUser");
        if (currentUser == null) {
            // 还没有登录，去登录
            request.getRequestDispatcher("/login").forward(request, response);
            return false;
        }
        return true;
    }
}

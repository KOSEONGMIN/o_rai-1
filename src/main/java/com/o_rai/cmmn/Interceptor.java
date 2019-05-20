package com.o_rai.cmmn;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.o_rai.domain.SessionVO;

public class Interceptor extends HandlerInterceptorAdapter {

   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
         throws Exception {
      // TODO Auto-generated method stub
      
      System.out.println("#### 현재 요청 경로: " + request.getServletPath());
         
      System.out.println("#### 세션 정보: " + request.getSession());
      
   	  HttpSession session = request.getSession();
   	  SessionVO sessionVO = (SessionVO) session.getAttribute("sessionVO");
   		
   	  if (sessionVO == null) {
   		  response.sendRedirect("/login");
   		  return false;
   	  }
      
      return super.preHandle(request, response, handler);
   }
   
   /*@Override
   public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
         ModelAndView modelAndView) throws Exception {
     
      if (!"XMLHttpRequest".equals(request.getHeader("X-Requested-With"))) {

      }
   }*/
}
package com.o_rai.cmmn;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Interceptor extends HandlerInterceptorAdapter {

   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
         throws Exception {
      // TODO Auto-generated method stub
      
      System.out.println("#### 현재 요청 : " + request.getServletPath());
         
      System.out.println("#### 컨트롤러 실행 전에 호출되나?");
         
      System.out.println("#### 현재 세션 값 : " + request.getSession());
      
      
      return super.preHandle(request, response, handler);
   }
   
   /*@Override
   public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
         ModelAndView modelAndView) throws Exception {
      System.out.println("######## 컨트롤러 실행 후에 호출되나?");

      if (!"XMLHttpRequest".equals(request.getHeader("X-Requested-With"))) {

      }
   }*/
}
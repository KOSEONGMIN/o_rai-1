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
      
      System.out.println("#### ���� ��û : " + request.getServletPath());
         
      System.out.println("#### ��Ʈ�ѷ� ���� ���� ȣ��ǳ�?");
         
      System.out.println("#### ���� ���� �� : " + request.getSession());
      
      
      return super.preHandle(request, response, handler);
   }
   
   /*@Override
   public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
         ModelAndView modelAndView) throws Exception {
      System.out.println("######## ��Ʈ�ѷ� ���� �Ŀ� ȣ��ǳ�?");

      if (!"XMLHttpRequest".equals(request.getHeader("X-Requested-With"))) {

      }
   }*/
}
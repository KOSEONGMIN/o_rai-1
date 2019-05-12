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
      
      System.out.println("#### 현재요청: " + request.getServletPath());
         
      System.out.println("#### 세션정보: " + request.getSession());
      
      // 현재 세션이 있는지 없는지 확인
   	  HttpSession session = request.getSession();
   	  SessionVO sessionVO = (SessionVO) session.getAttribute("sessionVO");
   		
   	  // 로그인이 되어있지 않을 시 호출
   	  if (sessionVO == null) {
   		  response.sendRedirect("/login");
   		  return false;
   	  }
      
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
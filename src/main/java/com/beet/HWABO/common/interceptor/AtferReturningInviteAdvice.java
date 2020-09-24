package com.beet.HWABO.common.interceptor;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.beet.HWABO.member.model.vo.Member;

@Repository
@Aspect 
public class AtferReturningInviteAdvice {
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	//초대 완료시 프로젝트 멤버에 가입시키는 메소드 추가
	
	@Pointcut("execution(* com.beet.HWABO.member.model.dao.MemberDao.selectLogin(..)) || execution(* com.beet.HWABO.member.model.dao.MemberDao.insertUser(..))" )
	public void loginPointcut() {}
	
	@AfterReturning(pointcut="loginPointcut()", returning = "returnObj") //매개변수에 선언한 오브젝트 이름
	public void loginLogging(JoinPoint jp, Object returnObj) {
		
		if(returnObj instanceof Member) {
			Member member = (Member)returnObj; 
			logger.info(member.getUname() + "aop 로거는 뜨나안뜨나 테스트중 "); 
			
		}
		
		if(returnObj instanceof ModelAndView) {
			ModelAndView mav = (ModelAndView)returnObj;

		}
	}
	
}

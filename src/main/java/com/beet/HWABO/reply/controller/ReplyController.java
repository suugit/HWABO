package com.beet.HWABO.reply.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.beet.HWABO.reply.model.service.ReplyService;
import com.beet.HWABO.reply.model.vo.Reply;

@Controller
public class ReplyController {
	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);
	
	@Autowired
	private ReplyService replyService;
	
	@RequestMapping(value = "insertreply.do", method = RequestMethod.POST)
	public void insertReply(Reply reply, HttpServletResponse response) throws IOException {
		 logger.info("insertReply.do run...");
	      logger.info("Reply controller : " + reply);
	      
	      response.setContentType("text/html; charset=utf-8");      
	      PrintWriter out = response.getWriter();      
	     
	      if(replyService.insertReply(reply) > 0) {
	    	  logger.info("댓글 인써트 성공!!!!");
	    	  out.append("ok");
	          out.flush();
	          

	      }else {
	          logger.info("cabinet 인서트 실패");
	          out.append("fail");
	          out.flush();
	       }
	       out.close();
	    
	     	
	}
	
	
	/*
	 * @RequestMapping("/list") //댓글 리스트
	 * 
	 * @ResponseBody private List<CommentVO> mCommentServiceList(Model model) throws
	 * Exception{
	 * 
	 * return mCommentService.commentListService(); }
	 */

	@RequestMapping("selectOneReply.do")
    @ResponseBody
	public List<Reply> selectOneReply(@RequestParam("no") String no, Model model) throws Exception{
		
		/*
		 * List<Reply> list = replyService.selectOneList(no);
		 * 
		 * for(Reply r : list) { r.setEnrolldate(r.getEnrolldate().toString()); }
		 */
		
		return replyService.selectOneList(no);
	}
	
	
	
}





/*
 * @RequestMapping("/list") //댓글 리스트
 * 
 * @ResponseBody private List<CommentVO> mCommentServiceList(Model model) throws
 * Exception{
 * 
 * return mCommentService.commentListService(); }
 * 
 * 
 * 출처: https://private.tistory.com/65 [공부해서 남 주자]
 * 
 */





















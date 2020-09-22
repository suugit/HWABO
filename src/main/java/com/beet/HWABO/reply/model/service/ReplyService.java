package com.beet.HWABO.reply.model.service;

import java.util.List;

import com.beet.HWABO.reply.model.vo.Reply;

public interface ReplyService {

	int insertReply(Reply reply);

	List<Reply> selectOneList(String no);

}

package com.beet.HWABO.spost.model.vo;

import java.sql.Date;

public class Post {

	//Spost
	private String sno;
	private String stitle;
	private String swriter;
	private Date sstartdaty;
	private Date sendday;
	private String splace;
	private String salarm;
	private String scontent;
	private Date senrolldate;
	private String sopen;
	private int slove;
	private String srwriter;
	private String srcontent;
	
	//Bpost
	private String bno;
	private String btitle;
	private String bwriter;
	private java.sql.Date bstartday;
	private java.sql.Date bendday;
	private String bkind;
	private String bcharge;
	private String bcontent;
	private java.sql.Date benrolldate;
	private String bopen;
	private String blove;
	private String brwriter;
	private String brcontent;
	private String brenamefile;
	private String boriginfile;
	
	//Cpost
	private String cno;
	private String ctitle;
	private String cwriter;
	private String ccontent;
	private java.sql.Date cenrolldate;
	private String copen;
	private int clove;
	private String hashtags;
	private String mentions;
	private String crwriter;
	private String crcontent;
	private String addonuse;
	
	//Vpost
	private String vno;
	private String vtitle;
	private String vwriter;
	private Date vdate;
	private String alarm;
	private String votecheck;
	private int votenumber;
	
	//doPost
	private String dno;
	private String dtitle;
	private String dwriter;
	private String dcontent;
	private java.sql.Date denrolldate;
	private String dopen;
	
}

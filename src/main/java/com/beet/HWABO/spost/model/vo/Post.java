package com.beet.HWABO.spost.model.vo;

import java.sql.Date;

public class Post {
	
	private String no;
	private String title;
	
	//spost (12)
	private String sno;
	private String stitle;
	private String sucode;
	private String swriter;
	private Date sstartday;
	private Date sendday;
	private String splace;
	private String scontent;
	private Date senrolldate;
	private String sopen;
	private String spnum;
	
	//Bpost (15)
	private String bno;
	private String btitle;
	private String bucode;
	private String bwriter;
	private Date bstartday;
	private Date bendday;
	private String bkind;
	private String bcharge;
	private String bcontent;
	private Date benrolldate;
	private String bopen;
	private String brenamefile;
	private String boriginfile;
	private String bpnum;
	private String bchargename;
	
	//Cpost (17)
	private String cno;
	private String cpnum;
	private String ctitle;
	private String cucode;
	private String cwriter;
	private String ccontent;
	private java.sql.Date cenrolldate;
	private String copen;
	private String hashtags;
	private String mentions;
	
	private String addonuse;
	private String ofile1;
	private String rfile1;
	private String ofile2;
	private String rfile2;
	private String ofile3;
	private String rfile3;
	

	//doPost (8)
	private String dno;
	private String dtitle;
	private String ducode;
	private String dwriter;
	private String dcontent;
	private java.sql.Date denrolldate;
	private String dopen;
	private String dpnum;
}

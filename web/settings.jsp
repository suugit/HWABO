<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="views/common/error.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>





















<!-- 분기 함수 start -->

<script>var condJson 		= {"get":{"isMobis":false,"isSoil":false,"isMadras":false,"isChatUpgrade":true,"isFlowCloud":true,"isTestUsers":false,"isGware":false,"isDbfi":false,"isEland":false,"isBgf":false,"isNewMini":true,"isEnter":false,"isUtlz":false,"isWebcash":false,"isZoomok":false,"isJoins":false,"isHyundaicar":false,"isSeco":false,"isDev":false,"isTestTeamDev":false,"isOutsiders":true,"isTeamDev":false,"isGuest":true,"isUseSns":true,"isReal":true,"isSec":false,"isMobile":true}};</script>
<!-- 분기 함수 end -->




<link rel='stylesheet' type="text/css" href="/js/lib/fullcalendar/fullcalendar.css?5.1.211.339" />
<link rel="stylesheet" type="text/css" href="/js/jquery.datepicker/jquery-ui.css?5.1.211.339"/>
<link rel="stylesheet" type="text/css" href="/design2/css/jquery.mCustomScrollbar.css?5.1.211.339">
<link rel="stylesheet" type="text/css" href="/js/jquery.mentionsInput/jquery.mentions.css?5.1.211.339">
<link rel="stylesheet" type="text/css" href="/js/jquery.bxslider/jquery.bxslider.css?5.1.211.339">
<link rel="stylesheet" type="text/css" href="/js/jquery.ganttView/jquery.ganttView.css?5.1.211.339">
<link rel="stylesheet" type="text/css" href="/js/jquery.liveurl/liveurl.css?5.1.211.339" />
<link rel="stylesheet" type="text/css" href="/js/lib/medium-editor/css/medium-editor.min.css?5.1.211.339" />
<link rel="stylesheet" type="text/css" href="/js/lib/medium-editor/css/themes/default.css?5.1.211.339" />
<link rel="stylesheet" type="text/css" href="/design3/css/fontawesome.min.css?5.1.211.339" />


<script type="text/javascript" src="/js/gibberish-aes.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/lib/jquery-1.10.2.min.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/lib/jquery.cookie.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/inc/jquery.placeholder.min.js?5.1.211.339"></script>	
<script type="text/javascript" src="/js/jquery.ui.reduce/jquery.ui.base.min.js?5.1.211.339"></script>	
<script type="text/javascript" src="/js/jquery.ui.reduce/jquery.ui.autocomplete.min.js?5.1.211.339"></script>		
<script type="text/javascript" src="/js/jquery.ui.reduce/jquery.ui.datepicker.min.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/jquery.ui.reduce/jquery.ui.selectable.min.js?5.1.211.339"></script>			<!-- 선택 -->
<script type="text/javascript" src="/js/jquery.ui.reduce/jquery.ui.dialog.min.js?5.1.211.339"></script>				<!-- collabo3_task.js -->
<script type="text/javascript" src="/js/jquery.ui.reduce/jquery.ui.draggable.min.js?5.1.211.339"></script>			<!-- 이미지뷰어 -->
<script type="text/javascript" src="/js/jquery.ui.reduce/jquery.ui.sortable.min.js?5.1.211.339"></script>			<!-- 이미지뷰어 -->
<script type="text/javascript" src="/js/jquery.mentionsInput/jquery.mentions.js?5.1.211.339"></script> 				<!-- collabo3_at_me.js -->
<script type="text/javascript" src="/js/jquery.bxslider/jquery.bxslider.js?5.1.211.339"></script>					<!-- flow_project.js, flow_editor.js, collabo3_at_me.js -->
<script type="text/javascript" src="/js/jquery.readmore/readmore.js?5.1.211.339"></script>							<!-- collabo3_left.js, collabo3_at_me.js -->
<script type="text/javascript" src="/js/jquery.liveurl/jquery.liveurl.js?5.1.211.339"></script>						<!-- collabo3_at_me.js -->
<script type="text/javascript" src="/js/jquery.i18n.properties.js?5.1.211.339"></script>							<!-- 다국어적용하기 -->

<script type="text/javascript" src="/js/jex/jex.core.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/jexGrid/contents.grid.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/jexGrid/contents.table.paging.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/jexPlugin/jex.formatter.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/jexPlugin/jex.calendar.js?5.1.211.339"></script>


<script type="text/javascript" src="/js/collabo/inc/socket.io-1.7.4.js?5.1.211.339"></script>						<!-- 소켓통신 -->
<script type="text/javascript" src="/design2/js/jquery.mCustomScrollbar.concat.min.js?5.1.211.339"></script>		<!-- 스크롤바 -->
<script type="text/javascript" src="/js/lib/date-ko-KR.js?5.1.211.339"></script>									<!-- 날짜가져오기 -->
<script type="text/javascript" src="/js/commCustom/contents.datepicker.js?5.1.211.339"></script>					<!-- collabo3_content.js-->
<script type="text/javascript" src="/js/commCustom/contents.custom.js?5.1.211.339"></script>						<!-- COOKIE & NULL2VOID -->
<script type="text/javascript" src="/js/collabo/aes.js?5.1.211.339"></script>										<!-- 암호화  -->
<script type="text/javascript" src="/js/lib/jquery.lazy.min.js?5.1.211.339"></script>								<!-- 이미지지연로딩 -->
<script type="text/javascript" src="/js/lib/rx.all.js?5.1.211.339"></script>										<!-- file_upload.js -->
<script type="text/javascript" src="/js/lib/moment.min.js?5.1.211.339"></script>										<!-- file_upload.js -->

<!-- @유민호 : [오류] | [#엑셀내려받기] | 추가 200813 -->
<script type="text/javascript" src="/js/lib/moment.min.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/lib/rx.all.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/excel/xlsx.core.min.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/excel/FileSaver.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/lib/fullcalendar/fullcalendar.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/lib/fullcalendar/locale-all.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/lib/medium-editor/js/medium-editor.js?5.1.211.339"></script>








<!-- Bb파일 업로드 Client 임포트(리얼)-->

<script type="text/javascript" src="https://platform.bizplay.co.kr/js/bb_upload.js?apiKey=RkEXY4BCJsZhEmYR1wvYZGDYBWHFP6Y5Ni_ZQ6F5qloBQ1p7oE&callbackpage=http://flow.team/comm/bb_upload_callback.jsp"></script>


<!-- <script type="text/javascript" src="/js/collabo/collabo3_0001_comm.js"></script> -->
<script type="text/javascript" src="/js/collabo/collabo2019/start_testing.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/open.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/is_condition.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/convert_form.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/valid_check.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/get_value.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/google.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/screen_value.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/select_by_keyboard.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/out_confirm.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/used_often.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/base.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/table_2_excel.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/lang_timezone.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/js_draw.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/editor_control.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/img_control.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/lock_control.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2019/load_opensource.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2020/get_outer_code.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2020/view_changer.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2020/like.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2020/base64.js?5.1.211.339"></script>
<script>
<!-- WeAuth에서 추출된 정보 JavaScript 전역변수에 셋팅-->
var _PTL_ID         		= "PTL_3";
var _CHNL_ID      			= "CHNL_1";
var _USE_INTT_ID			= "GMAIL_200825124104";
var _USE_INTT_NM			= "";
var _CNTS_ID				= "CNTS_390";
var _USER_ID      			= "ddubing1@gmail.com";
var _USER_NM      			= "Jeong";
var _CCTN_CHNL_ID   		= "CHNL_1";
var _URL					= "http://flow.team";
var _RGSN_DTTM				= "20200825124104";
var _PRFL_PHTG				= "";
var _CNTS_TRGT				= "CNTS_390";
var _EMAIL					= "ddubing1@gmail.com";
var _BSNN_NM				= "";
var _ENTER_YN				= "N";
var _PC_DOWN_YN  			= "N"
var _FUNC_DEPLOY_LIST		= "";
var _COUNTRY_CODE 			= "ko";



var _SORT_DESC 				= "0";	// 정렬기준  0-업데이트 / 1- 최근 내가 작성
var _LIST_VIEW_CD 			= "0";	// 0-리스트/1-바둑판
var _PJT_FILTER 			= "0";	// 필터 구분 0-내가 참여한 모든 프로젝트 보기/ 1-내가 관리자인 모든 프로젝트 보기

var _ONE_COLABO_SRNO 		= "";
var _DEV_REAL     			= "REAL";
var _STR_BASE_URL 			= "http://flow.team";
var _SERVER_CONN_NUM 		= "";
var _CNPL_URL 				= "https://b2bccstm.appplay.co.kr";
var _CNPL_SECR_KEY 			= "67627b5e-ed71-7136-21aa-06fb4b7e8eb0";
var _SCHD_CRTC_KEY 			= "21e07beb-c23e-456d-974e-4981a9218a47";
var _CALENDAR_URL			= "https://calendar.appplay.co.kr";
var _CALENDAR_CALLBACK 		= "http://flow.team/comm/schd_shrn_callback.jsp";
var _BRICK_KEY 				= "";
var _VIEW_GB				= "FL";
var _CHAT_URL				= "https://flowchat.appplay.co.kr:7820";		// chat server url
var _IPT_URL				= "";		// ipt server url 


if( "" != _CHAT_URL){
}else{
	if ("DEV" == _DEV_REAL) {
		_CHAT_URL = "http://flowchat.flowteam.info:8082";
	} else {
		_CHAT_URL = "https://flowchat.appplay.co.kr:7820";
	}
}

var _INNER_NETWORK_YN="N";		//내부 네트워크 사용여부

var b_joins			= false;
var b_flowCloud 	= true;
var b_testTeamDev 	= false;
var b_teamDev 		= false;
var b_useSns 		= true;
var b_real 			= true;
var b_madras 		= false;
var b_utlz 			= false;
var b_gware 		= false;
var b_hyundaicar 	= false;
var b_enter			= false;
var b_mobis			= false;
var b_eland			= false;
var b_sec			= false;
var b_soil			= false;
var b_dbfi			= false;
var b_chatUpgrade	= true;

if(location.href.indexOf("flow3.flow.team") != -1 || location.href.indexOf("flowdev.info") != -1){
	_ENTER_YN = getCookieEnter();
}
if(_USER_ID.indexOf("@test.com") > -1){
	_ENTER_YN = "Y";
} else {
	//done
}

setLocal("ENTER_YN", _ENTER_YN);

jQuery.loadScript = function (url, callback) { 
	jQuery.ajax({ 
		url: url,
        dataType: 'script',
        success: callback,
        async: false
    });
}


//@유민호 : 요일 한글 적용 200310
if(cnts_Null2Void(cf_getCookie("FLOW_LANG"),"") === "ko"){
	$.loadScript('/js/collabo/lang/kr.js');
} else{
	//done
}	

//@유민호 : 센트리 적용 191126
if(false){
	if(location.href.indexOf("flow3.flow.team") == -1 &&
			   b_flowCloud && 
			   !b_testTeamDev && 
			   typeof(Sentry) == "undefined"
	){
		$.loadScript("/js/bundle.min.js", function(){
			Sentry.init({ dsn: 'https://53d44c5b820c4c7589f8a33bf6fdeec3@sentry.io/1535742' });
			Sentry.setExtra("USER_ID", _USER_ID);
			Sentry.setExtra("USER_NM", _USER_NM);
			Sentry.setExtra("USE_INTT_ID", _USE_INTT_ID);
			Sentry.setExtra("USE_INTT_NM", _USE_INTT_NM);
		});	
	} else {
		//done
	}
} else {
	//done
}

</script>
	







<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta http-equiv="Pragma" content="No-Cache">

<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta name="format-detection" content="telephone=no">

<meta name="url" content="http://flow.team/collabo/flow_layout_view.jsp" >
<meta name="conn" content="" >

<meta name="theme-color" content="#5f5ab9">

<title>【플로우】 - 1위 스마트워크 협업툴</title>
<meta name="description" content="프로젝트관리 중심의 그룹웨어 협업툴 플로우는 프로젝트 일정관리, 일정공유, 업무관리를 통해 업무생산성을 높여 스마트워크가 가능하게 해드리는 1위 업무관리시스템입니다. 업무용메신저, 사내메신저를 통해 사내커뮤니케이션 효율성을 높여드립니다. 30일 무료 체험이 가능합니다." >
<meta name="keywords" content="프로젝트관리, 협업툴, 그룹웨어, 협업도구, 일정관리, 일정공유, 업무관리, 업무생산성, 스마트워크, 업무관리시스템, 업무용메신저, 사내메신저, 사내커뮤니케이션">

<meta property="og:url" content="http://flow.team/collabo/flow_layout_view.jsp" >
<meta property="og:title" content="【플로우】 - 1위 스마트워크 협업툴">
<meta property="og:type" content="website" >
<meta property="og:description" content="프로젝트관리 중심의 그룹웨어 협업툴 플로우는 프로젝트 일정관리, 일정공유, 업무관리를 통해 업무생산성을 높여 스마트워크가 가능하게 해드리는 1위 업무관리시스템입니다. 업무용메신저, 사내메신저를 통해 사내커뮤니케이션 효율성을 높여드립니다. 30일 무료 체험이 가능합니다.">      
<meta property="og:image" content="https://flow.team/design2/homepage_2019/img/flow_meta.png">

<meta name="author" content="Madras check" >
<meta name="subject" content="work tool" >
<meta name="copyright" content="Madras check" >
<meta name="content-language" content="ko" >
<meta property="og:locale" content="ko_KR" />

<link rel="canonical" href="http://flow.team/collabo/flow_layout_view.jsp">
<link rel="SHORTCUT ICON" href="/design2/favicon.ico">
<link rel="icon" type="image/x-icon" href="/design2/favicon.ico">

<meta name="twitter:card" content="summary">
<meta name="twitter:url" content="http://flow.team/collabo/flow_layout_view.jsp">
<meta name="twitter:title" content="【플로우】 - 1위 스마트워크 협업툴">
<meta name="twitter:description" content="프로젝트관리 중심의 그룹웨어 협업툴 플로우는 프로젝트 일정관리, 일정공유, 업무관리를 통해 업무생산성을 높여 스마트워크가 가능하게 해드리는 1위 업무관리시스템입니다. 업무용메신저, 사내메신저를 통해 사내커뮤니케이션 효율성을 높여드립니다. 30일 무료 체험이 가능합니다.">
<meta name="twitter:image" content="https://flow.team/design2/homepage_2019/img/flow_meta.png">

<meta name="google-play-app" content="app-id=com.webcash.bizplay.collabo" >
<meta name="apple-itunes-app" content="app-id=939143477">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta itemprop="image" content="https://flow.team/design2/homepage_2019/img/flow_meta.png">
<meta property="og:site_name" content="【플로우】 - 1위 스마트워크 협업툴">
<meta property="fb:app_id" content="1491712834464733">	


	




<link rel="stylesheet" type="text/css"
	href="/design2/css/reset.css?5.1.211.339" />
<link rel="stylesheet" type="text/css"
	href="/design2/css/style.css?5.1.211.339" />
<link rel="stylesheet" type="text/css"
	href="/design2/css/contents.css?5.1.211.339" />
<link rel="stylesheet" type="text/css"
	href="/design2/css/main.css?5.1.211.339" />
<link rel="stylesheet" type="text/css"
	href="/design2/css/f_login.css?5.1.211.339" />
<link rel="stylesheet" type="text/css"
	href="/design2/css/f_pay.css?5.1.211.339" />
<link rel="stylesheet" type="text/css"
	href="/design2/css/2020/collabo3_file.css?5.1.211.339" />
<link rel="stylesheet" type="text/css"
	href="/design2/css/2020/flow_chatbot.css?5.1.211.339" />
<link rel="stylesheet" type="text/css"
	href="/design2/css/layer_popup.css?5.1.211.339" />
	<link rel="stylesheet" type="text/css"
	href="/design2/css/flow_task.css?5.1.211.339" />



<!-- control js -->
<script type="text/javascript"
	src="/js/collabo/collabo2019/enter_control.js?5.1.211.339"></script>

<!-- with view-->
<script type="text/javascript" src="/js/collabo/collabo2020/auth_layer.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2020/layout_api.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2020/electron_api.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_layout.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_layer_popup.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_detail.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/inc/collabo3_left.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/inc/collabo3_content.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_openproj.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_apprwait.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_clph_setting.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_upgrade.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_iamport_payment.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_base.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_pwd.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_noti_settings.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_lock_mode.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_access_device.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_comp_mngmt.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_user_mngmt.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_prj_mngmt.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_file_mngmt.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_appr_mngmt.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_task.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_schedule.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_user_report.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_dvsn_report.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_cloud_link.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_copy_commt.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_file.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2020/flow_chatbot.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2020/chat/chat_api.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/collabo2020/flow_jex_ajax.js?5.1.211.339"></script>	

<!-- only js -->
<script type="text/javascript"
	src="/js/collabo/flow_scrap.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_invite_layer.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_mention.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_text.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_editor.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_task.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_schd.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_todo.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_remark.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_upload.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_sendience.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_project.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_editor_popup.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/flow_lang_timezone_settings.js?5.1.211.339"></script>
<script type="text/javascript"
	src="/js/collabo/collabo3_prj_favorite.js?5.1.211.339"></script>
<script type="text/javascript" src="/js/collabo/task2019/chat_bot.js?5.1.211.339"></script>	
	









<script type="text/javascript"
	src="/js/collabo/collabo3_make.js?5.1.211.339"></script>








<!--  카카오픽셀 -->
<script type="text/javascript" charset="UTF-8"
	src="/js/collabo/task2019/kakaoPixel.js"></script>
<script type="text/javascript">
	if (b_flowCloud && !b_testTeamDev && !b_enter) {
		kakaoPixel('6501044944766874017').pageView();
		kakaoPixel('6501044944766874017').completeRegistration();
	} else {
		//done
	}
</script>
<!--  카카오픽셀 end -->
</head>

<body style="background: #f2f2f2;">

	<form id="bizplayInappFrm" name="bizplayInappFrm" target="buyPoptest"
		action="https://www.bizplay.co.kr/stup_in_app_attr.act" method="post">
		<input type="hidden" name="CALLBACK_URL"
			value="http://flow.team/buy_callback.act" /> <input type="hidden"
			name="API_KEY" value="88f0d9d0-16a7-4c02-bff0-cc9f74f2c46b" /> <input type="hidden"
			name="APP_SRNO" value="94" />
	</form>

	<input type="hidden" name="user_nm" id="user_nm"
		value="Jeong" />
	<input type="hidden" id="SessionInterval" name="SessionInterval"
		value="3600" />
	<input type="hidden" id="SERVICE_URL" name="SERVICE_URL"
		value="null">
	<input type="hidden" id="PTL_ID" name="PTL_ID"
		value="PTL_3" />
	<input type="hidden" id="CNTS_GB" name="CNTS_GB" value="CNTS_COLABO" />
	<input type="hidden" id="_noticeSrno" name="_noticeSrno"
		value="" />
	<input type="hidden" id="PG_NO" name="PG_NO" value="" />
	<input type="hidden" id="PG_PER_CNT" name="PG_PER_CNT" value="" />
	<input type="hidden" id="USER_ID" name="USER_ID"
		value="ddubing1@gmail.com" />
	<input type="hidden" id="USER_NM" name="USER_NM"
		value="Jeong" />
	<input type="hidden" id="MNGR_DSNC" name="MNGR_DSNC"
		value="N" />
	<input type="hidden" id="BSNN_NM" name="BSNN_NM"
		value="" />
	<input type="hidden" id="COLABO_SRNO" name="COLABO_SRNO"
		value="" />
	<input type="hidden" id="COLABO_COMMT_SRNO" name="COLABO_COMMT_SRNO"
		value="" />
	<input type="hidden" id="T_COLABO_SRNO" name="T_COLABO_SRNO"
		value="" />
	<input type="hidden" id="T_COLABO_COMMT_SRNO"
		name="T_COLABO_COMMT_SRNO"
		value="" />
	<input type="hidden" id="T_COLABO_REMARK_SRNO"
		name="T_COLABO_REMARK_SRNO"
		value="" />
	<input type="hidden" id="T_APPR_WAIT_COLABO_SRNO"
		name="T_APPR_WAIT_COLABO_SRNO"
		value="" />
	<input type="hidden" id="PROJ_KEY" name="PROJ_KEY"
		value="" />
	<input type="hidden" id="POST_KEY" name="POST_KEY"
		value="" />
	<input type="hidden" id="TASK_KEY" name="TASK_KEY"
		value="" />
	<input type="hidden" id="INVT_KEY" name="INVT_KEY"
		value="" />
	<input type="hidden" id="CHAT_ROOM_SRNO" name="CHAT_ROOM_SRNO" value="" />
	<input type="hidden" id="SERVER_CONN_NUM" name="SERVER_CONN_NUM"
		value="" />
	<input type="hidden" id="ONE_COLABO_SRNO" name="ONE_COLABO_SRNO"
		value="" />
	<input type="hidden" id="LAST_RGSN_DTTM" name="LAST_RGSN_DTTM" value="" />
	<input type="hidden" id="BUY_YN" name="BUY_YN"
		value="N" />
	<input type="hidden" id="afterSubDomain" name="afterSubDomain"
		value="flow.team" />
	<div class="SAVE_CLIP_BOARD" style="display: none;"></div>

	<div id="pc_alarm" class="pc_alarm"
		style="width: 420px; position: fixed; bottom: 10px; right: 10px; z-index: 999999; display: none; cursor: pointer;">
		<div class="pc_alarm_po">
			<a class="pc_alarm_close"><img
				src="/design2/img_rn/btn/pc_alarm_close.gif" alt="닫기"></a>
			<div class="pc_alarm_cont">
				<div class="rgt_cont">
					<dl>
						<dt>
							<img src="/design2/img_rn/img_photo_null5.png" alt="파일"
								class="photo"
								onerror='this.src="/design2/img_rn/img_photo_null5.png"'
								data-langcode=""><span>000님이 새로운 활동을 등록했습니다.</span>
						</dt>
						<dd></dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
	<div class="alert_wrap" id="layerAlert"
		style="z-index: 99999; top: 50px; left: 40%; display: none; text-align: center;">
		<div class='alert_box'>
			<pre></pre>
		</div>
	</div>
	<div class="wrap">
		<div class="top_wrap_fix">

			<!-- 기간만료알림-팀관리자 -->
			<div class="top_noti_alert bgcolor4" id="businessEndMngrLayer"
				style="display: none;">
				<div class="size_wrap4">
					<span><span data-langcode="FL541">기업용 버전 무료 체험기간이</span>&nbsp;
						<span id="businessEndMngrGrc">N</span><span data-langcode="FL542">에
							종료될 예정입니다. 계속 이용하려면 결제가 필요합니다.</span></span> <a class="button"
						id="businessPayment" data-langcode="FL543">결제하기</a>
				</div>
			</div>
			<!-- 기간만료알림-팀원 -->
			<div id="businessEndLayer" class="top_noti_alert bgcolor4"
				id="businessEndMngrLayer" style="display: none;">
				<div class="size_wrap4">
					<span><span data-langcode="FL541">기업용 버전 무료 체험기간이</span> <span
						id="businessEndMngrGrc">N</span><span data-langcode="FL545">에
							종료될 예정입니다. 관리자에게 문의해주세요.</span></span>
					<!--<button title="닫기" class="bcp_close"></button>-->
				</div>
			</div>
			<!-- 브라우저체크알림 -->
			<div class="top_noti_alert bgcolor1" id="desktop_noti_popup0"
				style="display: none;">
				<div class="size_wrap4">
					<span id="alert_string" data-langcode="FL546">IE 10 이하 버전은
						지원하지 않습니다. 플로우 데스크탑 버전을 이용해 보세요.</span> <a class="button"
						onclick="fn_direcktPcDownload()" data-langcode="H80">다운로드</a>
					<button title="닫기" class="bcp_close"></button>
				</div>
			</div>
			<!-- 바탕화면알림사용 -->
			<div class="top_noti_alert bgcolor2" id="desktop_noti_popup2"
				style="display: none;">
				<div class="size_wrap4">
					<span data-langcode="FL548">알림을 사용하지 않으면 중요한 알림을 놓치실 수 있습니다.</span>
					<a class="underline" data-langcode="FL549">바탕화면 알림 사용하기</a><a
						class="underline_b" data-langcode="FL550">나중에 하기</a><a
						class="underline" data-langcode="FL551">다시 물어보지 않기</a>
					<button title="닫기" class="bcp_close"></button>
				</div>
			</div>
			<!-- 브라우져알림받기 -->
			<div class="top_noti_alert bgcolor3" id="desktop_noti_popup1"
				style="display: none;">
				<div class="size_wrap4">
					<span data-langcode="FL552">플로우 브라우저 알림을 받아보세요.</span> <a
						class="button" data-langcode="FL553">알림 사용하기</a>
					<button title="닫기" class="bcp_close"></button>
				</div>
			</div>

			
			<!-- 데스크탑다운로드 -->
			<div class="top_noti_alert bgcolor0" id="flowDownLayer"
				style="display: none;">
				<div class="size_wrap4">
					<span data-langcode="FL554">플로우에 최적화된 데스크탑 버전을 이용해 보세요.</span> <a
						class="button" onclick="fn_direcktPcDownload()"
						data-langcode="H80">다운로드</a>
					<button title="닫기" class="bcp_close" style="color: #fff"></button>
				</div>
			</div>

			

			<div id="topViewer" class="top_wrap" style="padding-left: 0px;"
				style="display:block;">
				<div class="top_search_wrap">
					
					<h1>
						<a id="compLogo"><img style="cursor: pointer;"
							src="/design2/img_rn/logo_top.png?2" alt="FLOW"></a>
					</h1>
					
					<div class="input_search on">
						<div class="input_search_in" id="collaboSearch" style="display: block;">
						
							<div class="input-search-content">
								<!-- 2019.08.08 검색바 -->
								<div id="inProjSearch" class="search_label" style="display: none;">
									<span></span><a id="inProjSearchClose">닫기</a>
								</div>
								<span id="openProjSearch" class="opensrchtxt" style="display: none; width:30%">
									<label data-langcode="FL556">회사 공개 프로젝트</label>
								</span> 
								<span id="flowSearch" class="arr" SRCH_GB=""> 
									<label SRCH_GB="" data-langcode="FL557" style="display: none;">전체</label>
									<label SRCH_GB="M" data-langcode="FL558" style="display: none;">프로젝트</label>
									<label SRCH_GB="P" data-langcode="FL559" style="display: none;">글</label>
									<label SRCH_GB="R" data-langcode="CLP1042" style="display: none;">댓글</label> 
									<label SRCH_GB="S" data-langcode="FL560" style="display: none;">참여자</label> 
									<label SRCH_GB="I" data-langcode="FL561" style="display: none;">아이디</label>
									
									<ul style="display: none;">
										<li SRCH_GB="" data-langcode="FL557">전체</li>
										<li SRCH_GB="M" data-langcode="FL558">프로젝트</li>
										<li SRCH_GB="P" data-langcode="FL559">글</li>
										<li SRCH_GB="R" data-langcode="CLP1042">댓글</li>
										<li SRCH_GB="S" data-langcode="FL560">참여자</li>
										
									</ul>
								</span> <input id="collaboSrchWd" type="text" placeholder=""
									data-langcode="FL562">
								<a class="ico"></a>
							</div>
							
						</div>
						<div class="input_search_in" id="taskSearch"
							style="display: none;">
							<span class="arr" SRCH_GB="TASK_NM"> <label>업무명</label>
								<ul style="display: none;">
									<li SRCH_GB="TASK_NM" data-langcode="FL563">업무명</li>
									<li SRCH_GB="TASK_NUM" data-langcode="FL564">업무번호</li>
									<li SRCH_GB="RGSR_NM" data-langcode="FL565">작성자</li>
									<li SRCH_GB="WORKER_NM" data-langcode="FL566">담당자</li>
									<li SRCH_GB="PRJ_TTL" data-langcode="FL567">프로젝트명</li>
									<li SRCH_GB="PRJ_SRNO" data-langcode="CD579">프로젝트 번호</li>
								</ul>
							</span> <input id="taskSrchWd" type="text"  style="width: 50%;"> <a class="ico"></a>
						</div>

						<div id="file-search-bar" class="input_search_in"
							style="display: none;">
							<input id="file-search-word" data-srch="ITEM_NM" type="text" maxlength="50"
								placeholder="파일명 검색"> <a style="cursor: pointer"
								class="btn_srh search-add-cond-btn"><span data-langcode="ui.label.advanced_search">상세검색</span></a>
							<!-- 더보기 pop -->
							<div class="search-add-cond-layer layerstyle1 type4"
								style="z-index:0;display: none; top: 40px; right: -173px;">
								<div class="layerstyle1_po" style="padding: 20px 21px 0 14px;">
									<span class="tail"
										style="left: 50%; transform: translateX(-50%);"></span>
									<div class="srh_filebx">
									<div class="txt_info">
										<div>
											<h5 data-langcode="ui.label.filename">파일명</h5>
											<div class="ipt_bx" style="width: 296px;">
												<input id="file-search-cond-word" data-srch="ITEM_NM" type="text" class="ipt_srh" value="" placeholder="프로젝트 기준 [파일명, 폴더명, 등록자명] 검색" autocapitalize="off">
											</div>
										</div>
										<div>
											<h5 data-langcode="ui.label.registrant">작성자명</h5>
											<div class="ipt_bx" style="width: 296px;">
												<input id="writer-search-cond-word" data-srch="RGSR_NM" type="text" placeholder="작성자명을 입력하세요." autocapitalize="off">
											</div>
										</div>
										<div>
											<h5 data-langcode="ui.label.project_name">프로젝트명</h5>
											<div class="ipt_bx" style="width: 296px;">
												<input id="proj-search-cond-word" data-srch="PROJ_NM" type="text" placeholder="프로젝트명을 입력하세요." autocapitalize="off">
											</div>
										</div>
										<div>
										<h5 data-langcode="ui.label.period">기간</h5>
											<div class="settingDateLayer combo_style2" style="width: 296px; cursor: pointer">
											<!-- [D] 활성 class="combo_active" 추가 / 비활성 class="combo_dis"-->
												<label for="settingDate" data-month="99">기간설정</label> <a class="btn"></a>
												<div class="scrollbx" id="">
													<ul id="settingDate" style="display: none;">
														<li data-month="0" data-langcode="AA0003">전체</li>
														<li data-month="1" data-langcode="CC658">1개월</li>
														<li data-month="3" data-langcode="CC659">3개월</li>
														<li data-month="6" data-langcode="FA1393">6개월</li>
														<li data-month="12" data-langcode="ui.label.one_year">1년</li>
														<li data-month="99" data-langcode="ui.label.set_period">기간설정</li>
													</ul>
												</div>
											</div>
										</div>
										
										<div id="customDateDiv" class="file-detail-search">
											<input type="text" id="startDate">
											<i>~</i>
											<input type="text" id="endDate">
										</div>
										</div>
									
									
									
									<!-- 
										<div class="ipt_bx mgb10" style="width: 100%;">
											<input id="file-search-cond-word" data-srch="ITEM_NM"
												type="text" class="ipt_srh" value="" placeholder="파일명 검색">
										</div>
										<div class="txt_info">
											<div class="mgb10">
												<h5
													style="float: left; margin-right: 20px; height: 30px; line-height: 32px; width: 100px">작성자명</h5>
												<div class="ipt_bx" style="width: 230px;">
													<input data-srch="RGSR_NM" type="text"
														placeholder="작성자명을 입력하세요.">
												</div>
											</div>
											<div class="mgb10">
												<h5
													style="float: left; margin-right: 20px; height: 30px; line-height: 32px; width: 100px">프로젝트명</h5>
												<div class="ipt_bx" style="width: 230px;">
													<input data-srch="PROJ_NM" type="text"
														placeholder="프로젝트명을 입력하세요.">
												</div>
											</div>
											<div style="margin-bottom: 2px;">
												<h5
													style="display: inline-block; margin-right: 29px; width: 87px">기간</h5>
												<div class="settingDateLayer combo_style2 combo_dis"
													style="width: 230px; cursor: pointer">
													<!-- [D] 활성 class="combo_active" 추가 / 비활성 class="combo_dis"
													<label for="settingDate" data-month="0">전체</label> <a class="btn"></a>
													<div class="scrollbx" id="">
														<ul id="settingDate">
															<li data-month="0">전체</li>
															<li data-month="1">1개월</li>
															<li data-month="3">3개월</li>
															<li data-month="6">6개월</li>
															<li data-month="12">1년</li>
															<li data-month="99">기간설정</li>
														</ul>
													</div>
												</div>
											</div>
											
											<div id="customDateDiv" style="padding-bottom:15px; display:none">
											    <h5 style="display: inline-block; margin-right: 29px; width: 87px"></h5>						
											    <input type="date" id="startDate" class="hasDatepicker">~
											    <input type="date" id="endDate" class="hasDatepicker">
											</div>
										</div>
										-->
									</div>
								</div>
								<div class="layerstyle_btm search_file"
									style="position: relative;">
									<div class="left" style="top: 21px; left: 19px;">
										<a style="cursor: pointer" class="btn_reset"><span data-langcode="CT899">초기화</span></a>
									</div>
									<a style="cursor: pointer" class="fsb_search"><span data-langcode="AA0009">검색</span></a>&nbsp;<a
										class="fsb_search fsb_close"><span data-langcode="ui.label.cancel">닫기</span></a>
								</div>
							</div>
						</div>

					</div>

					<div id="userInfoRightBox" class="type2_right">
						<a id="pcDownload" class="top_link_btn" style="display: none;">
							<img style="margin-top: -2px;" alt="New"
							src="/design2/img_rn/ico/ico_new4.png">&nbsp;데스크탑 앱 update
							1.0.7
						</a>

						

						<!-- 마스터 설정 -->
						
						<a id="businessUpgrade" class="top_text_btn"
							style="display: none;" data-langcode="FL569">기업용 버전 소개</a> <a
							id="invtTeamMember" class="top_text_btn _plus"
							style="display: none; padding-left: 25px;" data-langcode="FL570">직원초대</a>
						<a id="teamManagerSetting" class="top_text_btn"
							style="display: none;" data-langcode="FL569">관리자 설정</a> <a
							id="serviceUpgrade" class="top_text_btn" style="display: none;"
							data-langcode="FL572">서비스 업그레이드</a>

						<!-- 채팅 -->
						<a class="top_icon_btn _chat" id="topChatIcon"> <span
							style="display: none;"></span> <img id="coachChat"
							src="/design2/img_rn/img_todo_chat.png"
							style="display: none; z-index: 11000; position: absolute; top: -3px; right: 0px;">
							<!-- <span id="coachChatLayer" style="left: 0px; top: 0px; right: 0px; bottom: 0px; display: none; position: fixed; z-index: 10000; opacity: 0.5; background-color: rgb(0, 0, 0);"></span>  -->
						</a>

						<div id="layer_chat" class="layerstyle1 type2"
							style="width: 380px; right: 0px; z-index: 1050; top: 57px; display: none;">
							<div class="layerstyle1_po" style="height: 550px;">
								<!-- tab -->
								<div class="add_alram_tab">
									<div class="add_alram_tab_box">
										<a class="tab1 on" data-langcode="FL589">채팅</a><a
											class="tab3 off" data-langcode="FL590">연락처</a>
									</div>
									<div class="right">
										<a id="alarmBtnClicked" class="icon_chatalram off"
											data-langcode="FL591">알림꺼짐</a> <a id="newChat"
											class="icon_newchat"><span class="blind"
											data-langcode="FL592">새채팅</span></a>
									</div>
								</div>
								<div class="chat_search_box">
									<input type="text" id="chatSrchWd" placeholder="채팅방 또는 이름 검색"
										data-langcode="FL593">
								</div>
								<div id="no_chatlist" class="no_chatlist"
									style="display: none; max-height: 100%; height: 425px;"
									data-langcode="FL594">채팅이 없습니다.</div>
								<div id="chat_list" class="chat_list_wrap type1"
									style="display: block; max-height: 100%; height: 450px; border-radius: 7px;">
									<div id="chat_popup_list" style="display: none;"></div>
									<div id="prfl_popup_list" style="display: none;">
										<div class="myprofile_box" style="display: block;">
											<h5 id="title" style="display: block;" data-langcode="FL595">내
												프로필</h5>
											<div class="myprofile" id="prflMine"
												style="border-bottom: 1px solid #d3d5d6; display: block;">
												<div class="chat_viewImg type1" id="prfl_viewImg">
													<div>
														<span> <img src="design2/img_rn/thumb40.gif"
															id="prfl_viewImg_url" alt=""
															style="cursor: pointer; transform: translate(-50%, -50%); top: 50%; left: 50%; position: absolute;"></span>
														<img src="/design2/img_rn/bi_s_flowsymbol.png"
															id="prfl_company_img" alt="flow" class="syb"
															style="display: none;">
													</div>
												</div>
												<strong class="myprofile_name" id="prfl_name"
													style="cursor: pointer; display: inline-block; white-space: nowrap; width: 155px; text-overflow: ellipsis; overflow: hidden"></strong>
												<strong class="bdg_chat" id="bdg_chat"></strong>
											</div>
										</div>
										<div class="chat_addList new" id="prflNew"
											style="display: none;">
											<h5 id="title" style="display: block;" data-langcode="FL596">신규
												연락처</h5>
											<ul></ul>
										</div>
										<div class="chat_addList" id="prflExisting"
											style="display: block;">
											<h5 id="title" style="display: block;" data-langcode="FL597">전체
												연락처</h5>
											<ul></ul>
										</div>
									</div>
								</div>
								<div id="chatItem" class="chat_list_wrap" style="display: none;">
									<ul style="cursor: pointer;">
										<li>
											<div class="chat_viewImg">
												<div id="chat_viewImg2"></div>
											</div>
											<dl>
												<dt>
													<strong id="room_name"
														style="font-size: 13px; max-width: 155px;"> </strong> <span
														id="chat_user" class="chatuser" style="margin-left: 0px;">
													</span> <img id="noti_off_img"
														src="/design2/img_rn/ico/icon_s_chatalram_off.png"
														alt="알림꺼짐" style="margin-left: 0px;"> <span
														id="pin-check" PIN_SET_DTTM="" style="display: none;">
														<img src="/design2/img_rn/ico/icon_fixed.png?1" alt="상단고정"
														style="margin-left: 0px;">
													</span> <span id="date"
														style="font-size: 11px; line-height: 20px; margin-right: 10px; color: #a0a0a0; vertical-align: middle; float: right; font-weight: normal;"></span>
												</dt>
												<dd class="txt"
													style="font-size: 11px; height: 34px; overflow: hidden;">
													<pre
														style="font-size: 11px; text-overflow: ellipsis; word-break: break-all;"
														class="txt" id="cntn"></pre>
												</dd>
												<!-- @유민호 : 날짜위치변경 190816 <dd class="date" id="date" style="font-size: 11px;"></dd>  -->
											</dl> <strong class="bdg" id="bdg"> </strong>
										</li>
									</ul>
								</div>
								<div style="display: none;">
									<ul id="prflItem">
										<li style="border-bottom: 1px solid #e8e8e8;">
											<div class="chat_viewImg type1" id="prfl_viewImg">
												<div>
													<span><img src="/design2/img_rn/thumb26.gif"
														onerror="this.src='/design2/img_rn/thumb26.gif'"
														id="prfl_viewImg_url"
														style="cursor: pointer; transform: translate(-50%, -50%); top: 50%; left: 50%; position: absolute;">
													</span>
												</div>
											</div>
											<dl style="border-bottom: none;">
												<dt id="prfl_name_dt">
													<strong id="prfl_name" style="cursor: pointer;"> </strong>
												</dt>
												<dd id="prfl_sub"></dd>
											</dl> <strong class="bdg" id="bdg_chat" style="display: none;"></strong>
											<a class="bdg" id="bdg_invite" style="display: none;"></a>
										</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- 알림 -->
						<a class="top_icon_btn _alarm" id="topAlarmIcon"><span
							style="display: none;"></span></a>


						<div id="layer_noti" class="layerstyle1 type2"
							style="width: 380px; right: 0px; z-index: 1050; top: 57px; display: none;">
							<div class="layerstyle1_po" style="height: 550px;">
								<div class="add_alram_tab">
									<div class="add_alram_tab_box">
										<a class="tab1 on" data-langcode="CD741">미확인알림</a><a
											class="tab3 off" data-langcode="FL585">전체알림</a>
									</div>
									<div class="right">
										<a id="allread" class="allread on" data-langcode="FL586">모두
											읽음</a>
									</div>
								</div>

								<div id="alamProgress"
									style="display: none; width: 100%; background-color: rgb(242, 242, 242);">
									<div
										style="width: 100%; background-color: rgb(107, 101, 220); height: 3px;"></div>
								</div>

								<!-- 2019.07.29 수정 -->
								<!-- 검색 -->
								<div class="chat_search_box">
									<input id="alamSrchWd" type="text" placeholder="알림 검색">
									<!-- 2019.08.14 추가 -->
									<a id="srchRequire" class="btn_chat_search "
										data-langcode="DFLT570">검색조건</a>
									<!-- 검색조건 팝업 -->
									<div id="srchRequireWindow" class="chat_search_sort"
										style="top: 24px; right: 10px; display: none;">
										<ul>
											<!-- 선택시 class="active" 추가 -->
											<li class="active no_select_text" data="0"><a
												data-langcode="FL567">프로젝트명</a></li>
											<li class="active no_select_text" data="1"><a
												data-langcode="AA0039">내용</a></li>
											<li class="active no_select_text" data="2"><a
												data-langcode="FL565">작성자</a></li>
										</ul>
									</div>
									<!--// 검색조건 팝업 -->
									<!--// 2019.08.14 추가 -->
								</div>
								<!--// 검색 -->

								<div id="no_alramlist" class="no_alramlist"
									style="display: none; max-height: 100%;" data-langcode="FL587">지금은
									새로운 알림이 없습니다.</div>
								<div id="no_result" class="no_result" style="display: none;"
									data-langcode="CLP1114">검색결과가 없습니다</div>
								<div id="alram_list" class="add_alram_wrap"
									style="display: block; max-height: 100%; height: 450px; border-radius: 0 0 7px 7px;">
									<div id="alram_top" class="add_alram_top"></div>
								</div>
								<div id="alramItem" style="display: none;">
									<dl>
										<dt>
											<span id="TTL"
												style="font-size: 13px; display: inline-block; text-overflow: ellipsis; max-width: 180px; overflow: hidden;"></span>
											<span class="date"
												style="font-size: 13px; font-size: 11px; color: #a0a0a0; line-height: 18px; word-wrap: break-word; font-weight: normal; float: right; margin-right: 10px;"></span>
										</dt>
										<!-- @유민호 : 날짜위치 변경<dt id="TTL" style="font-size: 13px;"></dt>-->
										<dd class="imgdd">
											<img src="/design2/img_rn/img_photo_null40.png" alt=""
												class="photo"
												onerror="this.src='/design2/img_rn/img_photo_null40.png'"><span
												class="emoticon" style="display: none;"><img src=""
												alt="" style="width: 16px; height: 16px;"></span> <span
												id='alamMsg'></span>
											<button id="alamReadBtn"
												style="display: none; align: right; float: right; font-weight: 700; font-size: 12px; color: #5f5db7; text-decoration: underline; margin-right: 3px;"
												data-langcode="CD763">읽음</button>
										</dd>
										<dd class="color"
											style="overflow: hidden; max-width: 280px; max-height: 50px; text-overflow: ellipsis; display: inline-block; white-space: pre;"></dd>
										<dd class="filephoto" style="display: none;">
											<span id="IMG_ATCH" style="display: none;"><img
												src="/design2/img_rn/ico/ico_s_photo.png" alt="">&nbsp;<span
												data-langcode="CD745">이미지</span></span> <span id="ATCH"
												style="display: none;"><img
												src="/design2/img_rn/ico/ico_s_file.png" alt="">&nbsp;<span
												data-langcode="FL588">파일</span></span>
										</dd>
										<!-- @유민호 : 날짜위치 변경 190816 <dd class="date"></dd> -->
									</dl>
								</div>
							</div>
						</div>

						<!-- 유저인포 -->
						<div class="top_userinfo_btn">
							<img id="compLogo" alt=""
								style="max-width: 90px; max-height: 20px; display: none;">
							<div class="userphoto" style="overflow: hidden;">
								<img
									style="left: 50%; top: 50%; width: 30px; height: 30px; position: relative; transform: translate(-50%, -50%);"
									onerror="this.src='/design2/img_rn/account_default30.png'"
									alt="" src="/design2/img_rn/account_default30.png">
							</div>
						</div>

						<!-- 내정보 -->
						<div id="userPopup" class="layerstyle1 type3"
							style="top: 57px; width: 300px; right: 0px; display: none; z-index: 1050;">

							<div class="layerstyle1_po" style="padding: 15px;">
								<a class="btn_style7" id="businessUpgrade1"
									style="display: none; min-width: 240px;"
									onclick="upgrade.show();" data-langcode="FL573">업그레이드 플랜
									살펴보기</a>
								<div class="top_pf_pop">
									<div
										style="transform: translateX(-50%); left: 50%; width: 38px; height: 38px; position: relative; overflow: hidden; border-radius: 20px; border: 1px solid rgb(211, 211, 211); border-image: none;">
										<img
											style="left: 50%; top: 50%; width: 38px; height: 38px; position: absolute; transform: translate(-50%, -50%);"
											onerror="this.src='/design2/img_rn/account_default30.png'"
											alt="" src="/design2/img_rn/account_default30.png">
									</div>
									<strong></strong>
									<p></p>
								</div>
								<ul class="top_pf_menu">
									<li id="envSetting" class="ico1" data-langcode="FL574">환경설정</li>
									<li id="help" class="ico5" data-langcode="FL575">도움말</li>
									<li id="appDownload" class="ico2" data-langcode="H80">다운로드</li>
									<li id="logout" class="ico3" data-langcode="FL577">로그아웃</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="check_select_wrap" style="display: none;">
					<a class="cancel" style="" data-langcode="H417"><span class="blind">닫기</span></a> <span
						class="txt"><span id="check_cnt">1</span> <span
						data-langcode="FL578">개의 프로젝트 선택됨</span></span>
					<div class="m_right">
						<a id="topIco4" data-langcode="FL579">색상 설정</a> <a id="topIco1"
							data-langcode="FL580">보관함 설정</a> <a id="topIco5"
							data-langcode="FL581">푸시 설정</a> <a id="topIco2"
							data-langcode="FL582">알림 설정</a> <a id="topIco3"
							data-langcode="FL583">숨기기</a>
						<!-- 필터 layerpop -->
						<div class="lypop_st1" id="mainColorSettingLayer"
							style="display: none; padding-top: 0; margin-top: 13px;">
							<div class="lypopst_cont">
								<ul class="flowColorbox">
									<li class="flowColor_0" data="0"></li>
									<li class="flowColor_4" data="4"></li>
									<li class="flowColor_8" data="8"></li>
									<li class="flowColor_1" data="1"></li>
									<li class="flowColor_10" data="10"></li>
									<li class="flowColor_2" data="2"></li>
									<li class="flowColor_7" data="7"></li>
									<li class="flowColor_3" data="3"></li>
									<li class="flowColor_6" data="6"></li>
									<li class="flowColor_9" data="9"></li>
									<li class="flowColor_5" data="5"></li>
									<li class="flowColor_11" data="11"></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div id="myProgress"
					style="width: 100%; background-color: rgb(242, 242, 242); display: none">
					<div id="myBar"
						style="width: 0%; background-color: #6b65dc; height: 3px;"></div>
				</div>

			</div>
		</div>

		<!-- 20190128 all center layout -->
		<div id="copy-pop-layer" class="lypopIframe_wrap"
			style="display: none;">




<div class="pop-allcenter-layout">
	<section>
		<article>
			<!-- 20190128  layerpopup -->
			<div class="layerstyle4 _postCopy_wrap">
				<!-- [D] 20190128 class="_postCopy_wrap" 추가 -->

				<!-- [D] 프로젝트 선택 -->
				<div id="copy-prj-list" class="layerstyle4_po">
					<div class="layerstyle4_title">
						<h3 style="padding-top: 16px;" data-langcode="CCC1196">프로젝트 선택</h3>
						<button type="button" class="btn_layerstyle4_close" title="닫기"></button>
					</div>
					<div class="layerstyle4_cont">
						<!-- 검색영역 -->
						<div class="user_search_wrap">
							<span class="srchico"><input name="prj-srch" type="text"
								placeholder="프로젝트명 또는 참여자명으로 검색" style="width:600px" maxlength="30" data-langcode="CCC1197">
								<button type="button" title="삭제"></button></span>
						</div>
						<!-- //검색영역 -->

						<!-- scroll 영역 -->
						<div class="postCopy_scroll" style="height: 500px;">
							<div class="flowListWrap item_list_type"></div>
						</div>
						<!-- //scroll 영역 -->
						<!-- [D] 하단에디트영역 : 밖으로 분리 -->
						<div class="pst_btn_bx t_center">
							<div class="left">
								<button id="prj-reset" class="btn_style01" data-langcode="CT899">초기화</button>
							</div>
							<button id="prj-select" class="btn_style00" data-langcode="CCC1199">2개 선택</button>
						</div>
						<!-- //[D] 하단에디트영역 : 밖으로 분리 -->
					</div>
				</div>
				<!-- //[D] 프로젝트 선택 -->

				<!-- [D] 글복사 -->
				<div id="post-copy-layer" class="layerstyle4_po" style="display: none;">
					<div id="upload-status-layer" class="post_dnd_ly" style="display: none;">
										<div class="post_dnd_ly_po on">
											<div id="upload-progress-bar" class="status_bar" style="width: 0%; display: none;"></div>
											<div id="drag-and-drop-guide" class="txt" style="color: rgb(0, 0, 0); display: block;" data-langcode="CD773">첨부할 파일, 이미지 등을 여기에 끌어다 놓으세요.</div>
											<div class="pctfilenm" style="display: none;">
												<strong id="upload-percentage">undefined%</strong>
												<span id="upload-name"></span>
											</div>
										</div>
								<div id="drop-layer" style="position:absolute;top:0;left:0;width:100%;height:100%;background-color:#00000000"></div>
					</div>
					<div class="layerstyle4_title">
						<h3 data-langcode="CD762">다른 프로젝트에 올리기</h3>
						<h4 style="font-weight: 1000;">
							[마케팅] Purple Meetup 2019 <span data-langcode="CCC1202">외 2개 프로젝트</span> 
						</h4>
						<button type="button" class="btn_layerstyle4_back" onclick=""
							title="이전"></button>
						<button type="button" class="btn_layerstyle4_close" onclick=""
							title="닫기"></button>
					</div>
					<div class="layerstyle4_cont">						
						<!-- scroll 영역 -->
						<div class="postCopy_scroll" style="overflow-y: scroll;" >
							<!-- [D] 20190128 리얼에서 가져왔습니다 -->
							<!-- 포스트작성화면(글작성) - [D] 20180319 수정 -->
							<div class="post_write_wrap">								
								<div id="post-cntn-area">
									

									
									
								</div>
							</div>
							<!-- //포스트작성화면(글작성) - [D] 20180319 수정 -->
							<!-- //[D] 20190128 리얼에서 가져왔습니다 -->
						</div>
						<!-- //scroll 영역 -->
						<!-- [D] 하단에디트영역 : 밖으로 분리 -->
						<div id="bottom-btn-layer" class="pst_btn_bx" style="padding:11px 0 12px 20px">
							<!-- 파일첨부 -->
							<div id="atch-item" class="fteditbox bdr" style="display:none">
								<!-- 파일 -->
								<span class="btn"> 
									<a id="add-file" style="cursor:pointer" class="app_addfile" title="파일첨부" data-langcode="CD777"></a> 
									<!-- layerpopup -->
									<input id ="file-attach" type="file" name="fileup[]" multiple="multiple" style="display:none;">
									<div id="add-file-layerpopup" class="layerstyle1 file-add-layer" style="bottom: 32px; left: -21px; display: none;">
										<div class="layerstyle1_po">
											<span class="tail_btm" style="left: 23px;"></span>
											<ul class="icon_set_list2">
												<li class="p_icon1">
													<a data-langcode="CD734">PC에서 올리기</a>
												</li>
												<li class="p_icon2" style="display:none;">
													<a data-langcode="CD735">기존파일 가져오기</a>
												</li>
												<li class="p_icon3" style="display:none;">
													<a data-langcode="CD736">외부 클라우드 연동</a>
												</li>
												<li class="p_icon4 flow-only" style="display:none;">
													<a data-langcode="CD737">구글 드라이브에서 가져오기</a>
												</li>
												<li class="p_icon5 flow-only" style="display:none;">
													<a data-langcode="CD738">드롭박스에서 가져오기</a>
												</li>
											</ul>
										</div>
									</div>
									<!-- //layerpopup -->
								</span>
								<!-- //파일 -->

								<!-- 사진 -->
								<span class="btn"> 
									<a id="add-image" style="cursor:pointer" class="app_pic" title="사진첨부" data-langcode="CD778"></a> 
									<!-- layerpopup -->
									<input id ="image-attach" type="file" name="fileup[]" multiple="multiple" accept="image/*" style="display:none;">
									<div id="add-image-layerpopup" class="layerstyle1 image-add-layer" style="bottom: 32px; left: -21px; display: none;">
										<div class="layerstyle1_po">
											<span class="tail_btm" style="left: 23px;"></span>
											<ul class="icon_set_list2">
												<li class="p_icon1">
													<a data-langcode="CD734">PC에서 올리기</a>
												</li>
												<li class="p_icon2" style="display:none;">
													<a data-langcode="CD735">기존파일 가져오기</a>
												</li>
												<li class="p_icon3" style="display:none;">
													<a data-langcode="CD736">외부 클라우드 연동</a>
												</li>
												<li class="p_icon4 flow-only" style="display:none;">
													<a data-langcode="CD737">구글 드라이브에서 가져오기</a>
												</li>
												<li class="p_icon5 flow-only" style="display:none;">
													<a data-langcode="CD738">드롭박스에서 가져오기</a>
												</li>
											</ul>
										</div>
									</div>
									<!-- //layerpopup -->
								</span>
								<!-- //사진 -->

								<!-- 지도 -->
								<span class="btn"> 
									<a id="add-place" style="cursor:pointer" class="app_map" title="지도첨부" data-langcode="CD779">
									</a> <!-- layerpopup -->
									<div id="add-place-input-layer" class="map_search_wrap" style="bottom: 40px; left: -9px; display: none;">
										<div class="map_search_po">
											<span class="tail_btm"></span>
											<div class="map_sch_input">
												<input type="text" name="map-search" placeholder="장소를 입력하세요" autocomplete="off" data-langcode="CD739">
											</div>											
										</div>
									</div>
									<!-- //layerpopup -->
								</span>
								<!-- //지도 -->
							</div>
							<!-- //파일첨부 -->

							<!-- 텍스트꾸밈 -->
							<div id="text-item" class="fteditbox" style="display:none">
								<!-- 볼드 -->
								<span class="btn"><a style="cursor:pointer" class="text_bold off"
									title="굵게"></a></span>
								<!-- on / off -->
								<!-- 이탤릭 -->
								<span class="btn"><a style="cursor:pointer" class="text_italic off"
									title="기울임꼴"></a></span>
								<!-- on / off -->
								<!-- 언더라인 -->
								<span class="btn"><a style="cursor:pointer" class="text_under off"
									title="밑줄"></a></span>
								<!-- on / off -->
								<!-- 취소선 -->
								<span class="btn"><a style="cursor:pointer" class="text_strike off"
									title="취소선"></a></span>
								<!-- on / off -->
							</div>
							<!-- //텍스트꾸밈 -->

							<!-- 20181119 해시태그/at -->
							<div id="tag-item" class="fteditbox" style="display:none">
								<!-- 해시태그 -->
								<span class="btn"><a style="cursor:pointer" class="srch_hashtag"
									title="#"></a></span>
								<!-- at -->
								<span class="btn"><a style="cursor:pointer" class="srch_at"
									title="@"></a></span>
							</div>
							<!-- //20181119 해시태그/at -->

							<div class="right">
								<a id="copy-upload" class="btn_style00" style="cursor:pointer" data-langcode="CD740">올리기</a>
							</div>
						</div>
						<!-- //[D] 하단에디트영역 : 밖으로 분리 -->
					</div>
				</div>
				<!-- //[D] 글복사 -->


			</div>
			<!-- //20190128  layerpopup -->
		</article>
	</section>
</div></div>
		<!-- //20181126 all center layout -->
		<div class="prdbx_wrap center-popup" id="inviteDetail"
			style="display: none; width: 500px; height: 620px; z-index: 1101;">






<!-- //초대하기 상세 -->

    <div class="prdbx_hd">
        <!-- 상단 타이틀 영역 -->
        <div class="prdbx_hd_top">
            <h1 data-langcode="CD780">초대하기</h1>
            <div class="btn_l"></div>
            <div class="btn_r"></div>
        </div>
        <!-- //상단 타이틀 영역 -->
        <!-- 검색영역 -->
        <div class="prdbx_hd_sch" id="invtSrchBox" style="display:block;">
            <div class="prd_schbx_in">
                <input type="text" id="invtSrchTxt" value="">
                <div id="clearInvtSrchTxt" style="cursor:pointer;display: inline-block;position: absolute;right: 16px;margin-top: 6px;background: url(/design3/img_rn/invite/btn_sch_del.png) no-repeat 0 0;background-size:15px;width: 25px;height: 25px;"></div>
            </div>
        </div>
        <!-- //검색영역 -->
    </div>
    <div class="prdbx_cn">
        <!-- 탭영역 -->
        <div class="prd_tab_wrap" id="tabForEmplDvsn" style="display:block;">
            <ul>
                <li class="on" id="empl"><a data-langcode="CL638">구성원</a></li><!-- 활성화클래스 on -->
                <li id="dvsn"><a data-langcode="FIL1572">조직도</a></li>
            </ul>
        </div>
        <!-- //탭영역 -->

        <!-- 참여자 선택 -->
        <div class="prd_namebx bline" id="selectedItemList" style="display:none;"><!-- 라인있는 경우 bline 클래스 추가 -->
            <div class="prd_name_cn" id="selectedRcvrList" >

            </div>
            <div class="prd_name_btn">
                <a class="all_del" data-langcode="FIL1573">전체 삭제</a>
            </div>
        </div>
        <!-- //참여자 선택 -->

        <!-- 조직도 부서 선택시 -->
        <div class="prd_gr_v" style="display:none;">
            <a id="btnDvsnDetailBack" style="display:inline-block;width:15px;height:15px;background:url(../img_rn/invite/btn_prd_gr_minus.gif?2);background-repeat: no-repeat;position:absolute;margin-top: 26px;"></a>
            <div class="prd_gr_txt" style="left: 25px;">
                <!-- 				<span class="ico_group on"></span>활성화클래스 on -->
                <strong></strong>
                <span class="no" style="display:none;"></span>
            </div>
            <div class="btn_r"><a class="btn_prd_add" data-langcode="FIL1574">전체 추가</a></div>
        </div>
        <!-- //조직도 부서 선택시 -->

        <!-- 동료(직원) 없음 -->
        <div class="prd_result_bx type2" style="display:none;" id="noResult">
            <div class="bg"  style="background-image:none;">
                <p class="txt" data-langcode="FIL1575">동료(직원)을 초대해서 즐겁게 일하세요.</p>
                <p class="link" style="display:none;"><a id="teamUrl">http://madrascheck.flow.team</a></p>
            </div>
        </div>
        <!-- //동료(직원) 없음 -->

        <!-- 검색결과 없음 -->
        <div class="prd_result_bx" style="display:none;" id="noSrchResult">
            <div class="bg" style="background-image:none;">
                <p class="txt" data-langcode="FIL1576">검색결과가 존재하지 않습니다.</p>
            </div>
        </div>
        <!-- //검색결과 없음 -->

        <!-- 선택된 참여자 아이템 -->
        <div id="selectedItem" style="display:none;">
            <div class="nameTag_s" style="display:none;">
                <img src="" alt="" onerror="this.src='/design3/img_rn/img_photo_null32.png'">
                <strong data-langcode="H331">이름</strong>
                <button><span class="blind" data-langcode="H381">삭제</span></button>
            </div>
        </div>
        <!-- //선택된 참여자 아이템 -->

        <!-- 참여자/조직도 리스트 -->
        <div class="prdcn_scroll" id="willBeInvitedItemList" style="height:412px;display:block;"><!-- 기본 높이 464px / 탭만 있는 경우 412px / 탭 , 조직도 부서선택 있는경우 340px / 참여자 선택,탭 모두 있는 경우 290px -->
            <div class="prdcn_list">
                <ul></ul>
            </div>
            <div class="prd_gr_list" style="display:none;">
                <ul></ul>
            </div>
        </div>
        <!-- //참여자/조직도 리스트 -->

        <!-- 리스트의 사람 아이템 -->
        <ul id="peopleItem" style="display:none;">
            <li class="invite_li"><!-- 활성화클래스 on --><!--  class="bg depth1 depth2 depth3" -->
                <span class="bg"></span>
                <img id="prflImg" src="" alt="" onerror="this.src='/design3/img_rn/img_photo_null32.png'">
                <div class="prdcn_txt">
                    <p class="info"><strong data-langcode="H331">이름</strong> <span data-langcode="CB1248">직책</span></p>
                    <p class="info_more" data-langcode="FIL1580">회사이름 | 부서명</p>
                </div>
                <div class="btn_r">
                    <a class="btn_prd_add" id="btnPersonAdd" data-langcode="FA1443">추가</a>
                </div>
            </li>
        </ul>
        <!-- //리스트의 사람 아이템 -->

        <!-- 리스트의 부서 아이템 -->
        <ul id="dvsnItem" style="display:none;">
            <li class="invite_li"><!-- 활성화클래스 on -->
                <span class="bg"></span>
                <a class="btn_plus" id="treeOpenBtn" style="display:block;"></a><!-- btn_plus/btn_minus -->
                <div class="prd_gr_txt">
                    <!-- 		<span class="ico_group"></span> -->
                    <strong title="핀테크 그룹핀테크" data-langcode="FIL1582">핀테크 그룹핀테크</strong>
                    <span class="no" style="display:none;">155</span>
                </div>
                <div class="btn_r">
                    <a class="btn_prd_add" id="btnDvsnAdd" data-langcode="FIL1574">전체 추가</a>
                </div>
            </li>
        </ul>
        <!-- //리스트의 부서 아이템 -->


        <!-- 동료(직원) 없음 -->
        <div class="prd_result_bx type2" id="noEmpl" style="display:none;">
            <div class="bg" style="background-image:none;">
                <p class="txt" data-langcode="FIL1575">동료(직원)을 초대해서 즐겁게 일하세요.</p>
                <p class="link"><a href="#none">http://madrascheck.flow.team</a></p>
            </div>
        </div>
        <!-- //동료(직원) 없음 -->

        <!-- 검색결과 없음 -->
        <div class="prd_result_bx" id="noSrchResult" style="display:none;">
            <div class="bg" style="background-image:none;">
                <p class="txt" data-langcode="FIL1576">검색결과가 존재하지 않습니다.</p>
            </div>
        </div>
        <!-- //검색결과 없음 -->


        <div id="inviteViaEmail" style="display:none; z-index:1002;">
            <!-- 초대장 발송 이메일목록 -->
            <div class="ivtemail_list_wrap">
                <div class="ivtemail_list">
                    <ul>
                        <li><input type="text" placeholder="example@flow.team"><a class="lineplus">추가</a><em>|</em><a class="linedelete" data-langcode="H381">삭제</a></li>
                        <li><input type="text" placeholder="example@flow.team"><a class="lineplus">추가</a><em>|</em><a class="linedelete" data-langcode="H381">삭제</a></li>
                        <li><input type="text" placeholder="example@flow.team"><a class="lineplus">추가</a><em>|</em><a class="linedelete" data-langcode="H381">삭제</a></li>
                        <li><input type="text" placeholder="example@flow.team"><a class="lineplus">추가</a><em>|</em><a class="linedelete" data-langcode="H381">삭제</a></li>
                        <li class="last"><input type="text" placeholder="example@flow.team"><a class="lineplus" data-langcode="FA1443">추가</a><em>|</em><a class="linedelete" data-langcode="H381">삭제</a></li>
                    </ul>
                </div>
            </div><!-- //초대장 발송 이메일목록 -->

            <!-- 초대장 내용 -->
            <div class="ivtemail_cont_wrap">
                <div style="color: blue;font-weight: bold;padding-bottom: 5px;padding-left:10px;">[<span data-langcode="FIL1583">아래 내용은 편집하실 수 있습니다.</span>]</div>
                <textarea class="ivtemail_cont">
				</textarea>
            </div>
            <!-- //초대장 내용 -->
        </div>

    </div>
    <div class="prdbx_ft">
        <a class="btn_prd_sty1_b" id="inviteSelectedItem"><span data-langcode="CLP1085">초대</span></a>
    </div>
</div>
</div>

		<!-- @소문혁 [7408] 창 작게 하면 가로 스크롤 문제 (190222) z-index 지움 -->
		<div id="project-detail" class="container" style="display: none;">




<!-- content wrap -->
<div id="center-contents" class="content_wrap" style="z-index:900;">
	<!-- content2 -->
	<div class="content2">
		<!-- collabo_list_wrap -->
		<div class="subtask_list_content"></div>
			<div class="collabo_list_wrap">
			<!-- <div id="collabo_mod_bg_layer" style="position: fixed;top: 0;left: 0;width: 100%;height: 100%;overflow: hidden;background: #000;opacity: 0.3;filter: alpha(opacity = 30);z-index: 1000;display: none;"></div> -->
			<div id="layer_prj_noti" class="layerstyle1 type2"
				style="width: 684px; margin-top: 60px; z-index: 1050; box-shadow:unset; border-radius:unset; display: none;">
				<div class="layerstyle1_po" style="height: 550px;">
					<div class="add_alram_tab">
						<div class="add_alram_tab_box">
							<a class="tab3 off" style="font-size:17px; padding-left:5px;">Alarm in this Project [BETA]</a>
						</div>
						<div class="right">
							<a id="allread" class="allread on" data-langcode="FL586">모두 읽음</a>
						</div>
					</div>
					<div id="alram_list" class="add_alram_wrap" style="display: block; max-height: 100%;">
						<div id="alram_top" class="add_alram_top"></div>
					</div>
					<div id="alramItem" style="display: none;">
						<dl data="">
							<dt id="TTL" style="font-size: 13px;"></dt>
							<dd class="imgdd">
								<img src="/design2/img_rn/img_photo_null40.png" alt="" class="photo"
									onerror="this.src='/design2/img_rn/img_photo_null40.png'"> <span class="emoticon"
									style="display: none;"><img src="" alt="" style="width: 16px; height: 16px;"></span> <span
									id='alamMsg'></span>
							</dd>
							<dd class="color"></dd>
							<dd class="filephoto" style="display: none;">
								<span id="IMG_ATCH" style="display: none;"><img src="/design2/img_rn/ico/ico_s_photo.png"
										alt="">&nbsp;<span data-langcode="CD745">이미지</span></span> <span id="ATCH"
									style="display: none;"><img src="/design2/img_rn/ico/ico_s_file.png" alt="">&nbsp;<span
										data-langcode="FL588">파일</span></span>
							</dd>
							<dd class="date"></dd>
						</dl>
					</div>
				</div>
			</div>
			<div class="collabo_list fli_color1" id="top-prj-info">
				<!-- 보관함 color -->
				<span id="sortColor" style="display: block;"></span>
				<!-- //보관함 color -->
				<!-- 콜라보제목 -->
				<div class="collabo_title">
					<a class="ibtn star" id="project-important-yn"></a><!-- 중요 class="on/off" 있습니다. -->
					<div class="collabo_title_txt">
						<a title="" id="project-title" style="font-size: 18px;cursor:auto"></a>
						<div class="num" id="project-sendience-count"></div>
						<span class="official-project"><em class="blind">공식 프로젝트</em></span>
						<span id="company-project" class="ico_compy" style="display: inline-block;"></span>
						<div id="need-approval-project" class="ico_lock">
							<!-- class="on" 추가시 툴팁 display:block  -->
							<div class="tooltip_ly">
								<div style="padding: 12px; display: block; position: relative;">
									<span class="tail"></span>
									<dl>
										<dt data-langcode="CD704">프로젝트 관리자 승인필요</dt>
										<dd data-langcode="CD705">프로젝트에 참여자 초대 시,<br>프로젝트 관리자의 승인 후 프로젝트에 참여할 수 있습니다.</dd>
									</dl>
								</div>
							</div>
						</div>
						<!-- //20160628 아이콘 자물쇠/툴팁추가 -->
						<!-- 20170817 알람아이콘 추가 -->
						<span id="project-push-alam-yn" class="ico_alram" style="display: inline-block;"></span>
						<!-- //20170817 알람아이콘 추가 -->
					</div>

					<!-- 편집 -->
					<div class="folder_box">
						<div class="folder_box_po">
							<a class="ibtn color" id="project-color-setting"></a>
							<a class="ibtn folder" id="project-settings"></a>
						</div>
					</div>
					<!-- //편집 -->
				</div>
				<!-- //콜라보제목 -->

				<!-- 색상선택(20160909) -->
				<div class="lypop_st1" id="colorSettingLayer" style="top: 60px; right: 0px; display: none;">
					
					<div class="lypopst_cont">
						<ul class="flowColorbox">
							<li class="flowColor_0" data="0"></li>
							<li class="flowColor_4" data="4"></li>
							<li class="flowColor_8" data="8"></li>
							<li class="flowColor_1" data="1"></li>
							<li class="flowColor_10" data="10"></li>
							<li class="flowColor_2" data="2"></li>
							<li class="flowColor_7" data="7"></li>
							<li class="flowColor_3" data="3"></li>
							<li class="flowColor_6" data="6"></li>
							<li class="flowColor_9" data="9"></li>
							<li class="flowColor_5" data="5"></li>
							<li class="flowColor_11" data="11"></li>
						</ul>
					</div>
				</div>
				<!-- //색상선택(20160909) -->
				<!-- 설정 layerpopup -->
				<div class="layerstyle1 prjset_ly" id="colaboMainSetting"
					style="top: 60px; right: 0px; display: none; min-width: 160px;">
					<!-- 수정 -->
					<div class="layerstyle1_po">
						<h5 data-langcode="CD706">프로젝트 설정</h5>
						<ul>
							<li class="p_icon"><span id="projOutBoxSetting" style="cursor: pointer;" data-langcode="FL580">보관함
									설정</span></li>
							<li class="p_icon"><span id="projAlarmSetting" style="cursor: pointer;" data-langcode="FL581">푸시 설정</span>
							</li>
							<li class="p_icon"><span id="projFollowSetting" style="cursor: pointer;" data-langcode="CD709">알림 리스트
									설정</span></li>
							<li class="p_icon"><span id="projHide" style="cursor: pointer;" data-langcode="CD710">프로젝트 숨기기</span></li>
							<li class="p_icon"><span id="projGoOut" style="cursor: pointer;" data-langcode="CD711">프로젝트 나가기</span>
							</li>
							<li class="p_icon"><span id="colaboMainModify" style="display: inline; cursor: pointer;"
									data-langcode="CD712">프로젝트 수정</span></li>
							<li class="p_icon"><span id="colaboMainDelete" style="color: red; display: inline; cursor: pointer;"
									data-langcode="CD713">프로젝트 삭제</span></li>
						</ul>
						<span id="mngrSetting"
							style="padding-top: 10px; border-top-color: rgb(227, 227, 227); border-top-width: 1px; border-top-style: solid; display: block;">
							<h5 data-langcode="CD714">프로젝트 관리자 설정</h5>
							<ul class="admin">
								<li class="p_icon"><span id="writeAuthSetting" style="display: inline; cursor: pointer;"
										data-langcode="CD715">글/댓글 작성 권한 설정</span></li>
								<li class="p_icon"><span id="prjAuthSetting" style="display: inline; cursor: pointer;"
										data-langcode="CD716">파일 다운로드 권한 설정</span></li>
							</ul>
						</span>
						<span id="colaboInfo"
							style="padding-top: 10px; border-top-color: rgb(227, 227, 227); border-top-width: 1px; border-top-style: solid; display: block;">
							<h5 data-langcode="AA0149">프로젝트 번호</h5>
							<ul class="admin">
								<li class="p_icon" style="cursor:unset;"><span id="projectSrno" style="display: inline;"></span></li>
							</ul>
						</span>
					</div>
				</div>
				<!-- //설정 layerpopup -->
				<!-- 콜라보내용 -->
				<div id="project-summary-box" class="collabo_cont_view" style="display: block;">
					<div class="collabo_content">
						<div id="project-summary"
							style="min-height:20px;white-space: pre-wrap;overflow: visible;word-break: break-all;padding-right:25px;overflow:hidden;"
							spellcheck="false"></div>
						<a id="project-summary-more-toggle" title="더보기" class="more off"
							style="width: 40px;	top: 10px;bottom:auto;"></a>
					</div>
				</div>
				<!-- //콜라보내용 -->
			</div>

			<!-- <div><input style="display:none;height: 35px;background-color: #ffffff;width: 667px;padding-left: 30px;" id="projInSrch" type="text" placeholder="Search in Project" ></div> -->

			<!-- [D] 20180409 인기태그 -->
			<div class="hotag_box" id="popular-hashtag-layer">
				<!-- 
				<a id="toggle" class="open" style="display:block;">
					<span class="blind"></span>
				</a>
				 -->
				<h3 data-langcode="CD1833">태그모음</h3>
				<div id="popular-hashtag-list" class="hotaglist" style="height: 30px;overflow:hidden;">
					<!-- <span class="txtplaceholder">자주 사용하는 태그 10개가 여기에 표현됩니다!</span> -->
					<b>#플로우</b>
					<b>#협업</b>
				</div>
				<a id="HASHTAG_ARROW"><span class="blind" data-langcode="H417">닫기</span></a>
			</div>
			<!-- //[D] 20180409 인기태그 -->

			<!-- 업무리포트 -->
			<div class="work_report_wrap" id="TASK_REPORT" style="display: none;">

				<div class="work_report_cont type_none" id="TASK_REPORT_BANNER" style="display: none;">
					<div class="work_report_box report_none_cn">
						<a class="btn_close">
							<span class="blind" data-langcode="H417">닫기</span>
						</a>
					</div>
				</div>

				<div class="work_report_cont type_fold" id="TASK_REPORT_OPEN">
					<!--type_open-->
					<h3 style="cursor: pointer;"><span data-langcode="CD718">업무리포트</span>
						<span id="TASK_TOTAL_CNT" data-langcode="CD720">o건</span>
					</h3>
					<!-- [D] 20180409 수정 -->
					<a class="close" id="TASK_REPORT_ARROW">
						<span class="blind" data-langcode="H417">닫기</span>
					</a>
					<!-- 원형차트 -->
					<div class="work_report_box" id="TASK_ALL_VIEW" style="display: block;">
						<!--display:none-->
						<!-- chart -->
						<div class="circle_chart" id="TASK_DONUT_CHART" style="width: 400px; height: 225px;"></div>
						<div class="taskoverlay-label" data-langcode="DCD35">전체</div>
						<div class="taskoverlay" id="TaskCnt" data-langcode="CD720">o건</div>
						<ul class="circle_chart_list">
							<li class="color1" data="0">
								<span class="bul"></span> <span data-langcode="CD721">요청</span>&nbsp;&nbsp;
								<strong>o건</strong>
								<span class="pcnt">o%</span>
							</li>
							<li class="color2" data="1">
								<span class="bul"></span> <span data-langcode="CD722">진행</span>&nbsp;&nbsp;
								<strong>o건</strong>
								<span class="pcnt">o%</span>
							</li>
							<li class="color5" data="4">
								<span class="bul"></span> <span data-langcode="CD723">피드백</span>&nbsp;
								<strong>o건</strong>
								<span class="pcnt">o%</span>
							</li>
							<li class="color3" data="2">
								<span class="bul"></span> <span data-langcode="CD724">완료</span>&nbsp;&nbsp;
								<strong>o건</strong>
								<span class="pcnt">o%</span>
							</li>
							<li class="color4"
								style="border-bottom-color: currentColor; border-bottom-width: 0px; border-bottom-style: none;"
								data="3">
								<span class="bul"></span> <span data-langcode="CD725">보류</span>&nbsp;&nbsp;
								<strong>o건</strong>
								<span class="pcnt">o%</span>
							</li>

						</ul>
					</div>
					<!-- //원형차트 -->
					<!-- 막대차트 -->
					<div class="work_report_box" id="TASK_WORKER_VIEW" style="display: none;">
						<div class="work_report_box_in">
							<div class="line">
								<div class="work_person">
									<img onerror="this.src='/design3/img_rn/img_photo_null32.png'" alt=""
										src="/design3/img_rn/account_default30.png">
									<span>김원모</span>
								</div>
								<!-- chart -->
								<div class="bar_chart" style="border: 1px solid black; border-image: none;">
									<!-- border 값은 확인을 위해서 넣어놓았습니다. 삭제하시면 됩니다~ -->
								</div>
								<!-- //chart -->
							</div>
							<div class="line on">
								<div class="work_person">
									<img alt="" src="/design3/img_rn/account_default30.png">
									<span>김원모</span>
								</div>
								<!-- chart -->
								<div class="bar_chart" style="border: 1px solid black; border-image: none;">
									<!-- border 값은 확인을 위해서 넣어놓았습니다. 삭제하시면 됩니다~ -->
								</div>
								<!-- //chart -->
							</div>

							<!-- 더보기 -->
							<div class="morelist" style="display: none;">
								<a data-langcode="H309">더보기</a>
							</div>
						</div>
					</div>
					<!-- //막대차트 -->
				</div>
				<!-- //펼쳤을때 -->
			</div>
			<!-- //업무리포트 -->

			<div id="post-input-layer" class="post_write_wrap" style="margin-top: 10px; margin-bottom: 10px;">
				<div id="upload-status-layer" class="post_dnd_ly" style="display:none;">

					<div class="post_dnd_ly_po on">
						<div id="upload-progress-bar" class="status_bar" style="width: 50%;"></div>
						<div id="drag-and-drop-guide" class="txt" style="color: rgb(0, 0, 0);" data-langcode="CD727">첨부할 파일, 이미지 등을
							여기에 끌어다 놓으세요.</div>
						<div class="pctfilenm">
							<strong id="upload-percentage"></strong>
							<span id="upload-name"></span>
						</div>
					</div>
					<div id="drop-layer" style="position:absolute;top:0;left:0;width:100%;height:100%;background-color:#00000000">
					</div>
				</div>

				<div id="manager-only-writeable-layer" class="wrt_rstrn" style="display:none;">
					<div class="txtwrn">
						<span data-langcode="CD728">관리자만 글을 작성할 수 있습니다.</span>
					</div>
				</div>

				<!-- 20170803 글/업무/일정/할일 탭 -->
				<div class="post_write_tab">
					<ul id="post-category-btn-list">

					</ul>
				</div>
				<!-- //20170803 글/업무/일정/할일 탭 -->

				<div class="post-category-btn-gubun" style="display:none;">
					<li class="ico1 off">
						<a data-langcode="CD729">글 작성</a>
						<span></span>
					</li>
					<li class="ico5 off">
						<a data-langcode="CD730">글 작성2.0</a>
						<span></span>
						<!-- <em class="ico_beta"></em> -->
					</li>
					<li class="ico4 off">
						<a data-langcode="CD731">업무</a>
						<span></span>
					</li>
					<li class="ico3 off">
						<a data-langcode="CD726">일정</a>
						<span></span>
					</li>
					<li class="ico2 off">
						<a data-langcode="CD733">할일</a>
						<span></span>
					</li>
				</div>


				<div id="post-cntn-area">
					<!-- 여기 안에 postDocument, postTask, postSchedule, postTodo가 들어간다 -->
				</div>

				<!-- 하단에디트영역 -->
				<div id="bottom-btn-layer" class="pst_btn_bx TEXT">
					<div class="fteditbox bdr" style="border-right:none;">
						<!-- 파일첨부 -->
						<span class="btn file">
							<a class="app_addfile" title="파일첨부" id="add-file" data-langcode="CD777"></a>
							<!-- layerpopup -->
							<input id="file-attach" type="file" name="fileup[]" multiple="multiple" style="display:none;">
							<div class="layerstyle1 file-add-layer" style="bottom:32px;left:-21px; display: none;"
								id="add-file-layerpopup">
								<div class="layerstyle1_po">
									<span class="tail_btm" style="left:23px;"></span>
									<ul class="icon_set_list2">
										<li class="p_icon1">
											<a data-langcode="CD734">PC에서 올리기</a>
										</li>
										<li class="p_icon2" style="display:none;">
											<a data-langcode="CD735">기존파일 가져오기</a>
										</li>
										<li class="p_icon3" style="display:none;">
											<a data-langcode="CD736">외부 클라우드 연동</a>
										</li>
										<li class="p_icon4 flow-only" style="display:none;">
											<a data-langcode="CD737">구글 드라이브에서 가져오기</a>
										</li>
										<li class="p_icon5 flow-only" style="display:none;">
											<a data-langcode="CD738">드롭박스에서 가져오기</a>
										</li>
									</ul>
								</div>
							</div>
							<!-- //layerpopup -->
						</span>
						<!-- //파일첨부 -->

						<!-- 사진첨부 -->
						<span class="btn image">
							<a class="app_pic" title="사진첨부" id="add-image" data-langcode="CD778"></a>
							<!-- layerpopup -->
							<input id="image-attach" type="file" name="fileup[]" multiple="multiple" accept="image/*"
								style="display:none;">
							<div class="layerstyle1 image-add-layer" style="bottom:32px;left:-21px; display: none;"
								id="add-image-layerpopup">
								<div class="layerstyle1_po">
									<span class="tail_btm" style="left:23px;"></span>
									<ul class="icon_set_list2">
										<li class="p_icon1">
											<a data-langcode="CD734">PC에서 올리기</a>
										</li>
										<li class="p_icon2" style="display:none;">
											<a data-langcode="CD735">기존파일 가져오기</a>
										</li>
										<li class="p_icon3" style="display:none;">
											<a data-langcode="CD736">외부 클라우드 연동</a>
										</li>
										<li class="p_icon4 flow-only" style="display:none;">
											<a data-langcode="CD737">구글 드라이브에서 가져오기</a>
										</li>
										<li class="p_icon5 flow-only" style="display:none;">
											<a data-langcode="CD738">드롭박스에서 가져오기</a>
										</li>
									</ul>
								</div>
							</div>
							<!-- //layerpopup -->
						</span>
						<!-- //사진첨부 -->

						<!-- 지도첨부 -->
						<span class="btn place">
							<a class="app_map" title="지도첨부" data-langcode="CD779" id="add-place" stdisplay></a>
							<div id="add-place-input-layer" class="map_search_wrap" style="bottom:40px;left:-9px; display: none;">
								<div class="map_search_po">
									<span class="tail_btm"></span>
									<div class="map_sch_input">
										<input type="text" name="map-search" placeholder="장소를 입력하세요" data-langcode="CD739">
									</div>
								</div>
							</div>
						</span>
						<!-- //지도첨부 -->
					</div>

					<div class="fteditbox stylebox" style="display:none;">
						<!-- 볼드 -->
						<span class="btn">
							<a style="cursor:pointer" class="text_bold off" title="굵게"></a><!-- on / off -->
							<!-- 20190226 에디터 툴팁 -->
							<div class="tooltip_ly2" style="display: none;">
								<div class="tooltip_ly2_box">
									굵게 - 글 내용을 드래그 하거나 단축키(Ctrl + B)로 설정
								</div>
							</div>
							<!-- //20190226 에디터 툴팁 -->
						</span>
						<!-- 이탤릭 -->
						<span class="btn">
							<a style="cursor:pointer" class="text_italic off" title="기울임꼴"></a><!-- on / off -->
							<!-- 20190226 에디터 툴팁 -->
							<div class="tooltip_ly2" style="display: none;">
								<div class="tooltip_ly2_box">
									이탤릭 - 글 내용을 드래그 하거나 단축키(Ctrl + I)로 설정
								</div>
							</div>
							<!-- //20190226 에디터 툴팁 -->
						</span>
						<!-- 언더라인 -->
						<span class="btn">
							<a style="cursor:pointer" class="text_under off" title="밑줄"></a><!-- on / off -->
							<!-- 20190226 에디터 툴팁 -->
							<div class="tooltip_ly2" style="display: none;">
								<div class="tooltip_ly2_box">
									밑줄 - 글 내용을 드래그 하거나 단축키(Ctrl + U)로 설정
								</div>
							</div>
							<!-- //20190226 에디터 툴팁 -->
						</span>
						<!-- 취소선 -->
						<span class="btn">
							<a style="cursor:pointer" class="text_strike off" title="취소선"></a><!-- on / off -->
							<!-- 20190226 에디터 툴팁 -->
							<div class="tooltip_ly2" style="display: none;">
								<div class="tooltip_ly2_box">
									취소선 - 글 내용을 드래그 하거나 단축키(Ctrl + T)로 설정
								</div>
							</div>
							<!-- //20190226 에디터 툴팁 -->
						</span>
					</div>

					<!-- 20181119 해시태그/at -->
					<div class="fteditbox tagbox" style="display:none;">
						<!-- 해시태그 -->
						<span class="btn">
							<a style="cursor:pointer" class="srch_hashtag" title="#"></a>
							<!-- 20190226 에디터 툴팁 -->
							<div class="tooltip_ly2" style="display: none;">
								<div class="tooltip_ly2_box" data-langcode="CD842">
									해시태그 - '#' 입력 후 내용을 쓰고 스페이스바로 설정
								</div>
							</div>
							<!-- //20190226 에디터 툴팁 -->
						</span>
						<!-- at -->
						<span class="btn">
							<a style="cursor:pointer" class="srch_at" title="@"></a>
							<div class="tooltip_ly2" style="display: none;">
								<div class="tooltip_ly2_box" data-langcode="CD843">
									멘션 - '@' 입력 후 이름을 쓰고 ↓,↑,ENTER로 설정
								</div>
							</div>
							<!-- //20190226 에디터 툴팁 -->
						</span>

					</div>
					<!-- //20181119 해시태그/at -->
					<div class="fteditbox styletip" style="display:none;">
						<!-- style -->
						<span class="btn">
							<a style="cursor:pointer;" class="style_at" title="styletag"></a>
							<div class="tooltip_ly2" style="display: none;">
								<div class="tooltip_ly2_box" style="text-align:left" data-langcode="CD844">
									굵게/기울임/밑줄/취소선 - 글내용을 드래그하여 설정할 수 있습니다.
								</div>
							</div>
							<!-- //20190226 에디터 툴팁 -->
						</span>
					</div>

					<div class="right">
						<a class="btn_style00" id="post-document-submit" data-langcode="CD740">올리기</a>
					</div>
				</div>
				<!-- //하단에디트영역 -->
			</div>

			<!-- 미확인알림 -->
			<div class="uncon_wrap" id="unread-noti-layer" style="display: none;">
				<div class="title">
					<h3>
						<data data-langcode="CD741">미확인 알림</data>
						<span id="unread-badge-count"></span>
					</h3>
					<a id="set-read-all" class="allread" data-langcode="FL586">모두읽음</a>
				</div>
				<div id="unread-noti-list" class="uncon_inbx">
				</div>
				<div id="unread-noti-obejcts" style="display:none;">
					<div id="unread-noti-li-obj" class="uncon_inbx_li unread-noti-li" style="cursor: pointer;">
						<span class="rd_li">
							<img id="user-prfl" style="cursor: pointer; object-fit: cover;" src="/design3/img_rn/thumb40.gif">
						</span>
						<dl>
							<dt>
								<strong id="user-nm"></strong>
								<strong id="alarm-msg-2"></strong>
								<span id="time"></span>
							</dt>
							<dd id="noti-cntn" style="-ms-word-break: break-all;">
							</dd>
						</dl>
						<a class="view" style="display: block;" data-langcode="CD744">보기</a>
					</div>
					<span id="noti-cntn-image" style="margin-right:5px;">
						<img style="margin-right:3px;" src="/design3/img_rn/ico/ico_s_photo.png"><span
							data-langcode="CD745">이미지</span></span>
					<span id="noti-cntn-file" style="margin-right:5px;">
						<img style="margin-right:3px;" src="/design3/img_rn/ico/icon_fileview_file.png"><span
							data-langcode="FL588">파일</span></span>
					<span id="emotion-icon" style="margin-right:5px;">
						<img src="/design2/img_rn/emo/emoti_s_01.png?1">
					</span>
				</div>
				<a id="view-more" class="moreview" data-langcode="H309">더보기</a>
			</div>
			<!-- //미확인알림 -->

			<!-- 상단고정글 -->
			<div class="pin_post_wrap" id="pin-post-text-layer" style="display: block;">
				<div class="pin_post_inbx">
					<!-- [D] 20180409 수정 -->
					<div class="title">
						<h3><span data-langcode="CD748" style="color:#000000">상단고정글</span>
							<span id="pin-post-count">5</span>
						</h3>
						<!-- <a id="" class="moreview">더보기</a> -->
						<!--웹에서는 더보기 처리 안하기로 함-->
					</div>
					<!-- //[D] 20180409 수정 -->
					<div id="pin-post-text-list">
					</div>
					<div style="display:none;">
						<dl id="pin-post-text-li-obj" class="fold pin-li-obj">
							<!--fold last -->
							<!-- 접혔을때 -->
							<dt class="pin_post_title">
								<img alt="" src="/design3/img_rn/ico/ico_pin.png">
								<h4>
									<strong id="post-category"></strong>
									<span id="pin-post-title"></span>
								</h4>
								<div class="right" id="status" style="display: none;">
									<!--업무-->
									<span class="icon"></span>
								</div>
								<div class="right" id="percent" style="display: none;">
									<!--할일-->
									<span class="pcnt1"></span>
								</div>
								<div class="right" id="date" style="display: none;">
									<!--일정-->
									<span class="date"></span>
								</div>
							</dt>
							<dd class="pin_post" style="display: none;" id="pin-post-cntn">
								<!-- post-view 들어갈 자리-->
							</dd>
						</dl>
					</div>
				</div>
			</div>
			<!-- //상단고정글 -->

			<!-- 상단고정글 - slide -->
			<div class="pin_post_wrap" id="pin-post-image-layer" style="display: block;">
				<div class="pin_post_inbx">
					<div class="title">
						<h3><span data-langcode="CD748">상단고정글</span>
							<span id="pin-post-count">1</span>
						</h3>
					</div>
					<!-- slide -->
					<div class="pin_post_slide_wrap" style="">
						<div id="controller" class="slidecontrol_btn">
							<a id="prev" class="btnpre">
								<span class="blind" data-langcode="CD749">이전</span>
							</a>
							<a id="next" class="btnnxt">
								<span class="blind" data-langcode="H482">다음</span>
							</a>
						</div>
						<div class="pin_post_slide" style="">
							<div class="pin_post_slidebox" style="margin:0">
								<div class="pin_post_slidebox_in">
									<div id="pin-post-image-list" class="pin_post_slide"
										style="width:100%;height:180px; position: relative;">
									</div>
									<div style="display:none;">
										<div id="pin-post-image-li-obj" class="pin_post_slide_li pin-li-obj"
											style="width: 180px; height: 180px;float:left; overflow: hidden; margin-right: 10px;cursor:pointer;">
											<img src="" alt="" class="bgimg" style="background-color:#ffffff;">
											<div style="position:absolute;width:100%;height:100%;background-color:black;opacity:0.3;"></div>
											<dl>
												<dt id="title" style="word-break:break-all;"></dt>
												<dd id="writer"></dd>
											</dl>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- //slide -->
				</div>
			</div>
			<!-- //상단고정글 - slide -->
			<div id="post-list"></div>

			<!-- 초대하기 배너 -->
			<div class="nopost_wrap icon1 new_invite_box" id="banner-invite" style="display:none;">
				<p data-langcode="CD751">함께할 사람들을 지금 초대해 보세요!</p>
				<a class="btn_style46" id="banner-invite-btn" data-langcode="CD780">초대하기</a>
			</div>
			<!-- //초대하기 배너 -->
			<!-- 글쓰기 배너 -->
			<div class="nopost_wrap icon2 new_invite_box" id="banner-write" style="display:none;">
				<p data-langcode="CD752">오늘 논의한 내용을 첫 번째로 공유하세요.</p>
				<a class="btn_style46" id="banner-write-btn" data-langcode="CD1968">글쓰기</a>
			</div>
			<!-- //글쓰기 배너 -->
			<!-- 관리자만 글쓰기 배너 -->
			<div class="nopost_wrap icon2 new_invite_box" id="banner-manager-only-write" style="display:none;">
				<p data-langcode="CD753">관리자만 글/댓글을 작성할 수 있습니다.</p>
			</div>
			<!-- //관리자만 글쓰기 배너 -->

			<div id="todo-post-list-layer" style="display:none;">
				<div class="subtitle_moa" id="todo-post-list-title" style="padding:10px 0;">
					<strong data-langcode="CD754">할일 모아보기</strong><a id="cancel" data-langcode="CD755">취소</a>
				</div>
				<div id="todo-post-list"></div>
			</div>
			<div id="popular-hashtag-post-list-layer" style="display:none;">
				<div class="subtitle_moa" id="popular-hashtag-post-list-title" style="padding:10px 0;">
					<strong id="hashtag-word"></strong><a id="cancel" data-langcode="CD755">취소</a>
				</div>
				<div id="popular-hashtag-post-list">
				</div>
			</div>
			<!-- post-view -->
			<div id="post-li-obj" style="display:none;">
				<!-- left(bring, atMe, my) post-view -->
				<div id="go-to-project-from-left" class="thum_title">
					<!-- left의 post list에서 프로젝트로 넘어오는 링크 -->
					<h3 id="project-title"></h3>
					<div class="right">
						<a id="go-to-project-post" data-langcode="CD756">글 바로보기</a>
					</div>
				</div>
				<div id="left-post-empty" style='text-align: center;padding:260px 0 0 0;margin-left:50px;'>
					<span id="comment" style='font-size:25px;color:gray;'></span>
				</div>
				<!-- // left(bring, atMe, my) post-view -->
				<!-- task 오른쪽 post-view -->
				<a id="task-more_btn" class="workAside_set"><span class="blind">더보기</span></a><!-- 20190304 추가 -->
				<a id="task-close-btn" class="workAside_close"><span class="blind">닫기</span></a><!-- task의 상세 post에 들어가는 x버튼 -->
				<a id="go-to-project-from-task" class="goWorkFlow" style="" data-langcode="CD757">이곳을 클릭하여 해당 글로 이동할 수 있습니다.</a>
				<!-- 업무에서 프로젝트로 넘어오는 링크 -->
				<div id="post-more" class="sword_more"><a id="more-btn"></a></div><!-- [...] 버튼 -->
				<!-- // task 오른쪽 post-view -->
				<div id="post-message" class="invite_box single-post-view" name="COMMT_LINE">
					<!-- 초대/나감 텍스트메시지 -->
					<span id="cntn"></span>
					<div id="commtHid">
						<input id="commtRgsrDttm" type="hidden" value="">
					</div>
				</div>
				<div id="post-view" class="post_wrap single-post-view">
					<!-- 포스트 -->

					<div id="post-read-layer" class="post_inbx" name="DEF_DIV">
						<!-- top -->
						<div id="top-layer" class="post_writer">
							<div class="photo" style="cursor: pointer;">
								<img id="user-prfl" style="object-fit: cover;" onerror="this.src='/design3/img_rn/thumb26.gif'" alt=""
									src="">
							</div>
							<!-- 작성자 사진 -->
							<div class="user">
								<strong id="user-name" class="name"
									style="cursor: pointer;margin-right:6px;vertical-align:middle;"></strong><strong id="vertical-line"
									style="border-left:2px solid #e9eaed;vertical-align:middle;font-size:12px;display:none;">&nbsp;</strong><span
									id="company-name" style="color: #969696;padding-left: 3px;vertical-align:middle;"></span>
								<span class="date">
									<span id="post-rgsn-dttm">YYYY-MM-DD HH:mm</span>
									<a id="post-range-type-all" class="privacy_set" style="display:none;"><img class="privacy_icon"
											src="/design3/img_rn/ico/ico_privacy_all_ss.png" alt="전체공개"><span class="privacy_set_ly"
											data-langcode="CD758">전체공개</span></a>
									<a id="post-range-type-admin" class="privacy_set" style="display:none;"><img class="privacy_icon"
											src="/design3/img_rn/ico/ico_privacy_admin_ss.png" alt="관리자에게만 공개"><span class="privacy_set_ly"
											data-langcode="CD759">관리자에게만 공개</span></a>
								</span>
							</div>
							<input class="post-url" type="text" value="" style="position:absolute;top:-9999em;">
							<div class="post-menu">
								<div class="motive">
									<button type="button" id="enrollMotive" class="motive-up"><span>+</span>모티브 등록</button>
									<div class="motive-form-wrap">
										<h3 class="motive-up-title">모티브 등록</h3>
										<ul class="motive-menu">
											<li>
												<button class="on" data="activityBtn">활동등록</button> 
											</li>
											<li>
												<button data="achieveBtn">성과등록</button>
											</li>
										</ul>
										<form id="enrollActivity" class="motive-form active">
											<fieldset>
												<legend class="blind">활동등록 입력</legend>
												<table>
													<caption class="blind">활동입력 폼</caption>
													<colgroup>
														<col width="94px" />
														<col />
													</colgroup>
													<tbody>
														<tr>
															<td><label for="activityContent">활동내용</label></td>
															<td>
																<textarea id="activityContent" style="width:100%; height:60px; resize:none"></textarea>
															</td>
														</tr>
														<tr>
															<td><label for="activityCore">관련핵심목표</label></td>
															<td>
																<select id="activityCoreGoalList" class="motive-select" title="활동 상태 선택하기">

																</select>
															</td>
														</tr>
														<tr>
															<td><label for="activityStatus">상태</label></td>
															<td>
																<select id="activityStatus" class="motive-select status" title="활동 상태 선택하기">
																	<option value="high">이슈</option>
																	<option value="paused">지연됨</option>
																	<option value="complete">완료됨</option>
																	<option value="cancelled">취소됨</option>
																	<option value="ActivityStatus-8-1f8d58-1565876463763">정상진행</option>
																	<option value="low">시작안함</option>
																	<option value="medium">연기됨</option>
																</select>
															</td>
														</tr>
													</tbody>
												</table>
											</fieldset>
											<button type="button" id="enrollActivityBtn" class="motive-form-btn motive-submit">등록하기</button>
											<button type="button" class="motive-form-btn motive-cl">취소</button>
											<button type="button" class="motive-close">닫기</button>
										</form>
										<form id="enrollAchieve" class="motive-form">
											<fieldset>
												<legend class="blind">성과등록 입력</legend>
												<table>
													<caption class="blind">성과입력 폼</caption>
													<colgroup>
														<col width="94px" />
														<col />
													</colgroup>
													<tbody>
														<tr>
															<td><label for="resultContent">성과내용</label></td>
															<td><textarea id="resultContent" style="width:100%; height:60px; resize:none"></textarea>
															</td>
														</tr>
														<tr>
															<td><label for="resultDate">성과발생시점</label></td>
															<td>
																<input type="date" name="" id="resultDate">
															</td>
														</tr>
														<tr>
															<td><label for="activityCore">관련핵심목표</label></td>
															<td>
																<select id="achieveCoreGoalList" class="motive-select" title="활동 상태 선택하기">
																</select>
															</td>
														</tr>
														<tr>
													</tbody>
												</table>
											</fieldset>
											<button type="button" id="enrollAchieveBtn" class="motive-form-btn motive-submit">등록하기</button>
											<button type="button" class="motive-form-btn motive-cl">취소</button>
											<button type="button" class="motive-close">닫기</button>
										</form>
										<div class="load_wrap"
											style="z-index: 10000;position: absolute;top: 0px;left: 0px;right: 0px;bottom: 0px;text-align: center;background-color: rgba(0,0,0,0.2); display:none;">
											<div class="loader"></div>
										</div>
									</div>
								</div>
								<div class="motive">
									<button type="button" id="activityIcon" class="motive-mark">활동</button>
									
									<div class="motive-record" style="display:none">
										<h4 class="motive-title">활동 등록 이력</h4>
										<p class="record-none">등록된 활동이 없습니다.</p>
										<ul class="record-list">

										</ul>
									</div>
								</div>
								<div class="motive">
									<button type="button" id="achieveIcon" class="motive-mark">성과</button>
									<div class="motive-record" style="display:none">
										<h4 class="motive-title">성과 등록 이력</h4>
										<p class="record-none">등록된 성과가 없습니다.</p> 
										<ul class="record-list">

										</ul>
									</div>
								</div>
								<div id="pin" class="aln_pin" style="display:none;">
									<a id="pin-icon"></a>
									<!--class on-->
								</div>
								<div id="setting" class="set_right off" style="display:none;">
									<a title="설정" data-langcode="CC680"></a>
									<div id="settings-layer" class="layerstyle1 post-more-setting"
										style="display:none;top:45px;right:-11px;min-width:100px;" name="MORE_DIV">
										<div class="layerstyle1_po">
											<span class="tail" style="right:23px;"></span>
											<ul class="icon_set_list">
												<li class="p_icon">
													<a id="edit" data-langcode="CD760">글 수정</a>
												</li>
												<li class="p_icon">
													<a id="delete" data-langcode="CD761">글 삭제</a>
												</li>
												<li class="p_icon">
													<a id="copy" data-langcode="CD762">다른 프로젝트에 올리기</a>
												</li>
												<li class="p_icon">
													<a id="urlcopy" data-langcode="CD1936">URL복사</a>
												</li>
												<li class="p_icon">
													<a id="emailExport" class="email-export" data-langcode="" style="display: none;">이메일 내보내기</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- //top -->
						<!-- cont -->
						<div id="mid-layer" class="post_cont">
							<div id="modeTimeLayer" style="display:none;">
								post_srno : <span id="mid-post-srno"></span>
								<br><br>
							</div>
							<div id="post-cont-view">
								<!-- 여기에 해당 포스트별로 각자 다른 내용이 들어감 -->
							</div>


							<div id="remark-and-read-check" class="readnum">
								<div id="emtView" style="width:200px;cursor:pointer;"></div>
								<span class="right"><span data-langcode="CLP1042">댓글</span>
									<strong id="remark-count" style="padding-left:3px;" class="pst_remark_cnt">0</strong>
									<span data-langcode="CCM1293">개</span>&nbsp;&nbsp;<span id="read-count-check" style="cursor:pointer;">
										<span data-langcode="CD763">읽음</span>
										<strong style="padding-left:3px;" id="post-read-count">0</strong>
										<span data-langcode="CD782">명</span></span></span>
							</div>
						</div>
						<!-- //cont -->
						<!-- edit buttons -->
						<div id="bottom-layer" class="btm_edt_btns">
							<div id="emotion-popup-layer" class="emoti_pop_wrap" style="display:none;">
								<div class="emoti_pop">
									<span class="tail"></span>
									<ul>
										<li class="add-reaction" data="1">
											<img src="/design2/img_rn/emo/emoti_01.gif?1">
											<br><span data-langcode="CD764">좋아요</span></li>
										<li class="add-reaction" data="2">
											<img src="/design2/img_rn/emo/emoti_02.gif?1">
											<br><span data-langcode="CD765">부탁해요</span></li>
										<li class="add-reaction" data="3">
											<img src="/design2/img_rn/emo/emoti_03.gif?1">
											<br><span data-langcode="CD766">힘들어요</span></li>
										<li class="add-reaction" data="4">
											<img src="/design2/img_rn/emo/emoti_04.gif?1">
											<br><span data-langcode="CD767">훌륭해요</span></li>
										<li class="add-reaction" data="5">
											<img src="/design2/img_rn/emo/emoti_05.gif?1">
											<br><span data-langcode="CD768">감사해요</span></li>
									</ul>
								</div>
							</div>
							<ul id="bottom-btns">
								<li>
									<img id="emoti-img" src="/design2/img_rn/emo/emoti_s_01.png?1" style="display:none;">
									<a id="likeIcon" class="ico4" style="display:inline;" data-langcode="CD764">좋아요</a>
								</li>
								<li>
									<a id="focusRemarkInputBtn" class="ico1" data-langcode="H145">댓글작성</a>
								</li>
								<li>
									<a id="bringIcon" class="ico3" data-langcode="action.bookmark">담아두기</a>
								</li>
							</ul>
						</div>
						<!-- //edit buttons -->
						<!-- 댓글영역 -->
						<div id="remark-layer" class="post_reply_wrap">
							<div class="pstry_more" style="display:none;">
								<a id="more-prev-remark" data-langcode="CD772">이전 댓글 더보기</a>
							</div>
							<span id="remark-list">
								<!-- remark-li-obj here -->
							</span>
							<div id="remark-write-layer">
								<!-- remark-edit here -->
							</div>
						</div>
						<!-- //댓글영역 -->
					</div>
					<div id="post-edit-layer" name="EDT_DIV" style="padding:10px 0 0 0;display:none;">
						<!-- file upload -->
						<div id="upload-status-layer" class="post_dnd_ly" style="display:none;">
							<div class="post_dnd_ly_po on">
								<div id="upload-progress-bar" class="status_bar" style="width: 50%;"></div>
								<div id="drag-and-drop-guide" class="txt" style="color: rgb(0, 0, 0);" data-langcode="CD773">첨부할 파일, 이미지
									등을 여기에 끌어다 놓으세요.</div>
								<div class="pctfilenm">
									<strong id="upload-percentage"></strong>
									<span id="upload-name"></span>
								</div>
							</div>
							<div id="drop-layer"
								style="position:absolute;top:0;left:0;width:100%;height:100%;background-color:#00000000"></div>
						</div>
						<!-- // file upload -->

						<div id="edit-contents-layer">
							<!--  post-edit here -->
						</div>
						<div id="bottom-btn-layer" class="pst_btn_bx">
							<div class="fteditbox bdr" style="border-right:none;">
								<!-- 파일첨부 -->
								<span class="btn file">
									<a id="add-file" class="app_addfile" title="파일첨부" data-langcode="CD777"></a>
									<!-- layerpopup -->
									<input id="file-attach" type="file" name="fileup[]" multiple="multiple" style="display:none;">
									<div class="layerstyle1 file-add-layer" style="bottom:32px;left:-21px; display: none;"
										id="add-file-layerpopup">
										<div class="layerstyle1_po">
											<span class="tail_btm" style="left:23px;"></span>
											<ul class="icon_set_list2">
												<li class="p_icon1">
													<a data-langcode="CD734">PC에서 올리기</a>
												</li>
												<li class="p_icon2" style="display:none;">
													<a data-langcode="CD735">기존파일 가져오기</a>
												</li>
												<li class="p_icon3" style="display:none;">
													<a data-langcode="CD736">외부 클라우드 연동</a>
												</li>
												<li class="p_icon4 flow-only" style="display:none;">
													<a data-langcode="CD737">구글 드라이브에서 가져오기</a>
												</li>
												<li class="p_icon5 flow-only" style="display:none;">
													<a data-langcode="CD738">드롭박스에서 가져오기</a>
												</li>
											</ul>
										</div>
									</div>
									<!-- //layerpopup -->
								</span>
								<!-- //파일첨부 -->

								<!-- 사진첨부 -->
								<span class="btn image">
									<a id="add-image" class="app_pic" title="사진첨부" data-langcode="CD778"></a>
									<!-- layerpopup -->
									<input id="image-attach" type="file" name="fileup[]" multiple="multiple" accept="image/*"
										style="display:none;">
									<div class="layerstyle1 image-add-layer" style="bottom:32px;left:-21px; display: none;"
										id="add-image-layerpopup">
										<div class="layerstyle1_po">
											<span class="tail_btm" style="left:23px;"></span>
											<ul class="icon_set_list2">
												<li class="p_icon1">
													<a data-langcode="CD734">PC에서 올리기</a>
												</li>
												<li class="p_icon2" style="display:none;">
													<a data-langcode="CD735">기존파일 가져오기</a>
												</li>
												<li class="p_icon3" style="display:none;">
													<a data-langcode="CD736">외부 클라우드 연동</a>
												</li>
												<li class="p_icon4 flow-only" style="display:none;">
													<a data-langcode="CD737">구글 드라이브에서 가져오기</a>
												</li>
												<li class="p_icon5 flow-only" style="display:none;">
													<a data-langcode="CD738">드롭박스에서 가져오기</a>
												</li>
											</ul>
										</div>
									</div>
									<!-- //layerpopup -->
								</span>
								<!-- //사진첨부 -->

								<!-- 지도첨부 -->
								<span class="btn place">
									<a id="add-place" class="app_map" title="지도첨부" data-langcode="CD779"></a>
									<div id="add-place-input-layer" class="map_search_wrap" style="bottom:40px;left:-9px; display: none;">
										<div class="map_search_po">
											<span class="tail_btm"></span>
											<div class="map_sch_input">
												<input type="text" name="map-search" placeholder="장소를 입력하세요" autocomplete="off"
													data-langcode="CD739">
											</div>
										</div>
									</div>
								</span>
								<!-- //지도첨부 -->
							</div>

							<div class="fteditbox stylebox" style="display:none;">
								<!-- 볼드 -->
								<span class="btn">
									<a style="cursor:pointer" class="text_bold off" title="굵게"></a><!-- on / off -->
									<!-- 20190226 에디터 툴팁 -->
									<div class="tooltip_ly2" style="display: none;">
										<div class="tooltip_ly2_box">
											굵게 - 글 내용을 드래그 하거나 단축키(Ctrl + B)로 설정
										</div>
									</div>
									<!-- //20190226 에디터 툴팁 -->
								</span>
								<!-- 이탤릭 -->
								<span class="btn">
									<a style="cursor:pointer" class="text_italic off" title="기울임꼴"></a><!-- on / off -->
									<!-- 20190226 에디터 툴팁 -->
									<div class="tooltip_ly2" style="display: none;">
										<div class="tooltip_ly2_box">
											이탤릭 - 글 내용을 드래그 하거나 단축키(Ctrl + I)로 설정
										</div>
									</div>
									<!-- //20190226 에디터 툴팁 -->
								</span>
								<!-- 언더라인 -->
								<span class="btn">
									<a style="cursor:pointer" class="text_under off" title="밑줄"></a><!-- on / off -->
									<!-- 20190226 에디터 툴팁 -->
									<div class="tooltip_ly2" style="display: none;">
										<div class="tooltip_ly2_box">
											밑줄 - 글 내용을 드래그 하거나 단축키(Ctrl + U)로 설정
										</div>
									</div>
									<!-- //20190226 에디터 툴팁 -->
								</span>
								<!-- 취소선 -->
								<span class="btn">
									<a style="cursor:pointer" class="text_strike off" title="취소선"></a><!-- on / off -->
									<!-- 20190226 에디터 툴팁 -->
									<div class="tooltip_ly2" style="display: none;">
										<div class="tooltip_ly2_box">
											취소선 - 글 내용을 드래그 하거나 단축키(Ctrl + T)로 설정
										</div>
									</div>
									<!-- //20190226 에디터 툴팁 -->
								</span>
							</div>

							<!-- 20181119 해시태그/at -->
							<div class="fteditbox tagbox" style="display:none;">
								<!-- 해시태그 -->
								<span class="btn">
									<a style="cursor:pointer" class="srch_hashtag" title="#"></a>
									<!-- 20190226 에디터 툴팁 -->
									<div class="tooltip_ly2" style="display: none;">
										<div class="tooltip_ly2_box" data-langcode="CD842">
											해시태그 - '#' 입력 후 내용을 쓰고 스페이스바로 설정
										</div>
									</div>
									<!-- //20190226 에디터 툴팁 -->
								</span>
								<!-- at -->
								<span class="btn">
									<a style="cursor:pointer" class="srch_at" title="@"></a>
									<div class="tooltip_ly2" style="display: none;">
										<div class="tooltip_ly2_box" data-langcode="CD843">
											멘션 - '@' 입력 후 이름을 쓰고 ↓,↑,ENTER로 설정
										</div>
									</div>
									<!-- //20190226 에디터 툴팁 -->
								</span>
							</div>
							<!-- //20181119 해시태그/at -->

							<div class="fteditbox styletip" style="display:none;">
								<!-- style -->
								<span class="btn">
									<a style="cursor:pointer;" class="style_at" title="styletag"></a>
									<div class="tooltip_ly2" style="display: none;">
										<div class="tooltip_ly2_box" style="text-align:left" data-langcode="CD844">
											굵게/기울임/밑줄/취소선 - 글내용을 드래그하여 설정할 수 있습니다.
										</div>
									</div>
									<!-- //20190226 에디터 툴팁 -->
								</span>
							</div>

							<div class="right">
								<a class="btn_style01" id="cancel-edit" data-langcode="CD755">취소</a>
								<a class="btn_style00" id="submit-edit-post" data-langcode="CD724">완료</a>
							</div>
						</div>
					</div>
					<!-- 하위업무팝업  -->
					<div class="subtask-popup-wrap">
						<div class="subtask-popup-header">
							<i></i>
							<em class="subtask-project-title">플로우 프로젝트 명</em>
							<span class="subtask-popup-title">플로우 업무 내, 업무 추가</span>
							<button class="subtask-close-button" role="button"><span class="blind">닫기</span></button>
						</div>
					</div>
				</div>
			</div>
			<!-- //post-view -->
		</div>
		<!-- //collabo_list_wrap -->

		<!-- aside -->
		<!-- [D] 20180409 top: 77px; -->
		<div id="right-menu-box" class="aside_wrap" style="top: 0;bottom:0;padding-top: 77px;height: auto;">
			<div>
				<a class="btn_listback" data-langcode="CD775">이전화면</a>
			</div>
			<div class="collabo_set_wrap">
				<!-- <div class="tit">프로젝트 기능</div> -->
				<ul>
					<li>
						<a id="file-box" class="ico1" data-langcode="CD776">파일함</a>
					</li>
					<li>
						<a id="task-list" class="ico5" data-langcode="CD731">업무</a>
					</li>
					<li>
						<a id="schedule-calendar" class="ico4"><span id="today" class="date" style="display:block;"></span><span
								data-langcode="CD732">일정</span></a>
					</li>
					<!-- 20170427 수정 -->
					<li>
						<a id="todo-list" class="ico3" data-langcode="CD733">할일</a>
					</li>
				</ul>
			</div>
			<div id="sendience-widget" style="height:calc(100% - 210px);overflow:hidden;">
				<div class="r_invite_box">
					<a id="project-invite-btn" class="invite" data-langcode="CD780">초대하기</a>
				</div>
				<!-- 참여자목록 -->
				<div id="right-sendience-list" class="participant_wrap" style="">
					<div class="all_aplct_title"><span data-langcode="CD781">전체 참여자</span>&nbsp;
						<strong id="project-sendience-count"></strong>
						<strong data-langcode="CD784">명</strong>
						<a id="project-all-sendience" style="padding-top: 4px;" data-langcode="CD783">전체보기</a>
					</div>
					<ul style="display:none;">
						<li id="right-sendience-li-obj" class="right-sendience-li">
							<div class="photo" style="cursor:pointer;">
								<img id="user-prfl" onerror="this.src='/design3/img_rn/thumb26.gif'" src="/design3/img_rn/thumb26.gif"
									alt="">
							</div>
							<div id="sendience-right-btns" class="btn_right">
								<a id="sendience-chat" class="btn chat">
									<span class="blind" data-langcode="FL589">채팅</span>
								</a>
							</div>
							<div class="username" style="cursor:pointer;">
								<span id="sendience-name"></span>&nbsp;
								<img id="new" src="/design3/img_rn/ico/ico_new3.png" alt="" style="display:none;">
							</div>
						</li>
					</ul>

					<div id="sendience-scroll-layer" class="participant_scroll"
						style="max-height:850px;min-height:90px;height:auto;">
						<div id="project-join-request-title" class="part_title" style="display:none;">
							<h5>
								<strong data-langcode="CD785">가입신청자</strong>
								<span id="project-join-request-cnt"></span>
							</h5>
						</div>
						<ul id="project-join-request-list">
						</ul>

						<div id="project-manager-title" class="part_title">
							<h5>
								<strong data-langcode="CD786">관리자</strong>
								<span id="project-manager-cnt"></span>
							</h5>
						</div>
						<ul id="project-manager-list" class="right-sendience-ul">
						</ul>
						<div id="external-sendience-title" class="part_title">
							<h5>
								<strong data-langcode="CD787">외부참여자</strong>
								<span id="external-sendience-cnt"></span>
							</h5>
						</div>
						<ul id="external-sendience-list" class="right-sendience-ul">
						</ul>
						<div id="internal-sendience-title" class="part_title">
							<h5>
								<strong data-langcode="CD788">내부참여자</strong>
								<span id="internal-sendience-cnt"></span>
							</h5>
						</div>
						<ul id="internal-sendience-list" class="right-sendience-ul">
						</ul>
					</div>
				</div>
				<div class="btn_prj_chat_box">
					<a id="project-open-chat" class="btn_prj_chat" data-langcode="CD789">프로젝트 채팅</a>
				</div>
			</div>

			<div class="btn_backTop_wrap"
				style="bottom: auto;left: auto;top: auto;right: auto;position: relative;margin-top: 10px;">
				<a class="btn_backTop"> </a>
			</div>

		</div>
		<!-- //aside -->
	</div>
	<!-- //content2 -->
</div>
<!-- //content wrap -->

<!-- 게시물 공개 선택 버튼 -->
<div id="post-range-type-layer-object" style="display:none;">
	<div class="btn_style01_icowrap range-type">
		<a id="post-range-type-btn" class="btn_style01_ico ico-all" data-langcode="CD758">전체공개</a><!-- ico-adm 관리자만 -->
		<div id="post-range-type-change-popup" class="privacy_layer" style="display:none;">
			<h1 data-langcode="CD791">게시물 공개 대상</h1>
			<ul>
				<li ico-class="ico-all" data-langcode="CD758" ico-text="전체공개"><a class="ico1"><strong
							data-langcode="CD758">전체공개</strong><span data-langcode="CD793">전체 사람들에게 공개됩니다.</span></a></li>
				<li ico-class="ico-adm" data-langcode="CD792" ico-text="관리자만"><a class="ico2"><strong
							data-langcode="CD792">관리자만</strong><span data-langcode="CD794">프로젝트 관리자에게만 공개됩니다.</span></a></li>
			</ul>
		</div>
	</div>
</div>
<!-- //게시물 공개 선택 버튼 -->

<!-- post-document-edit -->
<div id="post-document-edit-obj" style="display:none;">
	<!-- post-cntn-area 에 들어갈 것들 -->
	<div id="document-edit">
		<!-- 글제목 -->
		<div class="pst_write_title_wrap">
			<div class="pst_write_title" style="height: 24px;">
				<input id="document-title" data-langcode="CD795" placeholder="제목 입력 (선택)" type="text" value="" maxlength="100"
					autocomplete=off spellcheck="false" style="overflow:visible;width:100%;color:#000;" />
			</div>
		</div>
		<!-- //글제목 -->

		<input data-langcode="CD796" name="COMMT-USER-ID" placeholder="작성자아이디" type="text" value="" maxlength="50"
			style="display:none;margin: 10px 0 0 25px;width: 300px;border-bottom: 1px solid #e7e7e7;font-size: 12px;padding: 3px 5px;"
			size="20" />
		<input data-langcode="CD797" name="COMMT-RGSN-DTTM" placeholder="작성일시(12자리)" type="text" value="" maxlength="12"
			style="display:none;width: 305px;margin: 10px 20px 0px 20px;border-bottom: 1px solid #e7e7e7;font-size: 12px;padding: 3px 5px;"
			size="20" />
		<input data-langcode="CD798" name="COMMT-HASHTAG" placeholder="해시태그(ex)주광욱, 김원 모)" type="text" value=""
			maxlength="200"
			style="display:none;margin: 10px 25px;width: 640px;border-bottom: 1px solid #e7e7e7;font-size: 12px;padding: 3px 5px;"
			size="100" />

		<div class='red_ttip_ly' id='postTip' style='display:none; top:156px'>
			<div class='po'><span class='tail'></span>
				<p class='txt_r' data-langcode="CD799">글을 입력하세요.</p>
			</div>
		</div>

		<div class="pst_write_bx" id="document-edit-contents">
			<!-- Add component here -->
		</div>
	</div>

	<!-- component -->
	<div style="display:none;">
		<div class="component" id="post-document-component">
			<!-- 첫번째 component 에는 'first' class추가 -->
			<a title="이동" class="icon-focused-move" data-langcode="C1786"></a>
			<a title="삭제" class="icon-focused-delete" data-langcode="H381"></a>
			<!-- component things in here -->
		</div>
	</div>
	<!-- // component -->

	<!-- space component -->
	<div style="display:none;">
		<div class="component space" id="post-document-space-component"></div>
	</div>
	<!-- // space component -->

	<!-- elements in component -->
	<div id="component-elements">
		<div class="ui-placeholder" style="height:2px;line-height:0;font-size:0;background-color:#2fe44d;display:none;">
		</div><!-- [D] 20180319 드래그시 이동선 (ui-placeholder) -->
		<!-- 주소 -->
		<div style="display:none;">
			<div class="map_bx comp-map comp" id="component-map">
				<div class="map_image">
					<img id="static-map" alt="지도에서보기">
				</div>
				<div class="map_title">
					<div class="logo-img"></div>
					<div class="title-box">
						<strong id="title"></strong>
						<p id="address"></p>
					</div>
				</div>
				
			</div>
		</div>
		<!-- //주소 -->

		<!-- 파일첨부 -->
		<div style="display:none;">
			<div class="filedown_bx comp-file comp" id="component-file" name="COLABO_FILE_BOX">
				<div class="attachfile new_atch" name="ATCH_LI">
					<img id="file-icon" src="/design3/img_rn/ico/file_icon_PDF.png" alt="">
					<em class="doc_drm" style="display:none;"></em>
					<dl>
						<dt><a id="file-name"></a></dt>
						<dd id="file-size"></dd>
					</dl>
				</div>
			</div>
		</div>
		<!-- //파일첨부 -->

		<!-- 이미지첨부 -->
		<div style="display:none;">
			<div id="component-image" class="comp-image comp" style="cursor:default">
				<img src="/design3/img_rn/ico_404page.gif" alt="" class="fw_imageitem">
			</div>
		</div>
		<!-- //이미지첨부 -->

		<!-- URL -->
		<div style="display:none;">
			<div class="url_bx comp-url comp" id="component-url">
				<div class="url_title">
					<strong id="title"></strong>
					<p id="description"></p>
				</div>
				<div class="url_pic">
					<img src="" alt="">
				</div>
				<div class="url_video" style="display:none;">
					<iframe width="642" height="440" style="border:none;width:100%;"></iframe>
				</div>
			</div>
		</div>
		<!-- //URL -->

		<!-- 글작성 -->
		<div style="display:none;">
			<div id="component-text" class="mentions-input comp-text comp">
				<div class="editable" contenteditable="true" style="color:#000"><p><br></p></div>
			</div>
		</div>
		<!-- //글작성 -->
	</div>
	<!-- // elements in component -->
</div>
<!-- //post-document-edit -->
<!-- post-document-view -->
<div id="post-document-view-obj" style="display:none;">
	<div id="document-view">
		<!-- 글제목 -->
		<div class="pst_view_title_wrap">
			<div class="pst_view_title">
				<span id="document-title" style="overflow:visible;width:100%;color:#000;"></span>
				<a id="motiveAdd" class="post-url" style="right: 100px; display:none"><span
						data-langcode="CD1936">활동</span><input type="text" value="" style="position:absolute;top:-9999em;"></a>
			</div>
		</div>
		<!-- //글제목 -->
		<div class="pst_write_bx" id="document-view-contents">
			<!-- Add component here -->
		</div>
		<div id="summary-click-listener-obj">... <span data-langcode="H309">더보기</span></div>
		<div id="summary-attach-layer" class="pst_write_bx">
			<div class="picture_bx" name="COLABO_IMG_BOX" style="display:none;">
				<ul id="images"></ul>
			</div>
			<div id="maps"></div>
			<div id="url-previews" style="display:none;"></div>
			<div class="filedown_bx" name="COLABO_FILE_BOX" style="display:none;">
				<!-- 
				<div class="filedown">
					<a id="download-all">모두받기(클라우드 파일은 제외)</a>
				</div>
					-->
				<div id="files"></div>
			</div>
		</div>
	</div>

	<!-- component -->
	<div style="display:none;">
		<div class="component" id="post-document-component">
			<!-- 첫번째 component 에는 'first' class추가 -->
			<!-- component things in here -->
		</div>
	</div>
	<!-- // component -->

	<!-- elements in component -->
	<div id="component-elements">

		<!-- 주소 -->
		<div style="display:none;">
			<div class="map_bx comp-map comp" id="component-map">
				<div class="map_image">
					<img id="static-map" alt="지도에서보기">
				</div>
				<div class="map_title">
					<div class="logo-img"></div>
					<div class="title-box">
						<strong id="title"></strong>
						<p id="address"></p>
					</div>
				</div>
			</div>
		</div>
		<!-- //주소 -->

		<!-- 파일첨부 -->
		<div style="display:none;">
			<div class="filedown_bx comp-file comp" id="component-file" name="COLABO_FILE_BOX">
				<div class="attachfile new_atch" name="ATCH_LI">
					<img id="file-icon" src="/design3/img_rn/ico/file_icon_PDF.png" alt="">
					<em class="doc_drm" style="display:none;"></em>
					<dl>
						<dt><a id="file-name"></a></dt>
						<dd id="file-size"></dd>
					</dl>
					<div id="file-download" class="filedtbtn" style="position:absolute;right:30px;top:28px;"><a
							class="down">다운로드</a></div>
				</div>
			</div>
		</div>
		<!-- //파일첨부 -->

		<!-- 이미지첨부 -->
		<div style="display:none;">
			<div id="component-image" class="comp-image comp">
				<img src="/design3/img_rn/ico_404page.gif" alt="" class="fw_imageitem">
			</div>
		</div>
		<!-- //이미지첨부 -->

		<!-- URL -->
		<div style="display:none;">
			<div class="url_bx comp-url comp" id="component-url">
				<div class="url_title">
					<strong id="title"></strong>
					<p id="description"></p>
				</div>
				<div class="url_pic">
					<img src="" alt="">
				</div>
				<div class="url_video" style="display:none;">
					<iframe width="642" height="440" style="border:none;width:100%;"></iframe>
				</div>
			</div>
		</div>
		<!-- //URL -->

		<!-- 글 -->
		<div style="display:none;">
			<div id="component-text" class="mentions-input comp-text comp">
				<div class="editable pst_txt" style="color:#000" medium-editor-index="0"></div>
			</div>
		</div>
		<!-- //글 -->
	</div>
	<!-- // elements in component -->

	<!-- summary components -->
	<div id="summary-component-elements" style="display:none;">
		<!-- MAP -->
		<div style="display:none;">
			<div class="component" id="map-li-obj">
				<div class="map_bx comp-map" id="component-map">
					<div class="map_title">
						<div class="logo-img"></div>
						<div class="title-box">
							<strong id="title"></strong>
							<p id="address"></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //MAP -->
		<!-- URL -->
		<div style="display:none;">
			<div class="component" id="url-preview-li-obj">
				<div class="url_bx" id="component-map">
					<div class="link_title">
						<div class="logo-img"></div>
						<div class="title-box">
							<strong id="title"></strong>
							<p id="description"></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //URL -->
		<!-- 사진 -->
		<ul style="display:none;">
			<li id="image-li-obj" class="file new_atch" name="PIC_LI">
				<img class="doubleImg" id="image-preview" src="">
			</li>
		</ul>
		<!-- //사진 -->
		<!-- 파일 -->
		<div style="display:none;">
			<div id="file-li-obj" class="attachfile" name="ATCH_LI">
				<img id="file-icon" src="" alt="" style="cursor:pointer">
				<em class="doc_drm" style="display:none;"></em>
				<dl>
					<dt><a id="file-name"></a></dt>
					<input type="hidden" id="F_RAND_KEY" name="F_RAND_KEY" value="">
					<dd id="file-size"></dd>
				</dl>
				<div id="file-download" class="filedtbtn" style="position:absolute;right:30px;top:28px;"><a class="down"
						data-langcode="action.download">다운로드</a></div>
			</div>
		</div>
		<!-- //파일 -->
	</div>
	<!-- // summary components -->
</div>
<!-- //post-document-view -->

<!-- post-task-obj -->
<div id="post-task-obj" style="display:none;">
	<!-- task-layer -->
	<div id="task-layer" class="pst_write_bx">
		<div id="task-props" class="workwriteWrap" style="min-height:200px;">
			<!-- 업무명 -->
			<div class="titleBx">
				<input name="TASK_NM" style="display: none;" type="text" maxlength="50" placeholder="업무명을 입력하세요"
					autocomplete="off" data-langcode="CD802">
				<span class="titleReadOnly" id="TASK_NM_READ_ONLY" style="padding-left: 0px; display: inline-block;">
					<!-- [D] 20190121 display: inline -> display: inline-block 으로 사용 부탁드립니다. --></span>
				<span class="num" id="TASK_SRNO" style="display: none;">
					<!-- [D] 20190121 display: inline -> display: inline-block 으로 사용 부탁드립니다. --></span>
			</div>


			<a id="GO_WORK_FLOW" class="goWorkFlow" style="display: none;" data-langcode="CD757">이곳을 클릭하여 해당 글로 이동할 수
				있습니다.</a>
			<!-- 업무내용 -->
			<div class="workwriteCont line-fold">
				<!-- line1 -->
				<div class="line" id="STATUS_LINE">
					<label class="icon1">
						<span class="blind" data-langcode="CD804">상태</span>
					</label>
					<div class="workTab">
						<button class="tab1 on" stts-value="0" data-langcode="CD721">요청</button>
						<button class="tab2" style="margin-left: -5px;" stts-value="1" data-langcode="CD722">진행</button>
						<button class="tab5" style="margin-left: -5px;" stts-value="4" data-langcode="CD723">피드백</button>
						<button class="tab3" style="margin-left: -5px;" stts-value="2" data-langcode="CD724">완료</button>
						<button class="tab4" style="margin-left: -5px;" stts-value="3" data-langcode="CD725">보류</button>
					</div>
				</div>
				<!-- line2 -->
				<div class="line" id="WORKER_LINE">
					<label class="icon2">
						<span class="blind" data-langcode="FL566">담당자</span>
					</label>
					<div id="workerTagLayer" class="nameBx">
						<span id="workerTagSelected"></span>
						<!-- tag li obj -->
						<div style="display:none;">
							<div id="worker-tag-li-obj" class="nameTag">
								<img src="" alt="" onerror="this.src='/design3/img_rn/img_photo_null32.png'">
								<strong></strong>
								<button id="worker-tag-remove-btn" style="cursor:pointer;">
									<span class="blind" data-langcode="H381">삭제</span>
								</button>
							</div>
						</div>
						<!-- tag li obj -->
						<button id="edit-worker" class="namePlus" style="height:28px;display:none;" data-langcode="CD807">담당자
							변경</button>
						<div id="add-worker" class="txt_add_nm">
							<span class="txt_add_nm_in">
								<input name="WORKER" type="text" placeholder="담당자 추가" data-langcode="CD808">
							</span>
							<!-- user layer -->
							<div id="worker-select-layer" class="mentions-input worker_select_layer"
								style="top:28px;left:-1px;max-height: 300px;min-width:200px;z-index:1000;border:1px solid #e5e6e9;padding-top:0px;display:none;">
								<ul id="worker-select-list" tabindex="0" class="user_list sizeSamll" style="display: none;"></ul>
							</div>
							<!-- worker select li obj -->
							<ul style="display:none;">
								<li id="worker-select-li-obj" class="">
									<a class="ui-corner-all" id="ui-id-45">
										<div class="photo_wrap">
											<div class="photo_po">
												<img id="user-prfl" width="40" height="40" src=""
													onerror="this.src='/design3/img_rn/img_photo_null32.png'">
											</div>
										</div>
										<p>
											<strong id="user-name" style="vertical-align:center;line-height:30px;"></strong>
										</p>
									</a>
								</li>
							</ul>
							<!-- worker select li obj -->
							<!-- //user layer -->
						</div>
					</div>
				</div>
				<!-- line3 -->
				<div class="line" id="START_DT_LINE">
					<label class="icon3">
						<span class="blind" data-langcode="CC667">시작일</span>
					</label>
					<div class="workdate" style="display: block;">
						<input class="START_DT" START_DT="" type="text" placeholder="시작일 추가" style="width:120px;" autocomplete="off"
							data-langcode="CD1832">
						<button id="START_DT_DEL" style="margin-left: -8px;display:none;" class="workdateDel">
							<span class="blind" data-langcode="H381">삭제</span>
						</button>
						<span id="START_DT_CNTN" class="c_red" style="display:none;" data-langcode="CD810">시작일이 마감일보다 이후 날짜로 되어
							있습니다.</span>
					</div>
				</div>
				<!-- line4 -->
				<div class="line" id="END_DT_LINE">
					<label class="icon4">
						<span class="blind" data-langcode="CD811">마감일</span>
					</label>
					<div class="workdate" style="display: block;">
						<input class="END_DT" END_DT="" type="text" placeholder="마감일 추가" style="width:120px;" autocomplete="off"
							data-langcode="CD812">
						<button id="END_DT_DEL" style="margin-left: -8px; display:none;" class="workdateDel">
							<span class="blind" data-langcode="H381">삭제</span>
						</button>
						<span id="END_DT_CNTN" class="c_red" style="display:none;" data-langcode="CD813">마감일이 시작일 이전 날짜로 되어
							있습니다.</span>
						<span id="END_DT_OVERDUE" class="c_red" style="display:none;" data-langcode="CD814">마감기한이 지났습니다.</span>
					</div>
				</div>
				<!-- line5 -->
				<!-- start -->
				<div id="end-time-pick-item" class="time-pick-info end-time-pick" style="display: none;">
					<i class="ico-clock"></i>
					<a role="button" class="time-add">시작시간 추가</a>
					<div class="time-pick">
						<span class="time">00:00</span>
						<span class="time-from-to" data-langcode="">부터</span>
						<a role="button" class="time-set-cancle"></a>
						<ul class="time-pick-list">
							<li>18:00</li>
							<li>18:10</li>
							<li>18:20</li>
							<li>18:30</li>
							<li>18:40</li>
							<li>18:50</li>
							<li>19:00</li>
							<li>19:10</li>
							<li>19:20</li>
							<li>19:30</li>
							<li>19:40</li>
							<li>19:50</li>
							<li>20:00</li>
							<li>20:10</li>
							<li>20:20</li>
						</ul>
					</div>
					<a role="button" class="time-pick-apply">적용</a>
				</div>
				<!-- end -->
				<div class="line" id="PROGRESS_LINE">
					<label class="icon5">
						<span class="blind" data-langcode="CD815">진척도</span>
					</label>
					<a class="workPrgrs">
						<div class="workPrgrs_bg">
							<!-- 20170407 수정 -->
							<strong id="PROGRESS_PER" class="txt"></strong>
							<span id="PROGRESS" class="bar percent0"></span>
							<div class="pcnt0" data="0" style="width:5%;display:block">
								<span class="pcnt">
									<button>0%</button>
								</span>
							</div>
							<div class="pcnt20" data="20" style="left:5%;">
								<span class="pcnt">
									<button>20%</button>
								</span>
							</div>
							<div class="pcnt40" data="40">
								<span class="pcnt">
									<button>40%</button>
								</span>
							</div>
							<div class="pcnt60" data="60">
								<span class="pcnt">
									<button>60%</button>
								</span>
							</div>
							<div class="pcnt80" data="80">
								<span class="pcnt">
									<button>80%</button>
								</span>
							</div>
							<div class="pcnt100" data="100">
								<span class="pcnt">
									<button>100%</button>
								</span>
							</div>
						</div>
						<!-- 20170407 수정 -->
					</a>
				</div>

				<!-- line6 -->
				<div class="line" id="PRIORITY_LINE">
					<label class="icon6">
						<span class="blind" data-langcode="CD816">우선순위</span>
					</label>
					<div class="imptc">
						<input type="text" name="imptcInput" placeholder="우선순위 선택" style="display: block;" data-langcode="CD817">
						<span id="PRIORITY" class="lv1" style="display: none;">낮음</span>
						<button id="PRIORITY_DEL" style="margin-left:-1px;display:none;" class="workdateDel">
							<span class="blind" data-langcode="H381">삭제</span>
						</button>
						<!-- level layerpopup -->
						<div id="PRIORITY_LAYER" class="imptc_ly" style="display: none;">
							<ul>
								<li>
									<button class="lv1" data="0" data-langcode="CD818">낮음</button>
								</li>
								<li>
									<button class="lv2" data="1" data-langcode="CD820">보통</button>
								</li>
								<li>
									<button class="lv3" data="2" data-langcode="CD821">높음</button>
								</li>
								<li>
									<button class="lv4" data="3" data-langcode="CD822">긴급</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<button class="workmore" data-langcode="CD823">항목 추가 입력</button>
				<div id="task-cntn" class="editable pst_txt" contenteditable="true" spellcheck="false"
					style="margin-top: 30px;min-height: 80px;white-space: pre-wrap;color:#000;"></div>
				<div id="task-cntn-attached"></div>
				<!-- 하위업무 -->
				<div id="subTask" class="subtask-wrap" style="display:none">
					<div class="subtask-header">
						<span class="subtask-title" data-langcode="">하위업무<em>1</em></span>
						<button type="" class="subtask-clear-btn" data-langcode="">전체삭제</button>
					</div>
					<ul class="subtask-list">
						<li class="complete">
							<span class="subtask-move-btn"><em class="blind">이동</em></span>
							<div class="subtask-input-area">
								<div class="subtask-status-area">
									<button type="button" class="subtask-status complete" data-langcode="" >완료</button>
									<ul class="subtask-status-list">
										<li>
											<button type="button" class="subtask-status request" data-langcode="">요청</button>
										</li>
										<li>
											<button type="button" class="subtask-status progress" data-langcode="">진행</button>
										</li>
										<li>
											<button type="button" class="subtask-status feedback" data-langcode="">피드백</button>
										</li>
										<li>
											<button type="button" class="subtask-status complete" data-langcode="">완료</button>
										</li>
										<li>
											<button type="button" class="subtask-status hold" data-langcode="">보류</button>
										</li>
									</ul>
								</div>
								<span class="subtask-input" data-langcode="">[플로우] 샘플 프로젝트 디자인 요청요청요청요청요청요청요청요청요청요청요청요청요청요청요청요청요청요청요청요청요청</span>
								<span class="subtask-comment">123</span>
								<input type="text" class="subtask-input" placeholder="업무명 입력(Enter로 업무 연속 등록 가능)" style="display: none;">
								<ul class="subtask-menu">
									<li>
										<span class="subtask-date-text on" data-langcode="">11/28</span>
										<button id="substaskDate" class="date" type="button" style="display: none;"><span class="blind" data-langcode="">날짜</span></button>
										<div class="subtask-calendar"></div>
									</li>
									<li>
										<span class="ico-subtask-level lv3 on"><em class="blind" data-langcode="">높음</em></span>
										<button class="rank" type="button"><span class="blind"  data-langcode="">우선순위</span></button>
										<div class="imptc">
											<div class="imptc_ly" style="display: none;">
												<ul>
													<li>
														<button class="lv1" data="0" data-langcode="CD818">낮음</button>
													</li>
													<li>
														<button class="lv2" data="1" data-langcode="CD820">보통</button>
													</li>
													<li>
														<button class="lv3" data="2" data-langcode="CD821">높음</button>
													</li>
													<li>
														<button class="lv4" data="3" data-langcode="CD822">긴급</button>
													</li>
												</ul>
											</div>
										</div>
									</li>
									<li>
										<button class="manager" type="button"><span class="blind" data-langcode="">담당자</span></button>
										<span class="subtask-manager on">
											<img src="/img/thumb_img.jpg" alt="하위업무 담당자"  data-langcode="">
											<span class="manager-checked-number">+99</span>
										</span>
										<div class="subtask-manager-area" style="display: none;">
											<div class="subtask-manager-search">
												<input type="text" placeholder="담당자 검색">
											</div>
											<div class="manager-list-box">
												<span class="subtask-manager-number">담당자<em>(2)</em></span>
												<ul class=subtask-manager-list>
													<!-- mcustomScrollbar 적용 -->
													<li class="checked">
														<!-- 선택 시 checked class 추가 -->
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김승훈</span>
													</li>
													<li class="checked">
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김주찬</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
												</ul>
											</div>
											<!-- <span class="search-none-text">검색결과 없음</span> -->
											<button type="button" class="subtask-confirm-btn">
												확인
											</button>
										</div>
									</li>
								</ul>
							</div>
							<button type="button" class="subtask-delete-btn"><span class="blind">삭제</span></button>
						</li>
						<li class="hold">
							<span class="subtask-move-btn"><em class="blind">이동</em></span>
							<div class="subtask-input-area">
								<div class="subtask-status-area">
									<button type="button" class="subtask-status hold" data-langcode="" >보류</button>
									<ul class="subtask-status-list">
										<li>
											<button type="button" class="subtask-status request" data-langcode="">요청</button>
										</li>
										<li>
											<button type="button" class="subtask-status progress" data-langcode="">진행</button>
										</li>
										<li>
											<button type="button" class="subtask-status feedback" data-langcode="">피드백</button>
										</li>
										<li>
											<button type="button" class="subtask-status complete" data-langcode="">완료</button>
										</li>
										<li>
											<button type="button" class="subtask-status hold" data-langcode="">보류</button>
										</li>
									</ul>
								</div>
								<span class="subtask-input" data-langcode="">플로우 테스트</span>
								<input type="text" class="subtask-input" placeholder="업무명 입력(Enter로 업무 연속 등록 가능)" style="display: none;">
								<ul class="subtask-menu">
									<li>
										<span class="subtask-date-text on" data-langcode="">11/28</span>
										<button id="substaskDate" class="date" type="button" style="display: none;"><span class="blind" data-langcode="">날짜</span></button>
										<div class="subtask-calendar"></div>
									</li>
									<li>
										<span class="ico-subtask-level lv3 on"><em class="blind" data-langcode="">높음</em></span>
										<button class="rank" type="button"><span class="blind"  data-langcode="">우선순위</span></button>
										<div class="imptc">
											<div class="imptc_ly" style="display: none;">
												<ul>
													<li>
														<button class="lv1" data="0" data-langcode="CD818">낮음</button>
													</li>
													<li>
														<button class="lv2" data="1" data-langcode="CD820">보통</button>
													</li>
													<li>
														<button class="lv3" data="2" data-langcode="CD821">높음</button>
													</li>
													<li>
														<button class="lv4" data="3" data-langcode="CD822">긴급</button>
													</li>
												</ul>
											</div>
										</div>
									</li>
									<li>
										<button class="manager" type="button"><span class="blind" data-langcode="">담당자</span></button>
										<span class="subtask-manager on">
											<img src="/img/thumb_img.jpg" alt="하위업무 담당자"  data-langcode="">
											<span class="manager-checked-number">+99</span>
										</span>
										<div class="subtask-manager-area" style="display: none;">
											<div class="subtask-manager-search">
												<input type="text" placeholder="담당자 검색">
											</div>
											<div class="manager-list-box">
												<span class="subtask-manager-number">담당자<em>(2)</em></span>
												<ul class=subtask-manager-list>
													<!-- mcustomScrollbar 적용 -->
													<li class="checked">
														<!-- 선택 시 checked class 추가 -->
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김승훈</span>
													</li>
													<li class="checked">
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김주찬</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
												</ul>
											</div>
											<!-- <span class="search-none-text">검색결과 없음</span> -->
											<button type="button" class="subtask-confirm-btn">
												확인
											</button>
										</div>
									</li>
								</ul>
							</div>
							<button type="button" class="subtask-delete-btn"><span class="blind">삭제</span></button>
						</li>
						<li>
							<span class="subtask-move-btn"><em class="blind">이동</em></span>
							<div class="subtask-input-area">
								<div class="subtask-status-area">
									<button type="button" class="subtask-status progress" data-langcode="" >진행</button>
									<ul class="subtask-status-list">
										<li>
											<button type="button" class="subtask-status request" data-langcode="">요청</button>
										</li>
										<li>
											<button type="button" class="subtask-status progress" data-langcode="">진행</button>
										</li>
										<li>
											<button type="button" class="subtask-status feedback" data-langcode="">피드백</button>
										</li>
										<li>
											<button type="button" class="subtask-status complete" data-langcode="">완료</button>
										</li>
										<li>
											<button type="button" class="subtask-status hold" data-langcode="">보류</button>
										</li>
									</ul>
								</div>
								<span class="subtask-input" data-langcode="">플로우 테스트</span>
								<input type="text" class="subtask-input" placeholder="업무명 입력(Enter로 업무 연속 등록 가능)" style="display: none;">
								<ul class="subtask-menu">
									<li>
										<span class="subtask-date-text on" data-langcode="">11/28</span>
										<button id="substaskDate" class="date" type="button" style="display: none;"><span class="blind" data-langcode="">날짜</span></button>
										<div class="subtask-calendar"></div>
									</li>
									<li>
										<span class="ico-subtask-level lv3 on"><em class="blind" data-langcode="">높음</em></span>
										<button class="rank" type="button"><span class="blind"  data-langcode="">우선순위</span></button>
										<div class="imptc">
											<div class="imptc_ly" style="display: none;">
												<ul>
													<li>
														<button class="lv1" data="0" data-langcode="CD818">낮음</button>
													</li>
													<li>
														<button class="lv2" data="1" data-langcode="CD820">보통</button>
													</li>
													<li>
														<button class="lv3" data="2" data-langcode="CD821">높음</button>
													</li>
													<li>
														<button class="lv4" data="3" data-langcode="CD822">긴급</button>
													</li>
												</ul>
											</div>
										</div>
									</li>
									<li>
										<button class="manager" type="button"><span class="blind" data-langcode="">담당자</span></button>
										<span class="subtask-manager on">
											<img src="/img/thumb_img.jpg" alt="하위업무 담당자"  data-langcode="">
											<span class="manager-checked-number">+99</span>
										</span>
										<div class="subtask-manager-area" style="display: none;">
											<div class="subtask-manager-search">
												<input type="text" placeholder="담당자 검색">
											</div>
											<div class="manager-list-box">
												<span class="subtask-manager-number">담당자<em>(2)</em></span>
												<ul class=subtask-manager-list>
													<!-- mcustomScrollbar 적용 -->
													<li class="checked">
														<!-- 선택 시 checked class 추가 -->
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김승훈</span>
													</li>
													<li class="checked">
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김주찬</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
												</ul>
											</div>
											<!-- <span class="search-none-text">검색결과 없음</span> -->
											<button type="button" class="subtask-confirm-btn">
												확인
											</button>
										</div>
									</li>
								</ul>
							</div>
							<button type="button" class="subtask-delete-btn"><span class="blind">삭제</span></button>
						</li>
						<li>
							<span class="subtask-move-btn"><em class="blind">이동</em></span>
							<div class="subtask-input-area">
								<div class="subtask-status-area">
									<button type="button" class="subtask-status feedback" data-langcode="" >피드백</button>
									<ul class="subtask-status-list">
										<li>
											<button type="button" class="subtask-status request" data-langcode="">요청</button>
										</li>
										<li>
											<button type="button" class="subtask-status progress" data-langcode="">진행</button>
										</li>
										<li>
											<button type="button" class="subtask-status feedback" data-langcode="">피드백</button>
										</li>
										<li>
											<button type="button" class="subtask-status complete" data-langcode="">완료</button>
										</li>
										<li>
											<button type="button" class="subtask-status hold" data-langcode="">보류</button>
										</li>
									</ul>
								</div>
								<span class="subtask-input" data-langcode="">플로우 테스트</span>
								<input type="text" class="subtask-input" placeholder="업무명 입력(Enter로 업무 연속 등록 가능)" style="display: none;">
								<ul class="subtask-menu">
									<li>
										<span class="subtask-date-text imminent on" data-langcode="">오늘 10:30</span>
										<button id="substaskDate" class="date" type="button" style="display: none;"><span class="blind" data-langcode="">날짜</span></button>
										<div class="subtask-calendar"></div>
									</li>
									<li>
										<span class="ico-subtask-level lv4 on"><em class="blind" data-langcode="">긴급</em></span>
										<button class="rank" type="button"><span class="blind"  data-langcode="">우선순위</span></button>
										<div class="imptc">
											<div class="imptc_ly" style="display: none;">
												<ul>
													<li>
														<button class="lv1" data="0" data-langcode="CD818">낮음</button>
													</li>
													<li>
														<button class="lv2" data="1" data-langcode="CD820">보통</button>
													</li>
													<li>
														<button class="lv3" data="2" data-langcode="CD821">높음</button>
													</li>
													<li>
														<button class="lv4" data="3" data-langcode="CD822">긴급</button>
													</li>
												</ul>
											</div>
										</div>
									</li>
									<li>
										<button class="manager" type="button"><span class="blind" data-langcode="">담당자</span></button>
										<span class="subtask-manager on">
											<img src="/img/thumb_img.jpg" alt="하위업무 담당자"  data-langcode="">
										</span>
										<div class="subtask-manager-area" style="display: none;">
											<div class="subtask-manager-search">
												<input type="text" placeholder="담당자 검색">
											</div>
											<div class="manager-list-box">
												<span class="subtask-manager-number">담당자<em>(2)</em></span>
												<ul class=subtask-manager-list>
													<!-- mcustomScrollbar 적용 -->
													<li class="checked">
														<!-- 선택 시 checked class 추가 -->
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김승훈</span>
													</li>
													<li class="checked">
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김주찬</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
												</ul>
											</div>
											<!-- <span class="search-none-text">검색결과 없음</span> -->
											<button type="button" class="subtask-confirm-btn">
												확인
											</button>
										</div>
									</li>
								</ul>
							</div>
							<button type="button" class="subtask-delete-btn"><span class="blind">삭제</span></button>
						</li>
						<li>
							<span class="subtask-move-btn"><em class="blind">이동</em></span>
							<div class="subtask-input-area">
								<div class="subtask-status-area">
									<button type="button" class="subtask-status request" data-langcode="" >요청</button>
									<ul class="subtask-status-list">
										<li>
											<button type="button" class="subtask-status request" data-langcode="">요청</button>
										</li>
										<li>
											<button type="button" class="subtask-status progress" data-langcode="">진행</button>
										</li>
										<li>
											<button type="button" class="subtask-status feedback" data-langcode="">피드백</button>
										</li>
										<li>
											<button type="button" class="subtask-status complete" data-langcode="">완료</button>
										</li>
										<li>
											<button type="button" class="subtask-status hold" data-langcode="">보류</button>
										</li>
									</ul>
								</div>
								<span class="subtask-input" data-langcode="">플로우 테스트</span>
								<input type="text" class="subtask-input" placeholder="업무명 입력(Enter로 업무 연속 등록 가능)" style="display: none;">
								<ul class="subtask-menu">
									<li>
										<span class="subtask-date-text" data-langcode="">11/28</span>
										<button id="substaskDate" class="date on" type="button"><span class="blind" data-langcode="">날짜</span></button>
										<div class="subtask-calendar"></div>
									</li>
									<li>
										<span class="ico-subtask-level"><em class="blind" data-langcode="">높음</em></span>
										<button class="rank on" type="button"><span class="blind"  data-langcode="">우선순위</span></button>
										<div class="imptc">
											<div class="imptc_ly" style="display: none;">
												<ul>
													<li>
														<button class="lv1" data="0" data-langcode="CD818">낮음</button>
													</li>
													<li>
														<button class="lv2" data="1" data-langcode="CD820">보통</button>
													</li>
													<li>
														<button class="lv3" data="2" data-langcode="CD821">높음</button>
													</li>
													<li>
														<button class="lv4" data="3" data-langcode="CD822">긴급</button>
													</li>
												</ul>
											</div>
										</div>
									</li>
									<li>
										<button class="manager on" type="button"><span class="blind" data-langcode="">담당자</span></button>
										<span class="subtask-manager">
											<img src="/img/thumb_img.jpg" alt="하위업무 담당자"  data-langcode="">
										</span>
										<div class="subtask-manager-area" style="display: none;">
											<div class="subtask-manager-search">
												<input type="text" placeholder="담당자 검색">
											</div>
											<div class="manager-list-box">
												<span class="subtask-manager-number">담당자<em>(2)</em></span>
												<ul class=subtask-manager-list>
													<!-- mcustomScrollbar 적용 -->
													<li class="checked">
														<!-- 선택 시 checked class 추가 -->
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김승훈</span>
													</li>
													<li class="checked">
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김주찬</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
													<li>
														<span>
															<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														</span>
														<span class="name">김원모</span>
													</li>
												</ul>
											</div>
											<!-- <span class="search-none-text">검색결과 없음</span> -->
											<button type="button" class="subtask-confirm-btn">
												확인
											</button>
										</div>
									</li>
								</ul>
							</div>
							<button type="button" class="subtask-delete-btn"><span class="blind">삭제</span></button>
						</li>
					</ul>

					<div class="subtask-bottom">
						<a role="button" class="subtask-add-btn" data-langcode="">Add</a>
						<div class="subtask-registered-area">
							<div class="subtask-input-area">
								<div class="subtask-status-area">
									<button type="button" class="subtask-status request" data-langcode="" >요청</button>
									<ul class="subtask-status-list">
										<li>
											<button type="button" class="subtask-status request" data-langcode="">요청</button>
										</li>
										<li>
											<button type="button" class="subtask-status progress" data-langcode="">진행</button>
										</li>
										<li>
											<button type="button" class="subtask-status feedback" data-langcode="">피드백</button>
										</li>
										<li>
											<button type="button" class="subtask-status complete" data-langcode="">완료</button>
										</li>
										<li>
											<button type="button" class="subtask-status hold" data-langcode="">보류</button>
										</li>
									</ul>
								</div>
								<input type="text" class="subtask-input" placeholder="업무명 입력(Enter로 업무 연속 등록 가능)">
								<ul class="subtask-menu">
									<li>
										<button id="substaskDate" class="date" type="button"><span class="blind" data-langcode="">날짜</span></button>
										<div class="subtask-calendar"></div>
									</li>
									<li>
										<button class="rank" type="button"><span class="blind"  data-langcode="">우선순위</span></button>
									</li>
									<li>
										<button class="manager" type="button"><span class="blind" data-langcode="">담당자</span></button>
											<!-- 담당자 팝업 -->
											<div id="todo-owner-layer" class="membbox_pop memberpop" style="display:none;">
												<div class="membbox_popbx manager">
													<span class="tail"></span>
													<div class="iptbx">
														<input name="member-search-input" type="text" class="srchName" placeholder="이름을 입력하세요."
															data-langcode="H443">
													</div>
													<div class="membboxscroll">
														<ul id="todo-owner-list">
														</ul>
														<ul style="display:none;">
															<li id="todo-owner-li-obj">
																<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
																	onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
																<span id="user-name" class="name"></span>
																<a id="remove-todo-owner">
																	<span class="blind" data-langcode="CD755">취소</span>
																</a>
															</li>
														</ul>
													</div>
													<div class="membbox_select" style="display:none">
														<ul>
															<li>
																<img src="/design2/img_rn/img_photo_null40.png" alt="" class="photo"
																	onerror="this.src='/design2/img_rn/img_photo_null40.png'">
																<span class="name"></span>
																<a id="remove-todo-owner"><span class="blind" data-langcode="CD755">취소</span></a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<!-- //담당자 팝업 -->
									</li>
								</ul>
								<button type="button" class="subtask-register-btn"><span class="blind" data-langcode="">등록</span></button>
							</div>
							<p class="subtask-cancle-text"data-langcode=""><em data-langcode="">취소</em>하려면 ESC키를 누르세요.</p>		
						</div>
					</div>
				</div>
				<!-- //하위업무 -->
			</div>
		</div>
		<div class='red_ttip_ly' id='postTtipTask' style='display:none;'>
			<div class='po'><span class='tail'></span>
				<p class='txt_r' data-langcode="CD802">업무명을 입력하세요.</p>
			</div>
		</div>
	</div>
	<!-- //task-layer -->
	<div id="edit-attached-obj">
		<!-- URL -->
		<div id="url-preview" style="display:none;"></div>
		<div style="display:none;">
			<div class="component preview-li-obj" id="url-preview-li-obj" style="cursor:pointer;margin:10px 0;">
				<a title="삭제" id="remove" class="icon-focused-delete"></a>
				<div class="url_bx comp-url">
					<div class="url_title">
						<strong id="title"></strong>
						<p id="description"></p>
					</div>
					<div class="url_pic">
						<img src="" alt="">
					</div>
					<div class="url_video" style="display:none;">
						<iframe width="642" height="440" style="border:none;width:100%;"></iframe>
					</div>
				</div>
			</div>
		</div>
		<!-- //URL -->
		<!-- 사진 -->
		<div class='photo_loll_wrap' name='COLABO_IMG_BOX' style="margin-top:0;display:none;">
			<div class='photo_loll_fix' style="min-height: 0px;">
				<ul name='COLABO_PIC_UL' id="images"></ul>
			</div>
			<ul style="display:none;">
				<li id="image-li-obj" class='file new_atch' name='PIC_LI'>
					<div style='overflow:hidden;'>
						<img id="thumbnail" src='' alt='1'>
					</div>
					<input type='hidden' id='P_RAND_KEY' name='P_RAND_KEY' value=''>
					<input type='hidden' id='P_INFO' name='P_INFO' value=''>
					<a id="remove" class='btn_del' title='삭제'></a>
				</li>
			</ul>
		</div>
		<!-- //사진 -->
		<!-- 파일 -->
		<div id="files" name="COLABO_FILE_BOX" style="display:none;"></div>
		<div style="display:none;">
			<div class="component" id="file-li-obj" style="margin:10px 0;">
				<div class="comp-file" style="cursor:default">
					<a id="remove" class="btn_del"></a>
					<div class="filedown_bx">
						<div class="attachfile new_atch" name="ATCH_LI">
							<img id="file-icon" src="/design3/img_rn/ico/file_icon_PDF.png" alt="">
							<em class="doc_drm" style="display:none;"></em>
							<dl>
								<dt><a id="file-name"></a></dt>
								<dd id="file-size"></dd>
							</dl>
							<input type="hidden" id="F_RAND_KEY" name="F_RAND_KEY" value="">
							<input type="hidden" id="F_INFO" name="F_INFO" value="">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //파일 -->
	</div>
	<div id="view-attached-obj">
		<!-- URL -->
		<div id="url-preview" style="display:none;margin:20px 0;"></div>
		<div style="display:none;">
			<div class="component preview-li-obj" id="url-preview-li-obj" style="cursor:pointer;margin:10px 0;">
				<div class="url_bx comp-url">
					<div class="url_title">
						<strong id="title"></strong>
						<p id="description"></p>
					</div>
					<div class="url_pic">
						<img src="" alt="">
					</div>
					<div class="url_video" style="display:none;">
						<iframe width="642" height="440" style="border:none;width:100%;"></iframe>
					</div>
				</div>
			</div>
		</div>
		<!-- //URL -->

		<!-- 사진 -->
		<div class='picture_bx' name='COLABO_IMG_BOX' style="margin-top:0;display:none;margin:20px 0;">
			<ul name='COLABO_PIC_UL' id="images"></ul>
			<ul style="display:none;">
				<li id="image-li-obj" class='file new_atch' name='PIC_LI'>
					<img id="thumbnail" src='' alt='1'>
				</li>
			</ul>
		</div>
		<!-- //사진 -->

		<!-- 파일 -->
		<div name="COLABO_FILE_BOX" style="display:none;">
			<div class='filedown' style="padding: 0;">
				<!-- <a id="download_all_files">모두받기(클라우드 파일은 제외)</a> -->
				<div id="files"></div>
				<div style="display:none;">
					<div class="component" id="file-li-obj" style="margin:10px 0;">
						<div class="filedown_bx">
							<div class="attachfile new_atch" name="ATCH_LI">
								<img id="file-icon" src="/design3/img_rn/ico/file_icon_PDF.png" alt="">
								<em class="doc_drm" style="display:none;"></em>
								<dl>
									<dt><a id="file-name"></a></dt>
									<dd id="file-size"></dd>
								</dl>
								<div class="filedtbtn" style="position:absolute;right:30px;top:28px;">
									<a class="down" id="download-btn" style="padding-top: 4px;" data-langcode="action.download">다운로드</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //파일 -->
	</div>
</div>
<!-- //post-task-obj -->

<!-- post-schedule-edit -->
<div id="post-schedule-edit-obj" style="display:none;">
	<div id="schedule-edit" class="pst_write_bx pwrite_date" style="margin:17px 17px">
		<div id="schd_write" class="todo_write_wrap schedule">
			<div class="title off">
				<input id="TTL" type="text" spellcheck="false" placeholder="일정 제목을 입력하세요" maxLength="60" autocomplete="off"
					style="margin-left:10px;" data-langcode="CD825">
			</div>
			<div class="red_ttip_ly" style="display:none;">
				<div class="po">
					<span class="tail"></span>
					<p class="txt_r" data-langcode="CD826">일정을 입력하세요.</p>
				</div>
			</div>
			<ul>
				<li class="sch_line">
					<span class="ico2 time"></span>
					<input id="SCHD_STTG_DT" class="SCHD_STTG_DT" type="text" value="" autocomplete="off">
					<div id="STTG_TM_COMBO" class="sch_combobox">
						<span id="SCHD_STTG_TM">11:00</span><a id="SCHD_STTG_TM_BUL" class="bul"></a>
						<ul id="SEL_SCHD_STTG_TM" style="display:none;z-index:1001; height:300px;"
							class="schedule-start-time-dropdown">
						</ul>
					</div>
					<em>~</em>
					<input id="SCHD_FNSH_DT" class="SCHD_FNSH_DT" type="text" value="" style="margin-left: 10px;"
						autocomplete="off">
					<div id="FNSH_TM_COMBO" class="sch_combobox">
						<span id="SCHD_FNSH_TM">11:00</span><a id="SCHD_FNSH_TM_BUL" class="bul"></a>
						<ul id="SEL_SCHD_FNSH_TM" style="display:none;z-index:1001;" class="schedule-end-time-dropdown">
						</ul>
					</div>
					<label style="position:relative;left:20px;"><input id="ALL_DAY_YN" type="checkbox">&nbsp;<span
							data-langcode="CD827">종일</span></label>
				</li>
				<li id="schParticipant" class="sch_line" style="display: none;">
					<span class="ico2 participant"></span>
					<div id="workerTagLayer" class="nameBx">
						<span id="workerTagSelected"></span>
						<!-- tag li obj -->
						<div style="display:inline-block;">
							<div id="worker-tag-li-obj" class="nameTag">
								<img src="" alt="" onerror="this.src='/design3/img_rn/img_photo_null32.png'">
								<strong></strong>
								<button id="worker-tag-remove-btn" style="cursor:pointer;">
									<span class="blind" data-langcode="H381">삭제</span>
								</button>
							</div>
						</div>
						<!-- tag li obj -->
						<button class="namePlus" style="height:28px;display:none;" data-langcode="">참석자 변경</button>
						<div class="txt_add_nm">
							<span class="txt_add_nm_in">
								<input name="WORKER" type="text" placeholder="참석자 추가" data-langcode="">
							</span>
							<!-- user layer -->
							<div class="mentions-input worker_select_layer"
								style="top:28px;left:-1px;max-height: 300px;min-width:200px;z-index:1000;border:1px solid #e5e6e9;padding-top:0px;display:block;">
								<ul tabindex="0" class="user_list sizeSamll" style="display: block;">
									<li class="">
										<a class="ui-corner-all" id="ui-id-45">
											<div class="photo_wrap">
												<div class="photo_po">
													<img id="user-prfl" width="40" height="40" src="/design3/img_rn/img_photo_null32.png"
														onerror="this.src='/design3/img_rn/img_photo_null32.png'" class="mCS_img_loaded">
												</div>
											</div>
											<p>
												<strong id="user-name" style="vertical-align:center;line-height:30px;"
													user-id="madrascheck">운영자</strong>
											</p>
										</a>
									</li>
								</ul>
							</div>
							<!-- worker select li obj -->
							<ul style="display:none;">
								<li id="worker-select-li-obj" class="">
									<a class="ui-corner-all" id="ui-id-45">
										<div class="photo_wrap">
											<div class="photo_po">
												<img id="user-prfl" width="40" height="40" src=""
													onerror="this.src='/design3/img_rn/img_photo_null32.png'">
											</div>
										</div>
										<p>
											<strong id="user-name" style="vertical-align:center;line-height:30px;"></strong>
										</p>
									</a>
								</li>
							</ul>
							<!-- worker select li obj -->
							<!-- //user layer -->
						</div>
					</div>
				</li>
				<li id="map-li" class="sch_line">
					<span class="ico2 map"></span>
					<input id="pac-input" class="PLACE" type="text" spellcheck="false" placeholder="장소를 입력하세요" maxLength="100"
						style="margin:0 0 0 -9px;padding-top: 3px;" data-langcode="CD739">
					<input id="LOCATION" type="hidden" maxLength="300">
					<div id="map-image-layer" style="padding: 20px;display:none;"><img id="map-image"
							style="display: block;width: 100%;height: 200px;" src=""></div>
				</li>
				<li class="sch_line" id="video_conference_li">
					<span class="ico2 video"></span>
					<button type="button" class="sch_video_btn" id="create_video_conference_btn">화상회의 만들기</button>
					<div class="sch_txt_video" style="display: none;">
						<em id="title"></em><!--  회의 일시: <span id="start_time">00-00-00 00:00</span>-->
						<button type="button" class="sch_video_btn delete" id="vc_delete">삭제</button>
						<input id="vc_index" type="hidden" value="">
					</div>
				</li>
				<li class="sch_line alarm">
					<span class="ico2 alarm"></span>
					<div id="ALAM_COMBO" class="sch_combobox" style="width:185px;">
						<span id="SCHD_ALAM" PRE_ALAM="30" data-langcode="CD829">30분 전 미리알림</span><a class="bul"></a>
						<ul id="SEL_SCHD_ALAM" style="display:none;" class="pre-alarm-dropdown">
							<li val="0" data-langcode="CD830">없음</li>
							<li val="10" data-langcode="DCD289">10분 전 미리알림</li>
							<li val="30" data-langcode="CD829">30분 전 미리알림</li>
							<li val="60" data-langcode="CD833">1시간 전 미리알림</li>
							<li val="120" data-langcode="CD834">2시간 전 미리알림</li>
							<li val="180" data-langcode="CD835">3시간 전 미리알림</li>
							<li val="1440" data-langcode="CD836">1일 전 미리알림</li>
							<li val="2880" data-langcode="CD837">2일 전 미리알림</li>
							<li val="10080" data-langcode="CD838">7일 전 미리알림</li>
						</ul>
					</div>
				</li>
				<!-- DB금융만 적용 -->
				<li class="sch_line" id="pbBusiness">
					<form name="popForm">
						<input type="hidden" class="form_post_srno" />
						<input type="hidden" class="form_custom_id" />
						<input type="hidden" class="form_custom_type" />
						<input type="hidden" class="form_custom_info" />
						<input type="hidden" class="form_schedule_gb" />
						<input type="hidden" class="form_complete_yn" />
						<input type="hidden" class="form_activity_content" />
					</form>
					<input type="hidden" class="_CUSTOMER_ID" value="">
					<span class="ico2 sales"></span>
					<button id="pbRegisterBtn" class="sales-btn">PB영업활동 등록</button>
					<div class="sales-activity">
						<ul class="sales-activity-list">
							<li><span class="_SCHEDULE_GB" data-langcode=""></span></li>
							<li><span class="_CUSTOMER_TYPE" data-langcode=""></span></li>
							<li><span class="_CUSTOMER_INFO" data-langcode=""></span></li>
						</ul>
						<span class="active-label"></span>
						<p class="sales-activity-content">
						</p>
						<div class="sales-activity-btn">
							<button type="button" class="incomplete on" data-langcode="">미완료</button><!-- 완료시 on class 추가 -->
							<button type="button" class="complete on" data-langcode="">완료</button><!-- 완료시 on class 추가 -->
						</div>
						<div class="pb-btn-area">
							<button type="button" class="pb-modify">수정</button>
							<button type="button" class="pb-delete">삭제</button>
						</div>
					</div>
				</li>
				<!-- //DB금융 -->
				<li class="sch_line">
					<span class="ico2 memo"></span>
					<div contenteditable="true" id="MEMO" spellcheck="false" placeholder="메모를 입력하세요"
						style="min-height:50px;color:#000;" data-langcode="CD839"></div><!-- textarea로 수정 : 20160511 -->
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- //post-schedule-edit -->
<!-- post-schedule-view -->
<div id="post-schedule-view-obj" style="display:none;">
	<div id="schedule-view">
		<div class="todo_write_wrap type2 mgb30">
			<ul>
				<li id="TTL" class="sch_line" style="border-top:none;">
					<div class="sch_titlebox">
						<dl>
							<dt><span id="month">12월</span><strong id="day">31</strong></dt>
							<dd class="title" id="title" data-langcode="CD841">일정제목</dd>
							<dd class="date" id="date" data-langcode="CD842">2016년 12월 31 (수), 오전 9:30 - 2017년 1월 1 (목), 오후 10:30</dd>
						</dl>
					</div>
				</li>
				<li id="attendeeStatus" class="sch_line" style="display:none; line-height:32px;">
					<span class="ico2 participant"></span>
					<div class="sch_txt" id="" style="width:95%;">
						<div class="number-participants-area">
							<span class="number-participants">참여자<strong>4</strong>명</span>
							<div class="attendance-status">
								<span class="attend">참석<strong>2</strong></span>
								<span>거절<strong>2</strong></span>
								<span>미정<strong>2</strong></span>
							</div>
						</div>
						<ul class="list-participants excess">
							<!-- 6개이상 excess class -->
							<li>
								<div class="profile-img attend">
									<img src="/img/spample.gif" alt="참여자 프로필 이미지">
								</div>
							</li>
							<li>
								<div class="profile-img attendance">
									<img src="/img/spample.gif" alt="참여자 프로필 이미지">
								</div>
							</li>
							<li>
								<div class="profile-img undefined">
									<img src="/img/spample.gif" alt="참여자 프로필 이미지">
								</div>
							</li>
							<li>
								<div class="profile-img">
									<img src="/img/spample.gif" alt="참여자 프로필 이미지">
								</div>
							</li>
							<li>
								<div class="profile-img">
									<img src="/img/spample.gif" alt="참여자 프로필 이미지">
								</div>
							</li>
							<li>
								<div class="profile-img">
									<img src="/img/spample.gif" alt="참여자 프로필 이미지">
								</div>
							</li>
						</ul>
						<button class="btn-change-attendee" type="button">참석자 변경</button>
					</div>
				</li>
				<li id="PLACE" class="sch_line" style="display:none;">
					<span class="ico2 map"></span>
					<div class="sch_txt" id="address" style="width:95%;" data-langcode="CD843">서울시 영등포구 영신로 220, KnK 디지털타워 1213호<a
							class="link">지도보기</a></div>
					<div class="googlemap" id="googlemap"></div>
				</li>
				<li id="MEMO" class="sch_line" style="display:none; line-height:32px;">
					<span class="ico2 memo"></span>
					<div class="sch_txt" id="schd-memo" style="width:95%;"></div>
				</li>
				<li id="ALAM" class="sch_line alarm" style="display:none;">
					<span class="ico2 alarm"></span>
					<div class="sch_txt" id="schd-alam" data-langcode="CD829">30분 전 미리알림</div>
				</li>
				<!--  -->
				<li id="DBPB" class="sch_line">
					<input type="hidden" class="_CUSTOMER_ID" value="">
					<span class="ico2 sales"></span>
					<button id="pbRegisterBtnInContent" class="sales-btn">PB영업활동 등록</button>
					<div class="sales-activity">
						<ul class="sales-activity-list">
							<li><span class="_SCHEDULE_GB" data-langcode=""></span></li>
							<li><span class="_CUSTOMER_TYPE" data-langcode=""></span></li>
							<li><span class="_CUSTOMER_INFO" data-langcode=""></span></li>
						</ul>
						<span class="active-label"></span>
						<p class="sales-activity-content">
						</p>
						<div class="sales-activity-btn">
							<button type="button" class="incomplete on" data-langcode="">미완료</button><!-- 완료시 on class 추가 -->
							<button type="button" class="complete on" data-langcode="">완료</button><!-- 완료시 on class 추가 -->
						</div>
						<div class="pb-btn-area">
							<button type="button" class="pb-modify">수정</button>
							<button type="button" class="pb-delete">삭제</button>
						</div>
					</div>
				</li>
				<!--  -->

				<li id="VIDEO" class="sch_line video" style="display:none;">
					<span class="ico2 video"></span>
					<div class="sch_txt" id="" data-langcode="">
						<div class="sch_txt_video">
							<em id="schd-video-title">title</em><!-- 화상회의 시작 시간: <span id="schd-video-start">yy-mm-dd hh:ss</span> -->
							<button type="button" class="sch_video_btn attend" id="vc_attend">참여하기</button>
						</div>
					</div>
				</li>
				<li id="BIZCAL" class="sch_line alarm" style="display:none;">
					<div id="bizcal_save"
						style="width: 200px;height: 40px;cursor:pointer;font-weight: bold;font-size:16px;color: black;text-align: center;border-radius: 40px;-moz-border-radius: 40px;-webkit-border-radius: 40px;behavior: url(../PIE-1.0.0/pie.htc);background-color: lightgray;top: 8px;position: absolute;left: 200px;border-top: 10px;line-height: 35px;"
						data-langcode="CD845">비즈캘린더 저장</div>
				</li>
			</ul>
		</div>
		<dl class="sch-attend-area">			<!-- on class 추가 -->
			<dt class="blind" data-langcode="">일정참석 여부</dt>
			<!-- 선택시 'on' class 추가 -->
			<dd><button type="button" class="attend on">참석</button></dd>
			<dd><button type="button" class="attendance">불참</button></dd>
			<dd><button type="button" class="undefined">미정</button></dd>
		</dl>
	</div>
</div>
<!-- //post-schedule-view -->

<!-- post-todo-edit -->
<div id="post-todo-edit-obj" style="display:none">
	<div id="todo-edit" class="pst_write_bx">
		<!-- 할일 20160314 -->
		<div class="todo_write_wrap mgb30">
			<div style="position: relative;padding-top: 11px;">
				<input data-langcode="CD846" type="text" id="todo-title" placeholder="할일제목을 입력하세요(선택)" maxlength="299"
					spellcheck="false"
					style="font-weight: bold;margin-bottom: 10px;margin-left:10px;width: 95%;line-height: 18px;font-size: 16px;border: 0;">
			</div>
			<ul id="todo-list" name="TODO_UL">
			</ul>
			<ul style="display:none;">
				<li name="TODO_LI" id="todo-li-obj">
					<span id="draggable-icon" class="icodrag" style="display:none;"></span>
					<a id="remove-todo-li" class="check del">
						<span class="blind" data-langcode="H381">삭제</span>
					</a>
					<div class="vtable">
						<div class="vtable_row">
							<!-- 20160330 추가 -->
							<div class="left">
								<!-- 20160330 추가 -->
								<input data-langcode="CD847" name="todo-cntn" type="text" spellcheck="false" class="todoCntn"
									placeholder="할일 입력 (Enter or Tab 선택 시 아래에 할일 입력 추가됨)" maxlength="60">
								<div class="red_ttip_ly" id="todoTtip" style="display:none;">
									<div class="po">
										<span class="tail"></span>
										<p class="txt_r" data-langcode="CD848">할일을 입력하세요.</p>
									</div>
								</div>
							</div>
							<!-- 우측 -->
							<div class="right">
								<span id="todo-date" class="datebox">
									<span id="todo-due-date" class="datetxt" style="display:none;">
										<!--display:block;-->
										<span id="dateColor"></span>
									</span>
									<a id="set-todo-date" class="date off">
										<!--display:none;-->
										<span class="blind" data-langcode="CD732">일정</span>
									</a>
									<!-- 날짜 팝업 -->
									<div id="todo-date-layer" class="membbox_pop datepop" style="display:none;">
										<div class="membbox_popbx">
											<!-- <span class="tail"></span> -->
											<div class="rqstdttm"></div>
											<div class="membbox_select">
												<ul>
													<li>
														<span class="name currentrqstdttm"></span>
														<a id="remove-todo-date" style="top: 6px"><span class="blind"
																data-langcode="CD755">취소</span></a>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<!-- //날짜 팝업 -->
								</span>
								<span id="todo-owner" class="membbox" style="margin-right:10px;">
									<img id="todo-owner-prfl-phtg" src="/design2/img_rn/thumb26.gif"
										onerror="this.src='/design3/img_rn/thumb26.gif'" alt="" class="prflImg"
										style="display:none;object-fit:cover;">
									<!--display:block;-->
									<a class="memb off" id="set-todo-owner">
										<!--display:none;-->
										<span id="todo-owner-name" class="blind" data-langcode="FL566">담당자</span>
									</a>
									<!-- 담당자 팝업 -->
									<div id="todo-owner-layer" class="membbox_pop memberpop" style="display:none;">
										<div class="membbox_popbx manager">
											<span class="tail"></span>
											<div class="iptbx">
												<input name="member-search-input" type="text" class="srchName" placeholder="이름을 입력하세요."
													data-langcode="H443">
											</div>
											<div class="membboxscroll">
												<ul id="todo-owner-list">
												</ul>
												<ul style="display:none;">
													<li id="todo-owner-li-obj">
														<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png"
															onerror="this.src='/design3/img_rn/img_photo_null40.png'" class="photo">
														<span id="user-name" class="name"></span>
														<a id="remove-todo-owner">
															<span class="blind" data-langcode="CD755">취소</span>
														</a>
													</li>
												</ul>
											</div>
											<div class="membbox_select" style="display:none">
												<ul>
													<li>
														<img src="/design2/img_rn/img_photo_null40.png" alt="" class="photo"
															onerror="this.src='/design2/img_rn/img_photo_null40.png'">
														<span class="name"></span>
														<a id="remove-todo-owner"><span class="blind" data-langcode="CD755">취소</span></a>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<!-- //담당자 팝업 -->
								</span>
							</div>
							<!-- //우측 -->
						</div>
					</div>
				</li>
			</ul>
			<!-- 추가 -->
			<div class="list_plus">
				<a id="add-todo-li" data-langcode="CD851">할일 추가</a>
			</div>
			<!-- //추가 -->
		</div>
		<!-- //할일 20160314 -->
	</div>
</div>
<!-- //post-todo-edit -->
<!-- post-todo-view -->
<div id="post-todo-view-obj" style="display:none;">
	<div id="todo-view" class="todo_write_wrap mgb30">
		<div class="title2">
			<strong id="todo-conv-ttl"></strong>
			<span id="progress-percent" class="pcnt"></span>
			<span id="summary-info" class="right"></span>
		</div>
		<div class="progressbar">
			<span id="progress-bar"></span>
		</div>
		<ul id="todo-cntn-list" name="TODO_UL">
		</ul>
		<ul style="display:none;">
			<li id="todo-cntn-li-obj" class="todo-cntn-li">
				<!-- 맨첫번째 class="first 추가" -->
				<a id="check" class="check"><span class="blind"></span></a><!-- a on, off,   onclick="fn_todoFinish(this)"-->
				<div class="vtable">
					<div class="vtable_row">
						<div class="left">
							<span id="cntn-text" class="txt"></span>
						</div>
						<div class="right">
							<span class="datebox" rqstdttm="">
								<span id="date"></span>
							</span>
							<span class="membbox">
								<img id="owner" class="todo-owner" src="/design2/img_rn/thumb26.gif"
									onerror="this.src='/design2/img_rn/thumb26.gif'" alt="" style="cursor: pointer;object-fit:cover;">
							</span>
						</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
</div>
<!-- //post-todo-view -->

<!-- post-text-edit -->
<div id="post-text-edit-obj" style="display:none;">
	<div id="text-edit" class="pst_write_bx">
		<div class='red_ttip_ly' id='textTipText' style='display:none; top:36px; left:0px'>
			<div class='po'><span class='tail'></span>
				<p class='txt_r' data-langcode="CD799">글을 입력하세요.</p>
			</div>
		</div>
		<div id="text-cntn" class="editable" contenteditable="true" spellcheck="false"
			style="margin-top: 10px;min-height: 100px;color:#000;" placeholder="글을 입력하세요." data-langcode="CD799"></div>
		<div id="text-cntn-attached" style="margin-top: 20px;">
			<div id="url-preview" style="display:none;"></div>
			<!-- URL -->
			<div style="display:none;">
				<div class="component preview-li-obj" id="url-preview-li-obj" style="cursor:pointer;margin:0;">
					<a id="remove" class="btn_del"></a>
					<div class="url_bx comp-url">
						<div class="url_title">
							<strong id="title"></strong>
							<p id="description"></p>
						</div>
						<div class="url_pic">
							<img src="" alt="">
						</div>
						<div class="url_video" style="display:none;">
							<iframe width="642" height="440" style="border:none;width:100%;"></iframe>
						</div>
					</div>
				</div>
			</div>
			<!-- //URL -->
			<!-- 사진 -->
			<div class='photo_loll_wrap' name='COLABO_IMG_BOX' style="margin-top:0;display:none;">
				<div class='photo_loll_fix' style="min-height: 0px;">
					<ul name='COLABO_PIC_UL' id="images"></ul>
				</div>
				<ul style="display:none;">
					<li id="image-li-obj" class='file new_atch' name='PIC_LI'>
						<div style='overflow:hidden;'>
							<img id="thumbnail" src='' alt='1'
								style="max-height: 100%; width: auto; -ms-user-select: none; -webkit-user-drag: none; user-select:none;">
						</div>
						<a id="remove" class='btn_del'></a>
					</li>
				</ul>
			</div>
			<!-- //사진 -->
			<!-- 파일 -->
			<div id="files" name="COLABO_FILE_BOX" style="display:none;"></div>
			<div style="display:none;">
				<div class="component" id="file-li-obj" style="margin:10px 0;">
					<div class="comp-file" style="cursor:default">
						<a id="remove" class="btn_del"></a>
						<div class="filedown_bx">
							<div class="attachfile new_atch" name="ATCH_LI">
								<img id="file-icon" src="/design3/img_rn/ico/file_icon_PDF.png" alt="">
								<em class="doc_drm" style="display:none;"></em>
								<dl>
									<dt><a id="file-name"></a></dt>
									<dd id="file-size"></dd>
								</dl>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //파일 -->
		</div>
	</div>
</div>
<!-- //post-text-edit -->
<!-- post-text-view -->
<div id="post-text-view-obj" style="display:none;">
	<div id="text-view">
		<div class='red_ttip_ly' id='textTip' style='display:none;'>
			<div class='po'><span class='tail'></span>
				<p class='txt_r' data-langcode="CD799">글을 입력하세요.</p>
			</div>
		</div>
		<div id="text-cntn" class="post-text" contenteditable="false" spellcheck="false" style="color:#000;"></div>
		<div id="text-cntn-attached">
			<div id="url-preview" style="display:none;"></div>
			<!-- URL -->
			<div style="display:none;">
				<div class="component preview-li-obj" id="url-preview-li-obj" style="cursor:pointer;margin:0;">
					<a title="삭제" id="remove" class="icon-focused-delete"></a>
					<div class="url_bx comp-url">
						<div class="url_title">
							<strong id="title"></strong>
							<p id="description"></p>
						</div>
						<div class="url_pic">
							<img src="" alt="">
						</div>
						<div class="url_video" style="display:none;">
							<iframe width="642" height="440" style="border:none;width:100%;"></iframe>
						</div>
					</div>
				</div>
			</div>
			<!-- //URL -->

			<!-- 사진 -->
			<div class='picture_bx' name='COLABO_IMG_BOX' style="margin-top:0;display:none;">
				<ul name='COLABO_PIC_UL' id="images"></ul>
				<ul style="display:none;">
					<li id="image-li-obj" class='file new_atch' name='PIC_LI'>
						<img id="thumbnail" src='' alt='1'>
					</li>
				</ul>
			</div>
			<!-- //사진 -->

			<!-- 파일 -->
			<div name="COLABO_FILE_BOX" style="display:none;">
				<div id="files"></div>
				<div style="display:none;">
					<div class="component" id="file-li-obj" style="margin:0;">
						<div class="comp-file">
							<div class="filedown_bx">
								<div class="attachfile new_atch" name="ATCH_LI">
									<img id="file-icon" src="/design3/img_rn/ico/file_icon_PDF.png" alt="">
									<em class="doc_drm" style="display:none;"></em>
									<dl>
										<dt><a id="file-name"></a></dt>
										<dd id="file-size"></dd>
									</dl>
									<div class="filedtbtn" style="position:absolute;right:30px;top:28px;">
										<a class="down" id="download-btn" style="padding-top: 4px;" data-langcode="action.download">다운로드</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //파일 -->
		</div>
	</div>
</div>
<!-- //post-text-view -->
<!--//post-->
<!-- remark-objects -->
<div id="remark-objects" style="display:none;">
	<!-- remark-li-obj -->
	<div id="remark-li-obj" class="remarkLayer">
		<div id="remark-view-layer"></div>
		<div id="remark-edit-layer"></div>
	</div>
	<!-- // remark-li-obj -->
	<!-- 댓글보여주기 -->
	<div id="remark-view-obj" class="post_reply_bx">
		<div class="photo" style="cursor: pointer;">
			<img id="prfl-phtg" style="object-fit: cover;" onerror="this.src='/design2/img_rn/img_photo_null40.png'" alt=""
				src="/design2/img_rn/img_photo_null40.png">
			<!--profile-data="" onclick="fn_profile('yuki81');"-->
		</div>
		<!-- 사진 -->
		<div id="right-box" class="right">
			<a id="edit" data-langcode="CB1228">수정</a>
			<!--fn_setEditRemarkMode('874399')-->
			<em class="sbar"></em>
			<a id="delete" data-langcode="H381">삭제</a>
			<!--fn_deleteRemark('101270','1880991','874399')-->
		</div>
		<dl>
			<dt>
				<strong id="user-name" style="cursor: pointer;">이름</strong>
				<span id="remark-rgsn-dttm"></span>
				<div id="re-like-box">
					<span class="relike" id="re-like-btn" style="cursor: pointer;">
						<span data-langcode="CD856">좋아요 취소 </span>
					</span>
					<span id="re-like-cnt"></span>
				</div>
			</dt>
			<dd class="remark_cntn">
				<pre id="cntn" class="font_setting" style="color:#000">내용입니다</pre>
			</dd>
		</dl>
		<div id="remark-attach-layer">
			<div id="images" class="re_imgbx_wrap" style="display: none;"> </div>
			<div style="display:none">
				<div id="image-li-obj" class="re_imgbx">
					<div class="remark_image_div">
						<img src="" style="width: 90px;height: 90px;object-fit: cover;">
					</div>
				</div>
			</div>
			<div id="files" class="re_filebx_wrap" style="display: none;"> </div>
			<div style="display:none">
				<div id="file-li-obj" class="re_filebx">
					<img id="file-icon" src="/design2/img_rn/ico/icon_sq_DOWN.gif">
					<em class="doc_drm" style="display:none;"></em>
					<a id="file-name" class="file_name"></a>
					<span id="file-ext" class="file_exten" style="margin-left:0px;"></span>
					<span id="file-size" class="file_capac" style="margin-left:0px;"></span>
					<span id="download" data-langcode="action.download">다운로드</span>
				</div>
			</div>
		</div>
	</div>
	<!-- //댓글보여주기 -->
	<!-- 댓글수정 -->
	<div id="remark-edit-obj" class="post_reply_modify">
		<div class="photo">
			<img id="user-prfl" src="/design2/img_rn/img_photo_null40.png"
				onerror="this.src='/design2/img_rn/img_photo_null40.png'" alt="">
		</div>
		<div class="mentions-input" style="display: block;">
			<div id="remark-input" data-langcode="CD858" contenteditable="true" maxlength="4000"
				class="mentions remarkcntn input ui-autocomplete-input"
				placeholder="댓글을 입력하세요(Enter는 입력, shift or ctrl + Enter는 줄바꿈)" autocomplete="off" spellcheck="false"></div>
			<div id="remarkAtchFile" style="display:none;">
				<input id="file-attach" type="file" name="fileup[]" multiple="multiple" />
			</div>
			<a id="add-remark-attach" class="photo_btn_wrap">
				<div id="remarkPhotoLayer" class="layerstyle2" style="top:-40px;right:3px;">
					<div class="layerstyle2_po">
						<span class="tail" style="right:12px;top:34px;transform: rotateX(180deg);"></span>
						<div class="addfilelayer" data-langcode="CD859">첨부</div>
					</div>
				</div>
			</a>
		</div>
		<span id="edit-cancel-box" class="focusinout"><a id="cancel-edit" data-langcode="CD755">취소</a><span
				data-langcode="CD860">하려면 Esc 키를 누르세요.</span></span>
		<div id="upload-status-layer" class="post_dnd_ly type_rp" style="display:none;left:45px;">
			<div class="post_dnd_ly_po">
				<div id="upload-progress-bar" class="status_bar" style="width: 50%;"></div>
				<div class="txt" data-langcode="CD773">첨부할 파일, 이미지 등을 여기에 끌어다 놓으세요.</div>
			</div>
			<div id="drop-layer" style="position:absolute;top:0;left:0;width:100%;height:100%;background-color:#00000000">
			</div>
		</div>
		<div id="remark-attach-layer">
			<div id="images" class="re_imgbx_wrap" style="display: none;"> </div>
			<div style="display:none">
				<div id="image-li-obj" class="remark-image-obj re_imgbx" data="">
					<div class="remark_image_div">
						<img id="remark-img" src="/design3/img_rn/ico_404page.gif"
							onerror="this.src='/design3/img_rn/ico_404page.gif'" onload="fn_setImgOneMoreStyle(this, 90);">
					</div>
					<a id="remove" class="img_del"></a>
				</div>
			</div>
			<div id="files" class="re_filebx_wrap" style="display: none;"> </div>
			<div style="display:none">
				<div id="file-li-obj" class="remark-file-obj re_filebx">
					<img id="file-icon" src="/design2/img_rn/ico/icon_sq_DOWN.gif">
					<em class="doc_drm" style="display:none;"></em>
					<a id="file-name" class="file_name"></a>
					<span id="file-ext" class="file_exten"></span>
					<span id="file-size" class="file_capac"></span>
					<button id="remove" class="file_del">
						<span class="blind" data-langcode="H381">삭제</span>
					</button>
				</div>
			</div>
		</div>
	</div>
	<!-- //댓글수정 -->
</div>
<!-- // remark-objects -->

<!-- # hashtag..-->
<div id="hashtagLayer" class="hashtag-layer mentions-input"
	style="width:648px;display:none;position:absolute;max-height:265px;min-height:53px;background-color:#ffffff;border:1px solid #e9eaed;box-sizing:border-box;z-index:9001;">
	<ul tabindex="0" class="user_list" style="left: 0px; top: 24px; right: 0px; display: block;">
	</ul>
</div>
<ul style="display:none;">
	<li class="hashtag-li" id="hashtagLiObj">
		<a>
			<div class="hashtag_list_wrap">
				<div class="hashtagtxt" style="text-overflow: ellipsis;overflow: hidden;max-width: 86%;"><strong id="tag"
						style="white-space:nowrap;"></strong></div>
				<div class="tagcount"><strong id="tag-count"></strong><span data-langcode="CD862">개 게시물</span></div>
			</div>
		</a>
	</li>
</ul>
<!-- //# -->

<!-- @ people tag-->
<div id="mentionLayer" class="mentions-layer mentions-input"
	style="display:none;position:absolute;max-height:265px;min-height:53px;background-color:#ffffff;border:1px solid #e9eaed;box-sizing:border-box;z-index:9001;">
	<ul tabindex="0" class="user_list " style="width:100%;">
	</ul>
</div>
<!-- @ people tag liObj -->
<ul style="display:none;">
	<li class="mention-li" id="mentionLiObj">
		<a>
			<div class="photo_wrap">
				<div class="photo_po"><img id="prfl-phtg" width="40" height="40" src="design3/img_rn/img_photo_null32.png">
				</div>
			</div>
			<p><strong id="user-name">ALL<font color="#625dba"> </font></strong><span style="margin-left: 0px;"
					id="dvsn-name">Project members</span></p>
		</a>
	</li>
</ul>
<!-- //@ people tag liObj -->
<!-- @ filtered people not exist -->
<div style="display:none;">
	<div id="noFilteredMention" style="background-color: #efefef;height: 53px;text-align: center;line-height: 53px;"
		data-langcode="CD863">검색결과없음</div>
</div>
<!-- @ //filtered people not exist -->
<!-- //@ people tag-->

<!-- 20160926 새글업데이트 -->
<div class="newupdt" style="top:100px;display:none;">
	<a data-langcode="CD864">새 글 업데이트</a>
</div>
<!-- //20160926 새글업데이트 -->

<div id="tooltip" class="tootip_layer" style="display:none;z-index:500;position:fixed;">
	<div class="tootip_layer_in tail_left">
	</div>
</div>

<!-- 2019.08.09 파일 업로드 -->
<div class="upload_wrap">
	<!-- article -->
	<div id="upload_fail" class="article type2" style="display:none">
		<p class="imgUp"><img src="../design2/img_rn/ico/icon_file_error.png" alt=""></p>
		<div class="type_box">
			<div class="tit">
				<p><em>0</em>건의 업로드 실패 내역이 있습니다.</p>
			</div>
		</div>
		<button class="btn_cancle" type="button">확인</button>
	</div>
	<!--// article -->
	<!-- article -->
	<div id="upload_loading" class="article" style="display:none">
		<div class="type_box">
			<div class="tit">
				<p><span>플로우_데탑설치후시작2플로우_데탑설치후시작2</span><em></em></p>
				<span class="total">44/99</span>
			</div>
		</div>
		<!-- bar_area -->
		<div class="bar_area">
			<div class="bar"><span style="width:50%">진행률</span></div>
		</div>
		<!-- bar_area -->
		<button class="btn_cancle" type="button">취소</button>
	</div>
	<!--// article -->
</div>


<div id="uploadFailedBoxBg"
	style="display:none; position:fixed;top:0;left:0;width:100%;height:100%;background:#000;opacity:0.5;filter: alpha(opacity=50);z-index:1000;">
</div><!-- modal -->

<!-- layerpopup -->
<div id="uploadFailedContent" class="layerstyle4 _postCopy_wrap"
	style="display:none; width:420px; top:200px;left:20%;z-index:1100;">
	<!-- [D] 20190220 class="_postCopy_wrap" 추가 -->
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3>업로드 실패</h3>
			<a class="btn_layerstyle4_close"><span class="blind">닫기</span></a>
		</div>
		<div class="layerstyle4_cont">
			<!-- pop_upload_wrap -->
			<div class="pop_upload_wrap">
				<ul>
					<li style="display:none">
						<span class="file_name">파일명</span><em>.pdf</em>
						<span class="fail_info">오류</span>
					</li>
				</ul>
			</div>
			<!--// pop_upload_wrap -->
		</div>
	</div>
	<!-- //팝업 컨텐츠 -->
</div>
<!-- //layerpopup -->

<!--// 2019.08.09 파일 업로드 -->
</div>
		<div id="taskLayer" style="display: none; z-index: 2;">

		<!-- 20170419 -->
		<div class="workmoaWrap_layout" style="bottom:0;top:0;width:100%;position: fixed;">
			<!-- 20170404 업무모아보기 layout -->
			<div class="workmoaWrap workmoa_topbar">
				<!-- container -->
				<div class="container">
					<!-- lnb -->
					<div class="lnb_wrap" style="overflow: visible;width:200px;">
						<div class="snb_split_area"></div><!-- 사이즈조정버튼 -->

						<!-- 20170404 업무모아보기 검색조건 -->
						<div class="workMoaSort">
							<!-- 모두지우기 -->
							<!-- <div class="sortBx allDel" style="display: block;">
								<strong class="title">업무 구분</strong>
								<a id="btnFilterReset">모두지우기</a>
							</div> -->
							<!-- 헬프도구 
							<div class="sortBx sortBx-open" id="help" style="cursor:pointer">
								<div class="title"><b>업무 도우미 BETA</b></div>
								<div class="sortUL">
									<div id="total-task-report" class="sortLi">전체업무리포트</div>
									<div id="worker-task-report" class="sortLi">담당자리포트</div>
									<div id="excel-task" class="sortLi">엑셀내려받기</div>
								</div>
							</div> -->
							<!-- 업무구분 -->
							<div class="sortBx sortBx-open" id="task" style="cursor:pointer">
								<!-- <a class="bult" value="task"><span class="blind">펼침</span></a> --><!-- 접힘/펼침 -->
								
								<div class="title" data-langcode="CT865">업무 구분</div>
								<div class="sortUL">
									<div class="sortLi"><label><input name="task" value="1" id="myTask" type="radio">&nbsp;<span data-langcode="CT866">내 업무</span></label></div>
									<div class="sortLi"><label><input name="task" value="2" id="requireTask" type="radio">&nbsp;<span data-langcode="CT867">요청한 업무</span></label></div>
									<div class="sortLi"><label><input name="task" value="3" id="totalTask" type="radio">&nbsp;<span data-langcode="H157">전체 업무</span></label></div>
								</div>
							</div>
							<!-- //시작일 -->
							<!-- 상태 -->
							<div class="sortBx sortBx-open" id="stts" style="cursor:pointer">
								<div class="bult open" id="STTS"><span class="blind" data-langcode="CT874">펼힘</span></div><!-- 접힘/펼침 -->
								<div class="title" data-langcode="CD804">상태</div>
								<div class="sortUL">
									<div class="sortLi"><label><input name='stts' id="required" value="0" type="checkbox">&nbsp;<span data-langcode="CD721">요청</span></label></div>
									<div class="sortLi"><label><input name='stts' id="ongoing" value="1" type="checkbox">&nbsp;<span data-langcode="CD722">진행</span></label></div>
									<div class="sortLi"><label><input name='stts' id="feedback" value="4" type="checkbox">&nbsp;<span data-langcode="CD723">피드백</span></label></div>
									<div class="sortLi"><label><input name='stts' id="finished" value="2" type="checkbox">&nbsp;<span data-langcode="CD724">완료</span></label></div>
									<div class="sortLi"><label><input name='stts' id="holding" value="3" type="checkbox">&nbsp;<span data-langcode="CD725">보류</span></label></div>
								</div>
							</div><!-- //상태 -->
							<!-- 우선순위 -->
							<div class="sortBx sortBx-open" id="priority" style="cursor:pointer">
								<a class="bult open" id="PRIORITY"><span class="blind" data-langcode="CT874">펼힘</span></a><!-- 접힘/펼침 -->
								<div class="title" data-langcode="CD816">우선순위</div>
								<div class="sortUL">
									<div class="sortLi"><label><input name='priority' id="urgent" type="checkbox">&nbsp;<span data-langcode="CD822">긴급</span></label></div>
									<div class="sortLi"><label><input name='priority' id="high" type="checkbox">&nbsp;<span data-langcode="CD821">높음</span></label></div>
									<div class="sortLi"><label><input name='priority' id="normal" type="checkbox">&nbsp;<span data-langcode="CD820">보통</span></label></div>
									<div class="sortLi"><label><input name='priority' id="low" type="checkbox">&nbsp;<span data-langcode="CD818">낮음</span></label></div>
									<div class="sortLi"><label><input name='priority' id="none" type="checkbox">&nbsp;<span data-langcode="AA0211">없음</span></label></div> 
								</div>
							</div><!-- //우선순위 -->
							<!-- 시작일 -->
							<div class="sortBx sortBx-fold" id="startdt" style="cursor:pointer">
								<a class="bult close" id="STARTDT"><span class="blind" data-langcode="CT882">접힘</span></a><!-- 접힘/펼침 -->
								<div class="title" data-langcode="CC667">시작일</div>
								<div class="sortUL">
									<div class="sortLi"><label><input value="0" id="total" name="startdt" type="radio">&nbsp;<span data-langcode="FL557">전체</span></label></div>
									<div class="sortLi"><label><input value="1" id="today" name="startdt" type="radio">&nbsp;<span data-langcode="CT885">오늘</span></label></div>
									<div class="sortLi"><label><input value="2" id="week" name="startdt" type="radio">&nbsp;<span data-langcode="CT886">이번주</span></label></div>
									<div class="sortLi"><label><input value="3" id="month" name="startdt" type="radio">&nbsp;<span data-langcode="CT887">이번달</span></label></div>
									<div class="sortLi"><label><input value="4" id="none" name="startdt" type="radio">&nbsp;<span data-langcode="CT888">날짜미정</span></label></div>
								</div>
							</div><!-- //시작일 -->
							<!-- 마감일 -->
							<div class="sortBx sortBx-fold" id="enddt" style="cursor:pointer">
								<a class="bult close" id="ENDDT"><span class="blind" data-langcode="CT882">접힘</span></a><!-- 접힘/펼침 -->
								<div class="title" data-langcode="CD811">마감일</div>
								<div class="sortUL">
									<div class="sortLi"><label><input value="0" id="total" name="enddt" type="radio">&nbsp;<span data-langcode="FL557">전체</span></label></div>
									<div class="sortLi"><label><input value="5" id="delay" name="enddt" type="radio">&nbsp;<span data-langcode="AA0010">지연</span></label></div>
									<div class="sortLi"><label><input value="1" id="today" name="enddt" type="radio">&nbsp;<span data-langcode="CT891">오늘까지</span></label></div>
									<div class="sortLi"><label><input value="2" id="week" name="enddt" type="radio">&nbsp;<span data-langcode="CT892">이번주까지</span></label></div>
									<div class="sortLi"><label><input value="3" id="month" name="enddt" type="radio">&nbsp;<span data-langcode="CT893">이번달까지</span></label></div>
									<div class="sortLi"><label><input value="4" id="none" name="enddt" type="radio">&nbsp;<span data-langcode="CT888">날짜미정</span></label></div>
																
								</div>
							
							</div><!-- //마감일 -->
							
							
						</div><!-- //20170404 업무모아보기 검색조건 -->
					</div>
					<!-- //lnb -->
					
					<div  id="taskGroup" class="workSearch-box wschbx_btn">
						<span class="taskLayerTitle" data-langcode="H157">전체 업무</span>
						<!-- 검색결과건수 -->
						<div class="workSearch-box" id="srchBox"><strong>'ooo'</strong>검색결과 : o건 <a id="emptySrchCondition" data-langcode="CT899">초기화</a></div>
						<div class="wschbx_btn_r">
							<span id="downloadButton" class="btn_icodown" style="float:left; padding-right:10px" data-langcode="FA1415">엑셀내려받기</span>
							<!-- 파일다운로더 -->
							<div id="dialog" title="">
							  <div class="progress-label" data-langcode="CT901">내려받기를 준비합니다!</div>
							  <div id="progressbar"></div>
							</div>
						
							<div class="btn_wsch_view">
								<a id="viewGroup" class="bg_l"><span class="bg_r" data-langcode="CT902">묶어보기</span></a>
								<!-- 레이어 -->
								<div id="viewGroupUl" class="ly_wsch_view" style="width:120px;display:none;">
									<ul>
										<li id="none" value="0"><a data-langcode="CD830">없음</a></li>
										<li id="status" value="1"><a data-langcode="CT904">상태 기준</a></li>
										<li id="duedate" value="2"><a data-langcode="CT905">마감일 기준</a></li>
										<li id="prj" value="3"><a data-langcode="CT906">프로젝트 기준</a></li>
									</ul>
								</div>
								<!-- //레이어 -->
							</div>
							<div class="btn_wsch_set"><a id="setColumn" data-langcode="CC682">보기설정</a></div><!-- 활성화 클래스 on -->
							<div class="btn_wsch_close"><a id="taskClose" data-langcode="H417">닫기</a></div>
						</div>
					</div>

					<!-- content wrap (상단검색결과건수 없을 때 class="workSearch-off") -->
					<div class="content_wrap workSearch-off" id="workContents" style="background-color: #ffffff;"><!-- right값은 0이 아니라 30px 입니다. 30<->630 --> 
						<!-- content -->
						<div class="content" style="min-height:0;"><!-- 개발하실때 필요없으면 삭제하셔도 됩니다. -->
							<!-- table-layout middle -->
							<div class="worktbMid" id="contentsBox" style="background-color: #00000000;">
								<!-- table -->
								<div class="workTable" id="taskList" style="padding-bottom: 30px;">
								</div>
								<!-- //table -->
								<div id="noTask" style="display:none;padding:320px 0px 0px 300px;">
									<span style="font-size:25px;color:gray;">
										<img src="../img_rn/ico/no_collabo_list_icon6.png"><span data-langcode="CT909">조회된 업무가 없습니다</span>
									</span>
								</div>
							</div><!-- //table-layout middle -->
						</div>
						<!-- //content -->
					</div>
					<!-- //content wrap -->
					
										<!-- content wrap (상단검색결과건수 없을 때 class="workSearch-off") -->
					<div class="content_wrap workSearch-off" id="ganttContents" style="background-color: #ffffff; display:none;"><!-- right값은 0이 아니라 30px 입니다. 30<->630 --> 
						<div class="content" style="min-height:0;"><!-- 개발하실때 필요없으면 삭제하셔도 됩니다. -->
							<div class="worktbMid" id="ganttContentsBox" style="background-color: #00000000;">
								<div id="exsitDateContents">	</div>					
		
								<div id="notExistDateContents" class="openflow_wrap listtype listtype2">
	
								</div>
							</div>
						</div>
					</div>
					<!-- //content wrap -->

					<!-- 20170404 aside -->
					<div class="workAside" id="taskWorkAside" style="display: none; width:600px;background: white;">
						<!-- <div class="xBar _m1(myCore|moveBar) _stopDefault" id="seperator" title="분할위치 조정"></div>  -->
						<!-- 포스트 -->
						<div id="TASK_POST" style="margin-right:10px;"></div>
						<!-- //포스트 -->

						<!-- @ people tag-->
						<div id="mentionLayer" class="mentions-layer mentions-input" style="display:none;position:absolute;max-height:265px;min-height:53px;background-color:#ffffff;border:1px solid #e9eaed;box-sizing:border-box;">
							<ul tabindex="0" class="user_list " style="width:100%;">
							</ul>
						</div>
						<!-- @ people tag liObj --> 
						<ul style="display:none;">
							<li class="mention-li" id="mentionLiObj">
								<a>
									<div class="photo_wrap">
										<div class="photo_po"><img id="prfl-phtg" width="40" height="40" src="design3/img_rn/img_photo_null32.png"></div>
									</div>
									<p><strong id="user-name">ALL<font color="#625dba"> </font></strong><span style="margin-left: 0px;" id="dvsn-name">Project members</span></p>
								</a>
							</li>
						</ul>
						<!-- //@ people tag liObj --> 
						<!-- @ filtered people not exist --> 
						<div style="display:none;">
							<div id="noFilteredMention" style="background-color: #efefef;height: 53px;text-align: center;line-height: 53px;" data-langcode="CD863">검색결과없음</div>
						</div>
						<!-- @ //filtered people not exist -->
						<!-- //@ people tag-->

						<div id="scrollpadding" style="height:280px;display:none;"></div>
					</div>
					<!-- //20170404 aside -->
				</div>
				<!-- //container -->
			</div><!-- //20170404 업무모아보기 layout -->
		</div><!-- //20170419 -->
		
		
		<div id="tableTitle" style="display:none;">
			<div class="workTable-tr tableHeader" style="display:table-header-group;">
				<div class="workTable-th" id="th_1"><a class="up off" data-langcode="CT911">번호</a></div><!-- 번호 -->
				<div class="workTable-th" id="th_2"><a class="up off" data-langcode="CD804">상태</a></div><!-- 상태 -->
				<div class="workTable-th" id="th_3"><a class="up off" data-langcode="CD816">우선순위</a></div><!-- 우선순위 -->
				<div class="workTable-th" style="width:100%;" id="th_4"><a class="down off" data-langcode="CT914">제목</a></div><!-- 제목 -->
				<div class="workTable-th" id="th_5"><a class="down off" data-langcode="CD815">진척도</a></div><!-- 진척도 -->
				<div class="workTable-th" id="th_6"><a class="down off" data-langcode="FL566">담당자</a></div><!-- 담당자 -->
				<div class="workTable-th" id="th_7"><a class="down off" data-langcode="FL565">작성자</a></div><!-- 작성자 -->
				<div class="workTable-th" id="th_8"><a class="down off" data-langcode="CC667">시작일</a></div><!-- 시작일 -->
				<div class="workTable-th" id="th_9"><a class="down off" data-langcode="CD811">마감일</a></div><!-- 마감일 -->
				<div class="workTable-th" id="th_10"><a class="down off" data-langcode="CT920">등록일</a></div><!-- 등록일 -->
				<div class="workTable-th" id="th_11"><a class="down off" data-langcode="CT895">수정일</a></div><!-- 수정일 -->
			</div>
		</div>
		
		<div id="taskRow" style="display:none;">
			<div class="workTable-tr"> 
				<div class="workTable-td" id="col_1"></div><!-- 번호 -->
				<div class="workTable-td" id="col_2"><span></span></div><!-- 상태 -->
				<div class="workTable-td" id="col_3"><span class="imptc"><span id="priority_mark"></span></span></div><!-- 우선순위 -->
				<div class="workTable-td title" style="width:100%;" id="col_4"><!-- 제목 -->
					<a>
						<span class="workTit" id="taskName">업무명</span>
						<br>
						<span class="flowTit" id="projectName">프로젝트명</span>
					</a>
				</div>
				<div class="workTable-td" id="col_5">
					<!-- 업무진행progress bar -->
					<div class="workPrgrs">
						<div class="workPrgrs_bg"><!-- 20170407 수정 -->
							<strong class="txt" id="taskProgressTxt"></strong>
							<span class="bar" id="taskProgressBar" style="right: 0;"></span><!-- progress bar 100%일때 추가 class="color100p" -->
						</div><!-- 20170407 수정 -->
					</div><!-- //업무진행progress bar -->
				</div><!-- 진척도 -->
				<div class="workTable-td" id="col_6"></div><!-- 담당자 -->
				<div class="workTable-td" id="col_7"></div><!-- 작성자 -->
				<div class="workTable-td" id="col_8"></div><!-- 시작일 -->
				<div class="workTable-td" id="col_9"></div><!-- 마감일 -->
				<div class="workTable-td" id="col_10"></div><!-- 등록일 -->
				<div class="workTable-td" id="col_11"></div><!-- 수정일 -->
			</div>
		</div>
		
		<div id="g_taskRow" style="display:none;">
			<div class="workTable-tr"> 
				<div class="workTable-td" id="col_1"></div><!-- 번호 -->
				<div class="workTable-td" id="col_2"><span></span></div><!-- 상태 -->
				<div class="workTable-td title" style="width:100%;" id="col_4"><!-- 제목 -->
					<a>
						<span class="workTit" id="taskName">업무명</span>
						<br>
						<span class="flowTit" id="projectName">프로젝트명</span>
					</a>
				</div>
			</div>
		</div>
		
		<!-- 보기설정 layerpopup -->
		<div class="layerstyle4" style="width:330px;top:50px;left:50%;top:50%;transform:translateX(-50%) translateY(-50%);z-index:1100;display:none;" id="setColumnLayerPopup">
			<div class="layerstyle4_po">
				<div class="layerstyle4_title">
					<h3 data-langcode="CC682">보기설정</h3>
					<a class="btn_layerstyle4_close" id="setColumnLayerCloseBtn"><img src="../img_rn/btn/btn_layerstyle3_close.gif" alt="닫기"></a>
				</div>
				<div class="layerstyle4_cont" style="padding-top:10px;">
					<h5 data-langcode="CT925">항목 순서 변경과 조회할 항목을 선택할 수 있습니다.</h5>
					<h5 style="color:crimson;margin:5px;" data-langcode="CT926">* '제목'은 필수 항목입니다.</h5>
					<div class="workViewSet">
						<ul id="columnSortable">
							
						</ul>
					</div>
					<div class="pop_ft_btn">
						<a class="btn_style2"><span data-langcode="CT899">초기화</span></a>&nbsp;&nbsp;<a class="btn_style1"><span data-langcode="CT927">저장</span></a>
					</div>
				</div>
			</div>
		</div>
		<ul id="columnSortableLi" style="display:none;">
			<li>
				<div class="workViewSet-drag">
					<strong>번호</strong>
					<a class="btn_slide on" style="cursor:pointer;"></a><!-- class="on/off" -->
				</div>
			</li>
		</ul>
		<!-- //보기설정 layerpopup -->
		
		<!-- 묶어보기 -->
		<div id="view_gb_box" style="display:none;">
			<div class="workTable-tr"><!-- class="cont-open / cont-fold" -->
				<div class="workTableMoa-title cont-open">
				<strong id="view_gb_title"></strong>
				<span id="view_gb_cnt">(4)</span>
				</div>
			</div>
		</div>
		<!-- //묶어보기 -->
			
</div>



		<div id="collabo3File" style="display: none; z-index: 2;">

	<div class="filemoaWrap_layout">
		<!-- 20200130 파일모아보기 -->
		<div class="filemoaWrap">
			<!-- container -->
			<div class="container">
				<!-- 최상단 타이틀 영역 -->
				<div class="filemoa-top" style="z-index:9999">
					<div class="left">
					
						<h2 class="srch_rslt" style="display:none"><span class="srch_base"></span> '<span class="col_point srch_wd"></span>' <span data-langcode="DCT400">검색결과</span> : <span data-langcode="DCD35">총</span> <span class="srch_cnt"><span data-langcode="DFP220">건</span></span><a style="cursor:pointer" class="reset srch_init"><span data-langcode="CT899">초기화</span></a></h2>

						<ul class="flmaTop_list flmaTop_all">
							<li><a style="cursor:pointer" data-langcode="CC674">전체</a></li>
						</ul>
						
						<div id="up-category-item" style="display:none">
							<li><a style="cursor:pointer" class="more"></a>
								<div class="up-category-layer layerstyle1 type4" style="display:none; z-index:801; display: block; width:240px; top: 37px;left: 0px;border-radius:4px;">
									<div class="layerstyle1_po">
										<span class="tail" style="left:10px;"></span>
										<ul class="folder_list" style="display:;">										
											<li class="fld_0" style="display: none;"><a style="cursor:pointer"><span class="arr"></span><em class="yellow"></em><span class="title"></span></a>
												<ul class="depth01">
													<li class="fld_1" style="display: none;"><a style="cursor:pointer"><span class="arr"></span><em class="yellow"></em><span class="title"></span></a></li>
													<ul class="depth02">
														<li class="fld_2" style="display: none;"><a style="cursor:pointer"><span class="arr"></span><em class="yellow"></em><span class="title"></span></a></li>
														<ul class="depth03">
															<li class="fld_3" style="display: none;"><a style="cursor:pointer"><span class="arr"></span><em class="yellow"></em><span class="title"></span></a></li>
															<ul class="depth04">
																<li class="fld_4" style="display: none;"><a style="cursor:pointer"><span class="arr"></span><em class="yellow"></em><span class="title"></span></a></li>
															</ul>
														</ul>
													</ul>
												</ul>
											</li>
										</ul>
									</div>
								</div>
							</li>
						</div>
						
						
					</div>
					<div class="right">
						<div class="btn_box">
							<div class="btn_bx">
								<div class="flmoa-select-number" style="display:none">
									<span class="select-number"></span> <span data-langcode="ui.label.selected">선택됨</span>
									<button type="button" class="select-cancle" data-langcode="action.unselect">선택 해제</button>
								</div>
							</div>
							<!-- <div class="btn_bx more">
								<a class="btn more multiMore" style="display:none"><span  data-langcode="H309">더보기</span></a>
								<div class="multi-more-layer layer_bx" style="display:none; top: 38px; left: -40px; cursor:pointer;">
									<ul class="flmoa_list">
										<li><a style="cursor:pointer" class="ico01"  data-langcode="AA0067">이동</a></li>
										<li style="display: none;"><a style="cursor:pointer" class="ico02"  data-langcode="H80">다운로드</a></li>
										<li style="display: none;"><a style="cursor:pointer" class="ico03" data-langcode="AA0046">열기</a></li>
										<li><a style="cursor:pointer" class="ico04" data-langcode="AA0069">이름변경</a></li>
										<li style="display: none;"><a style="cursor:pointer" class="ico05" data-langcode="AA0070">상세보기</a></li>
										<li><a style="cursor:pointer" class="ico06" data-langcode="AA0062">폴더 삭제</a></li>
									</ul>
								</div>
							</div> -->
							<!-- 비활성화 deactivation 클래스 추가 -->
							<div class="btn_bx new_fld"><a class="btn move deactivation"><span data-langcode="action.move.item">이동</span></a></div>
							<div class="btn_bx new_fld"><a class="btn down"><span data-langcode="action.download">다운로드</span></a></div>
							<div class="btn_bx new_fld"><a class="btn del-file"><span data-langcode="AA0062">폴더 삭제</span></a></div>
							<div class="btn_bx new_fld"><a class="btn newfile"><span data-langcode="AA0071">새폴더</span></a></div>
							<div>
							<ul class="list_or_thumb">
								<li class="on list"><div class="btn_bx"><a class="btn list"><span data-langcode="AA0072">리스트</span></a></div></li>
								<li class="thumb"><div class="btn_bx"><a class="btn thumb"><span data-langcode="AA0073">썸네일</span></a></div></li>
							</ul></div>
							<!-- <div class="btn_bx down"><a class="btn down"><span>내려받기</span></a></div> -->
							<div class="btn_bx close"><a class="btn close"><span data-langcode="H417">닫기</span></a></div>
						</div>
					</div>
				</div>
				<!-- //최상단 타이틀 영역 -->

				<!-- lnb -->
				<div class="lnb_wrap" style="overflow: visible;">
					<div class="file_menu">
						<ul class="file_menuList">
							<!-- 파일형태 -->
							<li class="file_formot">
								<!-- 서브메뉴 열렸을 때 on 클래스 추가 -->
								<a style="cursor:pointer" class="file_type" data-langcode="AA0074">파일형태</a>
								<div class="sub format" style="display:;padding:7px 0 6px;border-bottom:1px solid #e2e2e2;">
									<!-- 파일형태 선택시 <span class="check"></span> 추가 -->
									<a id="selected_format" class="ico01" data-langcode="AA0075">
										모든 포맷
										<span class="check"></span>
									</a>

									<!-- 모든포맷 닫으면 dispaly:none;처리 -->
									<div class="list option_format" style="display:none;">
										<a style="cursor:pointer" class="ico01" data-langcode="AA0075">모든 포맷</a>
										<a style="cursor:pointer" class="ico02" data-langcode="AA0076">클라우드</a>
										<a style="cursor:pointer" class="ico03">PDF</a>
										<a style="cursor:pointer" class="ico04" data-langcode="AA0077">워드</a>
										<a style="cursor:pointer" class="ico05" data-langcode="AA0078">엑셀</a>
										<a style="cursor:pointer" class="ico12" data-langcode="AA0079">한글</a>
										<a style="cursor:pointer" class="ico06" data-langcode="AA0080">파워포인트</a>
										<a style="cursor:pointer" class="ico07" data-langcode="CD745">이미지</a>
										<a style="cursor:pointer" class="ico08" data-langcode="AA0081">음악/동영상</a>
										<a style="cursor:pointer" class="ico09" >HTML</a>
										<a style="cursor:pointer" class="ico10" data-langcode="AA0082">캐드파일</a>
										<a style="cursor:pointer" class="ico11" data-langcode="AA0083">압축파일</a>
									</div>
								</div>
							</li>
							<!-- //파일형태 -->
							<li class="file_tree">
								<a style="cursor:pointer" class="file_tree_arrow" data-langcode="FL558">프로젝트</a>
								<div class="collect_file_search">
									<input type="text" placeholder="프로젝트 검색" class="collect_search" maxlength="50" data-langcode="ui.label.search.projects">
									<!-- on 클래스 추가-->
									<button class="collect_search_btn_close collect_search_btn" style="display:none"><img src="/design2/img_rn/filemoa/icon_search_delete.png" alt="삭제" data-langcode=""></button>
								</div>
								<div class="file_menu_scroll sub_fdbx" style="display:bloack;">
									<ul id="proj_file_item"><li><a style="cursor:pointer"><span class="arr"></span><em></em><span class="title"></span></a></li></ul>
									<!-- <ul class="depth01"> and <em class="yellow"></em> -->
									<ul class="sub folder">
										<!-- 선택시 on 클래스 추가 -->								
										<li class="on proj_file_list"><a style="cursor:pointer"><em class="flowColor_3"></em><span data-langcode="ui.menu.all_projects">전체 프로젝트</span></a><ul class="depth01"></ul></li>
										<!-- em 태그에 flowColor_3 class 추가 -->
									</ul>
									<!-- //파일함 리스트 영역 -->
								</div>
							</li>
						</ul>
					</div>			
					<!-- 클라우드 영역 -->
					<div class="file_cloud" style="display:none;">
						<h2>파일함 용량</h2>
						<div class="progressbar"><span style="width:20%;"></span></div>
						<p>500GB 중 100GB 사용중</p>
						<a style="cursor:pointer">Upgrade Storage</a>
					</div>
					<!-- //클라우드 영역 -->			
				</div>
				<!-- //lnb -->
				
				<!-- content wrap -->
				<div class="content_wrap">
					<!-- content -->
					<div class="content" style="min-height: 0px;">
						<!-- table-layout middle -->
						<div class="worktbMid" >
							<!-- table -->
							<div class="fileTable filemoaTbl file_list"> <!-- 리스트 형일 떄 file_list 추가-->		
							
								<!-- table head -->
								<div class="top_tit thumb_head" style="display:none">
									<div class="fileTable-th cell01 total-check">
										<div class="fileTbl_chkbx">
											<input type="checkbox" id="lbchk01"><label for="lbchk01" style="cursor:pointer"></label> 
										</div>
									</div>
									<a style="cursor:pointer" class="tmp_sort sort f_small on" data-sort="EDTR_DTTM" data-langcode="AA0085">최근 업로드순</a>
									<a style="cursor:pointer" class="tmp_sort sort f_small" data-sort="ITEM_NM" data-langcode="AA0086">파일명 순</a>
								</div>

								<div class="fileTable-tr list_head" style="display:none">
									<div class="fileTable-th cell01 total-check2"> 
										<div class="fileTbl_chkbx">
											<input type="checkbox" id="lbchk01"><label for="lbchk01" style="cursor:pointer"></label> 
										</div>
									</div>
									<div class="fileTable-th cell02"><a class="tmp_sort sort f_small" data-sort="ITEM_NM" data-langcode="CLP1000">파일명</a></div>
									<div class="fileTable-th cell03"><a class="tmp_sort sort f_small" data-sort="SIZE" data-langcode="AA0088">크기</a></div>
									<div class="fileTable-th cell04"><a class="tmp_sort sort f_small" data-sort="RGSR_NM" data-langcode="CLP1006">등록자</a></div>
									<div class="fileTable-th cell05"><a class="tmp_sort sort f_small on" data-sort="EDTR_DTTM" data-langcode="AA0085">최근 업로드순</a></div>
									<div class="fileTable-th cell06"></div> 
								</div>
								<!-- //table head -->
								
								<div id = "fileTbl_item" style="display:none">
									<div class="fileTable-tr hover-on">
										<div class="fileTable-td cell01 one-check">
											<div class="fileTbl_chkbx"> 
												<input type="checkbox" id="lbchk02"><label for="lbchk02" style="cursor:pointer"></label>
											</div>
										</div>
										<div class="fileTable-td cell02">
											<div class="txt_bx format_icon">
											<div class="move_helper" style="position:absolute;width:100%;height:100%;">
												<span class="move_helper_text" style="position:absolute;opacity:0"></span>
											</div>
											<input maxlength="50" type="text" class="tx_ellipsis title not_select" readonly value=""></div>
										</div>
										<div class="fileTable-td cell03 t_center file-size"></div>
										<div class="fileTable-td cell04 tx_ellipsis t_center rgsr-nm"></div>
										<div class="fileTable-td cell05 t_center rgsn-dttm"></div>
										<div class="fileTable-td cell06 t_center more-area"> 
											<div class="index_bx">
												<a class="more">&nbsp;</a> 
											</div>
											<div class="one-more-layer layer_bx" style="display: none;top: 38px;right: 8px;"> 
												<ul class="flmoa_list">
													<li><a style="cursor:pointer" class="ico01" data-langcode="AA0067">이동</a></li>
													<li><a style="cursor:pointer" class="ico02" data-langcode="action.download">다운로드</a></li>
													<li><a style="cursor:pointer" class="ico03" data-langcode="AA0046">열기</a></li>
													<li><a style="cursor:pointer" class="ico04" data-langcode="AA0069">이름변경</a></li> 
													<li><a style="cursor:pointer" class="ico05" data-langcode="AA0070">상세보기</a></li>  
													<li><a style="cursor:pointer" class="ico06" data-langcode="AA0062">폴더 삭제</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>			

								<!-- 테이블 바디/스크롤 영역 -->
								<div class="fileTbl_scroll"><div id="selectable" class="fileTbl_content"></div></div><!-- //fileTbl_scroll -->
								<!-- //테이블 바디/스크롤 영역 -->
	
								<!-- 보기설정 layerpopup -->
								<div class="layerstyle4" id="setColumnLayerPopup" style="left: 50%; top: 50%; width: 330px; display: none; z-index: 1100; transform: translateX(-50%) translateY(-50%);">
									<div class="layerstyle4_po">
										<div class="layerstyle4_title">
											<h3 data-langcode="AA0062">보기설정</h3>
											<a class="btn_layerstyle4_close" id="setColumnLayerCloseBtn"><img alt="닫기" data-langcode="H417" src="/design2/img_rn/btn/btn_layerstyle3_close.gif"></a>
										</div>
										<div class="layerstyle4_cont" style="padding-top: 10px;">
											<div class="pop_ft_btn">
												<a class="btn_style2"><span data-langcode="CT899">초기화</span></a>&nbsp;&nbsp;<a class="btn_style1"><span data-langcode="CT927">저장</span></a>
											</div>
										</div>
									</div>
								</div>
								<!-- //보기설정 layerpopup --> 
								
							</div><!-- //table -->
						</div><!-- //table-layout middle -->
					</div><!-- //content -->
				</div><!-- //content wrap -->
			</div><!-- //container -->
		</div><!-- //filemoaWrap -->
	</div>
	<!-- //filemoaWrap_layout -->
	
	<div id="new-folder-layer" style="display:none">
		<div style="position:fixed;top:0;left:0;width:100%;height:100%;background:#000;opacity:0.5;filter: alpha(opacity=50);z-index:1000;"></div><!-- modal -->
		<div class="layerstyle4 new-folder-cont" style="width:380px;top:100px;left:40%;z-index:1100;">
			<div class="layerstyle4_po">
				<div class="layerstyle4_title">
					<h3><span class="icon_copy"></span>&nbsp;<span data-langcode="AA0090">새폴더 생성</span></h3>
					<a class="nfl_close btn_layerstyle4_close"><img src="/design2/img_rn/btn/btn_layerstyle4_close.png" alt="닫기" data-langcode="H417" ></a>
				</div>
				<div class="layerstyle4_cont">
					<div class="foldercolor_wrap" style="padding-bottom: 0px; margin-bottom: 20px;">
						<input class="nfl_input" maxlength=50 type="text" placeholder="폴더명 입력(최대50자)" style="border:0;" maxlength="30" data-langcode="AA0091" >
					</div>
					<div class="t_center mgt10"><a class="nfl_close btn_style2"><span data-langcode="CD755">취소</span></a>&nbsp;<a class="nfl_rgst btn_style1"><span data-langcode="CLP985">만들기</span></a></div>
		
				</div>
			</div>
		</div>
	</div>
	<!-- //새폴더생성 layerpopup -->
	
	<!-- 파일이동 layerpopup -->
	<div id="select-folder-layer" style="display:none">	
		<div style="position:fixed;top:0;left:0;width:100%;height:100%;background:#000;opacity:0.5;filter: alpha(opacity=50);z-index:1000;"></div><!-- modal -->
		<div class="layerstyle4 select-folder-cont" style="width:360px;top:200px;left:50%;z-index:1100;margin-left:-175px">
			<div class="layerstyle4_po">
				<div class="layerstyle4_title">
					<h3><span class="icon_copy"></span><span data-langcode="CLP989">이동하기</span></h3>
					<a class="btn_layerstyle4_close sfl_close"><img src="../img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
				</div>
				<div class="layerstyle4_cont file_menu" style="padding:15px 0 20px 11px;">
					<div class="ly_filemove" style="height:366px;">
						<ul class="folder_list h27 sub folder">
							<li>
								<ul class="depth01"></ul>
							</li> 
						</ul>
					</div>
					<div style="margin:0 10px;border-bottom:1px solid #e1e1e1;"></div>
					<div class="t_center mgt20"><a style="display: inline-block;" class="sfl_close btn_style2"><span data-langcode="CD755">취소</span></a>&nbsp;<a style="display: inline-block;" class="sfl_rgst btn_style1"><span data-langcode="action.move.item">이동</span></a></div>
				</div>
			</div>
		</div>
	</div> 
	
	<div id="file-detail-layer" style="display:none">
		<div style="position:fixed;top:0;left:0;width:100%;height:100%;background:#000;opacity:0.5;filter: alpha(opacity=50);z-index:1000;"></div><!-- modal -->
		<div class="layerstyle4 fdl_layer" style="width:640px;top:25%;left:50%;z-index:1100; margin-left:-320px;">
			<div class="layerstyle4_po">
				<div class="layerstyle4_title">
				<h3><span class="icon_file"></span>&nbsp;<span data-langcode="AA0070">상세보기</span></h3>
					<a class="btn_layerstyle4_close fdl_close"><img src="../img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
				</div>
				<div class="layerstyle4_cont">	
					<div class="file_detail_view filemoa" style="min-height:100px;">
						<dl>
							<dd class="fdv_cont">
								<div class="left collect_file_security fdl-cont" style="cursor:pointer">
									<img class="fdl-img" src="https://bizplayflow.flow.team/design3/img_rn/ico/file_icon2_PPT.png" alt="AI" style="width:42px;height:42px;object-fit:cover">
									<span class="filename"><strong class="fdl-nm">견적서_유라클_플로우클라우드.pdf</strong><em class="fdl-size">30MB</em></span>
								</div>
								<div class="right"><div class="filedtbtn fdl-down"><a class="down" data-langcode="action.download">다운로드</a></div></div>
							</dd>
							<dd class="fdv_ft">
								<div class="left"><span data-langcode="CLP1006">등록자</span>&nbsp;:&nbsp;<span class="fdl-user">송인호(qmens11)</span>&nbsp;<span class="txt_gray">|&nbsp;<span class="fdl-dvsn">마드라스체크(주) 고객관계관리팀</span></span></div>
								<div class="right"><span data-langcode="DCL182">등록일자</span>&nbsp;:&nbsp;<span class="fdl-dttm">2019.12.18 12:27</span></div>
							</dd>
						</dl>
					</div>
					<!-- //파일상세 -->
				</div>
			</div>
			<!-- //팝업 컨텐츠 -->
		</div>
	</div>
	
	<a style="cursor:default; display:none" class="drag_bx"><img src="/design2/img_rn/filemoa/filemoa_bico01.png" alt=""><span class="cnt"></span></a>

	<!-- 20200130 폴더 드래그 이동  -->
	<!-- 
	<a style="cursor:pointer" class="drag_bx" style="display:none;">
		<img src="/design2/img_rn/filemoa/filemoa_bico01.png" alt="">
		<span class="cnt">1</span>
	</a> -->
<!-- //20200130 -->
</div>

		<div id="scheduleLayer" style="display: none; z-index: 2;">
			
<div class="workmoaWrap_layout" style="bottom:0;top:0;width:100%;position:fixed;z-index:999">
	<!-- 일정모아보기 layout -->
	<div class="workmoaWrap workmoa_topbar">
		<!-- container -->
		<div class="container">
			<!-- lnb -->
			<div class="lnb_wrap" style="overflow: visible; width: 200px;">
				<div class="snb_split_area"></div>
				<!-- 사이즈조정버튼 -->
				<div class="workMoaSort">
					<div class="sortBx selectColor" id="projectSchd" style="margin-top:0px;">
						<div class="title" data-langcode="CD726">일정</div>
						<div class="sortUL">
							<div class="sortLi">
								<label><span class="icoSelcolor" value="0" id="projectMySchd"></span>&nbsp;<span data-langcode="CS936">내가 등록한 일정</span></label>
								<a class="setColorIcon"><span class="blind" data-langcode="CS937">색상 선택</span></a>
							</div>
							<div class="sortLi">
								<label><span class="icoSelcolor" value="1" id="projectInvitedSchd"></span>&nbsp;<span data-langcode="CS938">초대받은 일정</span></label>
								<a class="setColorIcon"><span class="blind" data-langcode="CS937">색상 선택</span></a>
							</div>
						</div>
					</div><!-- //전체 -->
					<div class="sortBx selectColor" id="taskSchd">
						<div class="title" data-langcode="CD731">업무</div>
						<div class="sortUL">
							<div class="sortLi">
								<label><span class="icoSelcolor" value="0" id="taskMySchd"></span>&nbsp;<span data-langcode="CT866">내 업무</span></label>
								<a class="setColorIcon"><span class="blind" data-langcode="CS937">색상 선택</span></a>
							</div>
							<div class="sortLi">
								<label><span class="icoSelcolor" value="1" id="taskReqSchd"></span>&nbsp;<span data-langcode="CT867">요청한 업무</span></label>
								<a class="setColorIcon"><span class="blind" data-langcode="CS937">색상 선택</span></a>
							</div>
							<div class="sortLi">
								<label><span class="icoSelcolor" value="2" id="taskTotalSchd"></span>&nbsp;<span data-langcode="H157">전체 업무</span></label>
								<a class="setColorIcon"><span class="blind" data-langcode="CS937">색상 선택</span></a>
							</div>
						</div>
					</div><!-- //전체 -->
				</div>
			</div>
			<!-- //lnb -->
			<div id="schdGroup" class="workSearch-box wschbx_btn">
				<span class="taskLayerTitle" data-langcode="CL611">전체 일정</span>
				<!-- 검색결과건수 -->
				<div class="workSearch-box" id="srchBox">
					<strong>'ooo'</strong>검색결과 : o건 <a id="emptySrchCondition" data-langcode="CT899">초기화</a>
				</div>
				<div class="wschbx_btn_r">
					<div class="btn_wsch_close">
						<a id="scheduleClose" data-langcode="H417">닫기</a>
					</div>
				</div>
			</div>
			<!-- content wrap (상단검색결과건수 없을 때 class="workSearch-off") -->
				<!-- right값은 0이 아니라 30px 입니다. 30<->630 -->
				<div id="calendar" class="content_wrap" style="padding: 16px 20px 16px 20px; background-color: #ffffff;"></div>
			<!-- //content wrap -->
		</div>
		<!-- //container -->
	</div>
	<!-- //일정모아보기 layout -->
</div>

<!-- 일정상세팝업 -->
<!-- <div id="schdDetailLayerPopup" class="schedulePop type2" style="display: none; z-index:99000; top: 10px;left: 10px;position:fixed;">
	<div class="top">
		<a id="closeSchdDetailLayerPopup" class="popClose"><span class="blind" data-langcode="H517">팝업 닫기</span></a>
		<h1 class="font-Noto"><span id="taskStts" class="item color1" data-langcode="CD721">요청</span><span id="schdTitle"></span></h1>
		<h2 id="schdPrjTitle"></h2>
	</div>
	<div class="cont">
		<p id="dateTime"></p>
		<p id="workStartDate"></p>
		<p id="workEndDate"></p>
		<p id="worker"></p>
		<p id="location"></p>
		<p id="schdMemo"></p>
	</div>
	<div class="ft">
		<a id="goToSchdPost" class="detailView" data-langcode="CD756">글 바로보기</a>
	</div>
</div> -->
<div id="schdDetailLayerPopup" class="schedulePop type2" style="display: none; z-index:99000; top: 10px;left: 10px;position:fixed;">
	<div class="top-box">
		<div class="top">
			<a id="closeSchdDetailLayerPopup" class="popClose"><span class="blind" data-langcode="H517">팝업 닫기</span></a>
			<h1 class="font-Noto"><span id="taskStts" class="item color1" data-langcode="CD721">요청</span><span id="schdTitle"></span></h1>
			<h2 id="schdPrjTitle"></h2>
			<a id="goToSchdPost" class="detailView" data-langcode="CD756">글 바로보기</a>
		</div>
	</div>
	<div class="cont">
		<div id="dateTime"></div>
		<div id="workStartDate"></div>
		<div id="workEndDate"></div>
		<div id="worker"></div>	
		<div id="location"></div>
		<div id="videoConference" style="display: none;"><button type="button" class="conferene-participate">화상회의 참여</button></div>
		<div id="attendance" style="display: none;">
			<div id="" class="participants-box">
				<div class="number-participants-area">
					<span class="number-participants">참여자<strong>4</strong>명</span>
					<!-- 
						일정 - 참여자 4명
						업무 - 담당자 4명 으로 노출되게 해주세요.
						
						일정일 경우에만 attendance-status에 on 클래스 추가.
					 -->
					<div class="attendance-status on">
						<span class="attend">참석<strong>2</strong></span>
						<span>거절<strong>2</strong></span>
						<span>미정<strong>2</strong></span>
					</div>
				</div>
				<ul class="list-participants excess">
					<li>
						<div class="profile-img attend">
							<img src="/img/spample.gif" alt="참여자 프로필 이미지">
						</div>
					</li>
					<li>
						<div class="profile-img attendance">
							<img src="/img/spample.gif" alt="참여자 프로필 이미지">
						</div>
					</li>
					<li>
						<div class="profile-img undefined">
							<img src="/img/spample.gif" alt="참여자 프로필 이미지">
						</div>
					</li>
					<li>
						<div class="profile-img">
							<img src="/img/spample.gif" alt="참여자 프로필 이미지">
						</div>
					</li>
					<li>
						<div class="profile-img">
							<img src="/img/spample.gif" alt="참여자 프로필 이미지">
						</div>
					</li>
					<li>
						<div class="profile-img">
							<img src="/img/spample.gif" alt="참여자 프로필 이미지">
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div id="schdMemo"></div>
	</div>
	<!-- 
	<div class="ft">
		<dl class="sch-attend-area">
			<dt class="blind" data-langcode="">일정참석 여부</dt>
			<dd><button type="button" class="attend on">참석</button></dd>
			<dd><button type="button" class="attendance">불참</button></dd>
			<dd><button type="button" class="undefined">미정</button></dd>
		</dl>
		<button type="button" class="calendar-add-btn on">캘린더에 추가</button>
	</div>
	 -->
</div>
<!-- //일정상세팝업 -->

<!-- color select layer -->
<div class="colorSelect" id="paletteLayer" style="display: none; z-index:99001;">
	<a class="icoSelcolor color1"></a>
	<a class="icoSelcolor color2"></a>
	<a class="icoSelcolor color3"></a>
	<a class="icoSelcolor color4"></a>
	<a class="icoSelcolor color5"></a>
	<a class="icoSelcolor color6"></a>
	<a class="icoSelcolor color7"></a>
	<a class="icoSelcolor color8"></a>
	<a class="icoSelcolor color9"></a>
	<a class="icoSelcolor color10"></a>
</div>
<!-- //color select layer -->

		</div>

		<div id="mainLayer" class="container" style="display: none">

			<div class="lnb_wrap" id="menuWrap">
				<div id="lfContent" style="height: 100%;">
					








<!-- data-langcode CL604 ~ CL640-->


	<div class="new_collabo">
		<a id="newPrjBtn" data-langcode="CL604">새 프로젝트</a>
	</div>
	<div id="folder_box" class="lnb_box" style="display:block; overflow-y:hidden; /*border-top: 1px solid #e0e0e0;*/">	
		<div id="leftTopFldList">
			<div class='df_lnb_memu on' id='boxCollaboAll'>
				<a class='ico1' id='btnAllCollabo' fld-id='' data-langcode="H197">전체</a><strong class='lbadge_s'></strong>
			</div>
			<div class='df_lnb_memu' id='boxCollaboOn'>
				<a class='ico2' id='btnOnCollabo' fld-id='' data-langcode="CL606">미보관</a><strong class='lbadge_s'></strong>
			</div>
			<div class='df_lnb_memu' id='boxCollaboNoRead'>
				<a class='ico3' id='btnNoReadCollabo' fld-id='" "' data-langcode="CL607">읽지않음</a><strong class='lbadge_s'></strong>
			</div>
			<div class='df_lnb_memu' id='boxCollaboImpt'>
				<a class='ico4' id='btnImptCollabo' fld-id='' data-langcode="CL608">즐겨찾기</a><strong class='lbadge_s'></strong>
			</div>
			<div class='df_lnb_memu' id='dbOfficial' style="display: none;">
				<a class='ico-db' fld-id='' data-langcode="">공식프로젝트</a><strong class='lbadge_s'></strong>
			</div>
		</div> 
		
						
		<!-- 아이템(20160322 수정) -->
		<div class="lnb_app">
			<dl>
				<dt data-langcode="CL1784">모아보기</dt>
				<dd id="task"><a class="icoallw"><span data-langcode="H157">전체 업무</span><span class="ico_n" style="display:none;"></span></a>
				<dd id="schedule"><a class="icoschd" data-langcode="CL611">전체 일정</a>
				<dd id="fileBox"><a class="icofile" data-langcode="CL612">전체 파일</a>
				<dd id="bringMe"><a class="icobmk" data-langcode="ui.menu.bookmarks">담아둔 글</a>
				<dd id="atMe"><a class="icoat" data-langcode="CL614">나를 지정</a>
				<dd id="myCont"><a class="icomycont" data-langcode="CL615">내 게시물</a>
				
			</dl>
		</div>
		<div class="lnb_app" id="videoMenu" style="display: none;">
			<dl>
				<dt data-langcode="">화상회의</dt>
				<dd id="videoConfStart"><a class="ico-meet-start" data-langcode="">회의시작</a>
				<dd id="videoConfParticipation"><a class="ico-meet-participation" data-langcode="">회의참여</a>
				<!--<dd id="videoConfList"><a class="ico-meet-progress" data-langcode="">진행중 회의</a>-->
			</dl>
		</div>
		
		<!-- 분류함추가 -->
		<div class="menu_plus">
			<a class="sort" onclick="fn_fldLayout();" data-langcode="CL929">보관함</a><!--  class="off" 있음 -->
		</div>
		<div class="lnb_menu_box" id="boxMenuList" style="min-height:0px;">
			<ul id="collaboFldUl"></ul>
			<ul id="collaboAddUl"></ul>
		</div>
		
		<div class="df_lnb_memu" id='boxCollaboHidden' onclick="viewChanger.loadPage('hidden');">
			<a class="ico5" data-langcode="CL616">숨김</a>
		</div>
		
		<br>
		
		
		
		
		

	</div>
<div id = "main_help" style="display:none;">
	<button class="help-menu-btn on" data-langcode ="AA0210">플로우 고객센터</button><!-- 알림 있을 경우 class on 추가 -->
	<ul class="help-menu">
		<li><a class="ico7" id="oneToOneBtn" data-langcode="FL928">1:1 문의</a></li>
		<li><a class="ico7" id="helpBtn" data-langcode="FL575">도움말</a></li>
		<li><a class="ico7" id="pcVersionDownloadBtn" data-langcode="AA0001">데스크탑 앱 다운로드</a></li>
		<li><a class="on" id="newNoticeBtn" data-langcode="AA0203">플로우 새소식</a></li>	<!-- 알림 있을 경우 class on 추가 -->
	</ul>
</div>	
<!-- 환경 설정 -->
<div id="lfSetting" style="display:none;">

	<div class="t_left"><a onclick="fn_return_list();">
	<img src="/design2/img_rn/btn/btn_back.png?1" alt="돌아가기" data-langcode="CD774" daclass="mCS_img_loaded" style="width:80%">
	<span class="back_to_the" data-langcode="CD774">돌아가기</span>
	</a></div>
	
	
	<div class="lnb_configure">
		<dl style=""><!-- 20170721 style="margin-bottom:60px;" 삭제 --> 
			<dt data-langcode="FA1753">계정</dt>
			<dd class="" id="baseSetting"><a data-langcode="CL629">계정 정보</a></dd>
			<dd class="" id="pwdSetting"><a data-langcode="CL630">비밀번호 설정</a></dd>
		</dl>
		<dl>
			<dt data-langcode="CC680">설정</dt>
			<dd class="on" id="alramSetting"><a data-langcode="CL631">푸쉬 알림 설정</a></dd>

			
				<dd class="" id="prjColorSetting"><a data-langcode="CL632">프로젝트 색상 설정</a></dd>
				<dd class="" id="prjFavoriteSetting"><a data-langcode="CL633">프로젝트 즐겨찾기 설정</a></dd>
			
	
			<dd class="on" id="accessDeviceMng"><a data-langcode="CL634">접속 기기 관리</a></dd>
			<dd class="on" id="langTzMng"><a data-langcode="CL1938">언어 및 타임존 설정</a></dd>
			<dd class="on" id="lockMode"><a data-langcode="DFM035">잠금모드</a></dd>
		</dl>
		
		
		<dl id="upgradeMenu">
			<dt data-langcode="CC675">더 보기</dt>
			<dd class="on" id="serviceUpgrade" style=""><a style="color:#6963c4;font-weight:900;" data-langcode="CL635">업그레이드</a></dd>
		</dl>
		
		<dl id="buyMenu">
			<dt data-langcode="FA1428">결제</dt>
			<dd class="on" id="changePayInfo" style=""><a style="color:#6963c4;font-weight:900;" data-langcode="FL1964">결제 정보 변경</a></dd>
		</dl>
		
	</div>
	
	<!-- 20180102 배너 -->
	<div class="lnb_invite_banner2" style=" position: absolute;display:none;" id="joinExistTeamBnr">
		<div class="lnb_invite_banner2_box">
			<h5 class="icon1" data-langcode="CL636">회사에서 이미 플로우를<br>사용하고 있다면?</h5>
			<a id="joinExistTeamBtn" data-langcode="CL637">기존 팀 참여</a>
		</div>
	</div>
	<!-- //20180102 배너 -->

	<!-- 20170721 팀원초대 -->
	<div class="lnb_invite_banner" id="inviteTeamMember" style="bottom:0; position:fixed;" style="display:none;">
		<div class="lnb_invite_banner_box">
			<h5 id="teamName"></h5>
			<p><span data-langcode="CL638">구성원</span><span id="memberCount">1921</span>&nbsp;<span data-langcode="CL639">명 사용 중</span></p>
			<a id="inviteTeamMemberBtn" data-langcode="CL640">팀원초대</a>
		</div>
	</div><!-- //20170721 팀원초대 -->

</div>
				</div>
			</div>
			<div class="content_wrap" style="z-index: 900;">
				<span id="contentMain">
					<div class="content" id="contentWrap">



<!-- 공지사항 -->
<div id="topNotice"></div>
<!-- //공지사항 -->
<div class="mycollabo_wrap" id="botSearch" style="display:none;">
	<div class="left">
		<input type="checkbox" value="0"><span data-langcode="CC641">연락처가 하나도 없는 사람</span>
		<input type="checkbox" value="1"><span data-langcode="CC642">연락처가 10개 미만인 사람</span>
		<br>
		<input type="checkbox" value="2"><span data-langcode="CC643">가입 후 일주일 동안 미사용</span>
		<input type="checkbox" value="3"><span data-langcode="CC644">가입 후 한달 동안 미사용</span>
		<input type="checkbox" value="4"><span data-langcode="CC645">가입 후 두달 동안 미사용</span>
		<br>
		<input type="checkbox" value="5"><span data-langcode="CC646">오늘 가입한 사람</span>
		<input type="checkbox" value="6"><span data-langcode="CC647">어제 가입한 사람</span>
		
		<br>
		<br>
		<input type="checkbox" value="7"><span data-langcode="CC648">연락처가 100개 이상인 사람</span>
		<input type="checkbox" value="8"><span data-langcode="CC649">연락처가 1000개 이상인 사람</span>
		<br>
		<input type="checkbox" value="9"><span data-langcode="CC650">일주일에 4일이상 접속자</span>
		<input type="checkbox" value="10"><span data-langcode="CC651">한달에 15일 이상 접속자</span>
		
	</div>
</div>

<div class="mycollabo_wrap_bak" id="boxListOpt_bak" style="display:none;">
	<div class="left">
		<strong id="Classification"> <span id="fld_nm"  data-langcode="CC652">참여중</span> <span id="fld_cnt"></span></strong>
		<a class="mycollabo_view" id="btnListOpt"  data-langcode="CC653">내가 관리자인 프로젝트만 보기</a>
	</div>
	<!-- 정렬 -->
	<div class="right" id="sortView_bak">
		<div style="position:relative;z-index:900;">
			<a class="btn_sorting"  data-langcode="CC654">정렬</a>
			<!-- layer -->
			<div class="layerstyle1" style="display:none;">
				<div class="ly_sorting_list">
					<a id="colaboSort" class="on" data="0"  data-langcode="CC655">업데이트 순</a>
					<a id="postSort"  data="1"  data-langcode="CC656">내가 최근 작성한 글순</a>
				</div>
			</div>
			<!-- //layer -->
		</div>
	</div>
	<!-- //정렬 -->

</div>

<!-- 조회조건(20150716) -->
<div class="sorting_wrap" id="sortingWrap" style="display:none;">

	
	<!-- 기간
	<div  id="selPeriodLayer" class="s_layer_box">
		<a class="sort_title"></a>
		
		<div class="s_layerpop" style="display:none;">
			<ul>
				<li><a onclick="fn_selectedPeriod(this);"  data-langcode="CC657">1주일</a></li> 
				<li><a onclick="fn_selectedPeriod(this);"  data-langcode="CC658">1개월</a></li>
				<li><a onclick="fn_selectedPeriod(this);"  data-langcode="CC659">3개월</a></li>
				<li><a onclick="fn_setPeriod();"  data-langcode="CC660">기간설정</a></li>
			</ul>
		</div>
	</div>
	-->
	<!-- //기간 -->
	<!-- 2019.7.24 뒤로가기 처리 -->
	<!-- <div id="searchPrevious" style="position: absolute;top: 0;right: 0;padding: 6px 0 8px 0;display: inline-block;cursor: pointer;">[돌아가기]</div> -->
	
	<!-- 2019.08.08 검색바 주광욱-->
	<div class="search_result_head">
		<div class="result_text">
			<a class="btn_back" id="searchPrevious" ></a>
			<span><strong>'<span id="swordRslt"></span>'</strong>&nbsp;<span data-langcode="AA0002">검색결과</span>(<span id="searchLocation">전체</span>)</span>
		</div>
		<div class="sort_date">
			<span data=""><button type="button" data-langcode="AA0003">전체</button></span>
			<span data="week"><button type="button">7<span data-langcode="AA0005" data="week">일</span></button></span>
			<span data="month"><button type="button">1<span data-langcode="AA0006" data="month">개월</span></button></span>
			<span data="3month" class="active"><button type="button">3<span data-langcode="AA0007" data="3month">개월</span></button></span>
			<span data="6month"><button type="button">6<span data-langcode="AA0007" data="6month">개월</span></button></span>
			<span data="period" ><button type="button"><span data-langcode="AA0008" data="period">기간 설정</span>&nbsp;&nbsp;<div style="display: inline-block;" id="period_text_set"></div></button></span>
		</div>
	</div>
	<!--// 2019.08.08 검색바 -->
		
	
	<!-- 분류함 전체-->
	<div id="selFldLayer" class="s_layer_box last" style="display:none">
		<a class="sort_title" data-langcode="CC661">보관함 전체</a>
		<div class="s_layerpop" style="display:none;">
			<ul>
				<li><a data-langcode="CC662">진행함</a></li>
				<li><a data-langcode="CC663">분류함 1</a></li>
				<li><a data-langcode="CC664">분류함 2</a></li>
				<li><a data-langcode="CC665">분류함 3</a></li>
				<li><a data-langcode="FL583">숨기기 3</a></li>
			</ul>
		</div>
	</div>
	 
	<!-- //분류함 전체 -->
</div>
<!-- //조회조건(20150716) -->
			
			
<div id="collabo_mod_bg_layer2" style="position: fixed; top: 0; left: 0; width: 100%; height: 100%; overflow: hidden; background: #000; opacity: 0.3; filter: alpha(opacity = 30); z-index: 1000; display: none"></div>			

<div id="inviteItem" style="display:none;">
	<!-- 초대장보기 -->
	<div class="fm_invite_box bgtype2" style='cursor:pointer'>
		<div class="bg_opacity"></div><!-- 20160830 추가 -->
		<span class="ivtstate on" data-langcode="CC669">초대장보기</span><a class="ivt_title" data-langcode="CC670">초대받은 프로젝트의 제목만 출력됩니다.</a>
		<span class="photo"></span>
		<div class="right">
			<span id="inviteNameList" class="user1" style="display:none;"><strong data-langcode="CC671">이학준</strong>nbsp;1시간 전</span>
			<span id="inviteNameSquare" class="user1" data-langcode="CC672"><strong>이학준</strong>&nbsp;1시간 전</span>
		</div>
	</div>
</div>
<!-- //20160616 초대장 -->

<div id="inviteItem_bak" style="display:none;">
	<!-- 초대장보기 -->
	<div class="fm_invite_box">
		<span class="ivtstate on" data-langcode="CC669">초대장보기</span><a class="ivt_title" data-langcode="CC670">초대받은 프로젝트의 제목만 출력됩니다.</a>
		<span class="photo"></span>
		<div class="right">
			<span class="user1"></span>
		</div>
	</div>
</div>
<!-- //20160616 초대장 -->

<!-- 가입요청 -->
<div class="mainWrap" id="boxListOpt" style="display:none;margin-bottom:30px;">
	<!-- title -->
	<div class="htitle_box btm_line">
		<div class="left" id="apprWaitCntLayer">
			<h3 data-langcode="CA1258">가입요청</h3><strong id="apprWaitCnt"></strong>
			<a id="apprWaitDetail" class="btn_rs arr1" style="margin-left:10px;" data-langcode="H309">더보기</a>
		</div>
	</div><!-- //title -->
</div>	
<!-- //가입요청 -->

<div id="mainList" style="display:block;">
	<div id="mainAllView" class="mainWrap" style="display:none;">
		<div id="mainAllViewImyn" class="htitle_box" style="z-index:501;">
			<div class="left">
				<h3 data-langcode="CL608">즐겨찾기</h3><strong id="mainAllViewImynCnt"></strong>
				<a id="mainAllViewImynMore" title="더보기" class="btn_rs arr1" style="display:none;margin-left:10px;" data-langcode="H309">더보기</a>
			</div>
			<div class="right">
				<a title="필터" class="btn_rs flowColor_1" style="display: none;"><span data-langcode="CC678">해제</span><button type="button" title="해제"></button></a>
				<a title="필터" class="btn_rs filt" style="display: none;" data-langcode="CC679">필터</a><!--inline-block-->
				<a class="txt project-list-setting-btn" data-langcode="CC680">설정</a>
				<a class="txt project-list-edit-btn" data-langcode="CC681">편집</a>

				<div class="layerstyle1 project-list-setting-layer" style="right:40px;display:none;padding: 10px 5px;font-size: 12px;">
					<h3 class="myset_tit" style="padding-left: 5px;" data-langcode="CC682">보기 설정</h3>
					<div class="project-list-setting-view-mode ly_sorting_list">
						<a id="squareList" data="1" data-langcode="CC683">바둑판형 보기</a>
						<a id="defaultList" data="0" data-langcode="CC684">리스트형 보기</a>
					</div>
					<h3 class="myset_tit" style="border-top: 1px solid #efefef;padding-top: 10px;padding-left: 5px;" data-langcode="CC685">정렬 기준</h3>
					<div class="project-list-setting-sort ly_sorting_list">
						<a class="on" data="0" data-langcode="CC686">최신 글/댓글 순 (전체)</a>
						<a data="1" data-langcode="CC687">최신 글/댓글 순 (본인작성)</a>
						<a data="2" data-langcode="CC688">프로젝트명 오름차순 (ㄱ~ㅎ)</a>
						<a data="3" data-langcode="CC689">프로젝트명 내림차순 (ㅎ~ㄱ)</a>
					</div>
					<h3 class="myset_tit" style="border-top: 1px solid #efefef;padding-top: 10px;padding-left: 5px;" data-langcode="CC679">필터</h3>
					<div class="project-list-setting-filter ly_sorting_list">
						<a class="on" data="0" data-langcode="CC691">내가 참여한 모든 프로젝트 보기</a>
						<a data="1" data-langcode="CC692">내가 관리자인 모든 프로젝트 보기</a>
					</div>
				</div>

				<!-- 정렬 layerpop -->
				<div class="lypop_st1" style="right: 40px; display: none;">
					<div class="lytit"><h5 data-langcode="CC693">프로젝트 정렬</h5></div>
					<div class="lypopst_cont">
						<ul class="project_set_list">
							<li><label class="on"><span data-langcode="CC655">업데이트 순</span><span class="ico_check"></span></label></li>
							<li><label class="off"><span data-langcode="CC695">최근 작성한 글 순</span><span class="ico_check"></span></label></li>
							<li><label class="off"><span data-langcode="CC696">내가 참여한 프로젝트</span><span class="ico_check"></span></label></li>
							<li><label class="off"><span data-langcode="CC697">내가 관리자인 프로젝트</span><span class="ico_check"></span></label></li>
						</ul>
					</div>
				</div>
				<!-- //정렬 layerpop -->
				<!-- 필터 layerpop -->
				<div class="lypop_st1" style="right: 90px; display: none;">
					<div class="lytit"><h5 data-langcode="CC698">색상 필터</h5></div>
					<div class="lypopst_cont">
						<ul class="flowColorbox">
							<li class="flowColor_1">#ffffff</li>
							<li class="flowColor_2">#a7a8a9</li>
							<li class="flowColor_3">#434a51</li>
							<li class="flowColor_4">#f2c038</li>
							<li class="flowColor_5">#f2811d</li>
							<li class="flowColor_6">#e96065</li>
							<li class="flowColor_7">#f6779e</li>
							<li class="flowColor_8">#6b65dc</li>
							<li class="flowColor_9">#5593e7</li>
							<li class="flowColor_10">#47bce2</li>
							<li class="flowColor_11">#1ccea5</li>
							<li class="flowColor_12">#41c330</li>
						</ul>
					</div>
				</div>
				<!-- //필터 layerpop -->
			</div>
		</div><!-- //title -->
		<div class="flowListWrap item_square_type" id="mainAllViewImynList" style="z-index:100;margin-bottom: 10px;">
		</div>
	</div>	
	<div class="mainWrap" id="user_project" style="margin-top:0;">
		<div class="htitle_box" id="collaboListWrapTitle" style="display:none;margin-top:0;">
			<div class="left"><h3 id="mainAllViewTitle" data-langcode="CC652">참여중</h3><strong id="mainAllViewJoinCnt"></strong></div>
			<div class="right">
				<a title="필터" class="btn_rs flowColor_1" style="display: none;"><span data-langcode="CC678">해제</span><button type="button" title="해제"></button></a>
				<a title="필터" class="btn_rs filt" style="display: none;" data-langcode="CC679">필터</a><!--inline-block-->
				<a class="txt project-list-setting-btn" data-langcode="CC680">설정</a>
				<a class="txt project-list-edit-btn" data-langcode="CC681">편집</a>

				<div class="layerstyle1 project-list-setting-layer" style="right:40px;display:none;padding: 10px 5px;font-size: 12px;">
					<h3 class="myset_tit" style="padding-left: 5px;" data-langcode="CC682">보기 설정</h3>
					<div class="project-list-setting-view-mode ly_sorting_list">
						<a id="squareList" data="1" data-langcode="CC683">바둑판형 보기</a>
						<a id="defaultList" data="0" data-langcode="CC684">리스트형 보기</a>
					</div>
					<h3 class="myset_tit" style="border-top: 1px solid #efefef;padding-top: 10px;padding-left: 5px;" data-langcode="CC685">정렬 기준</h3>
					<div class="project-list-setting-sort ly_sorting_list">
						<a class="on" data="0" data-langcode="CC686">최신 글/댓글 순 (전체)</a>
						<a data="1" data-langcode="CC687">최근 글/댓글 순 (본인작성)</a>
						<a data="2" data-langcode="CC688">프로젝트명 오름차순(ㄱ~ㅎ)</a>
						<a data="3" data-langcode="CC689">프로젝트명 내림차순(ㅎ~ㄱ)</a>
					</div>
					<h3 class="myset_tit" style="border-top: 1px solid #efefef;padding-top: 10px;padding-left: 5px;" data-langcode="CC679">필터</h3>
					<div class="project-list-setting-filter ly_sorting_list">
						<a class="on" data="0" data-langcode="CC691">내가 참여한 모든 프로젝트 보기</a>
						<a data="1" data-langcode="CC692">내가 관리자인 모든 프로젝트 보기</a>
					</div>
				</div>

				<!-- 정렬 layerpop -->
				<div class="lypop_st1" style="right: 40px; display: none;">
					<div class="lytit"><h5 data-langcode="CC693">프로젝트 정렬</h5></div>
					<div class="lypopst_cont">
						<ul class="project_set_list">
							<li><label class="on"><span data-langcode="CC655">업데이트 순</span><span class="ico_check"></span></label></li>
							<li><label class="off"><span data-langcode="CC695">최근 작성한 글 순</span><span class="ico_check"></span></label></li>
							<li><label class="off"><span data-langcode="CC696">내가 참여한 프로젝트</span><span class="ico_check"></span></label></li>
							<li><label class="off"><span data-langcode="CC697">내가 관리자인 프로젝트</span><span class="ico_check"></span></label></li>
						</ul>
					</div>
				</div>
				<!-- //정렬 layerpop -->
				<!-- 필터 layerpop -->
				<div class="lypop_st1" style="right: 90px; display: none;">
					<div class="lytit"><h5 data-langcode="CC698">색상 필터</h5></div>
					<div class="lypopst_cont">
						<ul class="flowColorbox">
							<li class="flowColor_1">#ffffff</li>
							<li class="flowColor_2">#a7a8a9</li>
							<li class="flowColor_3">#434a51</li>
							<li class="flowColor_4">#f2c038</li>
							<li class="flowColor_5">#f2811d</li>
							<li class="flowColor_6">#e96065</li>
							<li class="flowColor_7">#f6779e</li>
							<li class="flowColor_8">#6b65dc</li>
							<li class="flowColor_9">#5593e7</li>
							<li class="flowColor_10">#47bce2</li>
							<li class="flowColor_11">#1ccea5</li>
							<li class="flowColor_12">#41c330</li>
						</ul>
					</div>
				</div>
				<!-- //필터 layerpop -->
			</div>
		</div><!-- //title -->
		<div class="flowListWrap item_square_type" id="collaboListWrap" style="z-index:100;">
		</div>
		<div class="collabo_list_wrap" id="searchListWrap" style="z-index:100;">
		</div>
	</div>
</div>

<div class="btn_backTop_wrap">
	<a class="btn_backTop" id="topButton"></a>
</div>

<div id="div_collabo_item" style="display:none">
	<div class="flowList_ flowImg">
		<span id="sortColor" style="display:none;"></span>
		<button type="button" title="선택" class="projectCheck flowSelect_" data-langcode="CLP1003"></button>
		<button type="button" title="중요" class="icon_star_" id="IMPT_YN" data-langcode="CC672"></button>
		<span  class="CONVT_DTTM" style="position: absolute;right: 80px;bottom: 50%;margin-bottom: -10px;"></span>
		
		<div class="thumbnail"></div>
		<div class="titlebox">
			<a id="TITLE"></a>
			<span id="officialProject"class="official-project" style="display: none;"><em class="blind">공식 프로젝트</em></span>
		</div>
		
		<section class="condibox_">
			<article>
				<a id="company" class="icon_0" style="display:none;" data-langcode="CC699">회사</a>
				<a id="locked" class="icon_1" style="display:none;" data-langcode="CC700">잠김</a>
				<a id="ico_alram" class="icon_2" style="display:none;" data-langcode="CC701">알람</a>
			</article>
			<a id="bdg_num" class="numbadge"></a>
		</section>
		<section class="condibox_1">
			<div id="sendience-summary-info" class="parti"><span></span><span data-langcode="CC1785">명 참여중</span></div>
			<div id="project-latest-log" class="state">
				<span id="TOP_TEMP_GB" style="font-size: 14px;color: #111;font-weight: bold;margin-right: 5px;"></span>
				<span id="TOP_CNTN"></span>
			</div>
		</section>
	</div>
</div>							
<!-- collaboListWrap 에 들어가는 내용이다 -->

<!-- 플로우(기본) -->
<div id="div_collabo_item_bak" style="display:none">
	<div class="collabo_list main_collabo_list">
		<div id="sortColor1" style="display:none;"></div>
		<div id="collaboHid" style="display:none">
			<input type="hidden" name="collaboInfo" id="collaboInfo" value=""/>
		</div>
		<div class="bg_opacity"></div>
		<div class="collabo_title" id="collabo_title_item">
			<a class="ibtn star" id="IMPT_YN" style="background-size:19px;"></a>
			<a class="ibtn checkbox off" style="display:none"></a>
			<div class="title_box" id="TITLE_BOX">
				<a class="ellipsis" id="TITLE"></a>
			</div>
			<div class="right">
				<span class="user1" id="RGSR_INFO"></span>
			</div>
		</div>
		<!-- //플로우제목 -->
		<div id="boxPreview_list"></div>
		<!-- 안 읽은 댓글 내용은 여기에 표시 한다 -->
		<div class="re_wrap" id="collabo_re_wrap">
		</div>
	</div>
</div>
<!-- //플로우(기본) -->

<div id="boxPreview_item"  style="display:none">
<div class="collabo_cont" id="boxPreview" >
	<div class="collabo_box">
		<div id="CONTENT_RGSR">
		<img src="/design2/img_rn/img_photo_null32.png" alt="" class="user_photo" onerror="this.src='/design2/img_rn/img_photo_null32.png'" ><!-- 사진이미지 -->
		</div>
		<div class="usercont_box">
			<div class="name" id="CONTENT_RGSR_INFO"><strong data-langcode="CC702">이학준이학준이학준팀장</strong><span>2016-01-01 16:30</span></div><!-- 작성자/날짜 -->
			<p class="txt" id="CONTENT"><span data-langcode="CC703">플로우 디자인 리뉴얼 플로우입니다.플로우 디자인 리뉴얼 플로우입니다.</span>&nbsp;<img src="../img_rn/ico/ico_s_pic.png" alt="사진">&nbsp;<img src="../img_rn/ico/ico_s_file.png" alt="첨부파일"></p>
		</div>
	</div>
</div>
</div>

<div class="re_wrap" id="collabo_re_wrap_item">
<dl>
	<dt><span class="bg_r"></span><img id="collabo_re_wrap_phtg" src="" alt=""></dt>
	<dd>
		<p class="line1" id="collabo_re_wrap_line1"></p>
		<p class="line2" id="collabo_re_wrap_line2" style="word-break:break-all;">
			<span class="ellipsis"></span>&nbsp;<img src="../img_rn/ico/ico_s_pic.png" alt="사진" id="collabo_re_wrap_pic" style="display:none">&nbsp;<img src="../img_rn/ico/ico_s_file.png" alt="첨부파일" id="collabo_re_wrap_file" style="display:none">
		</p>
	</dd>
</dl>
</div>			
</div>
					<div class="content" id="openProjLayer" style="display: none;"> 

<script type="text/javascript" src="/js/collabo/flow_official_project.js?5.1.211.339"></script>
<!-- [D] 20180409 카테고리 -->
<div class="open_category">
	<div class="op_slide_wrap"><!-- [D] 20180601 div 추가 -->
		<ul id="category" >
		</ul>
	</div>
	<div id="categoryMoveLayer" class="slide_control_btnwrap" style="display:none;"><!-- [D] 20180601 버튼 활성/비활성 class="on/off" -->
		<a id="leftCategoryMove" class="sc_left_btn on"><span class="blind">left</span></a>
		<a id="rightCategoryMove" class="sc_right_btn on"><span class="blind">right</span></a>
	</div>
</div>
<!-- //[D] 20180409 카테고리 -->

<div id="categoryObject" style="display:none;">
	<li><a ><span id="CNTS_CATG_NM"></span></a></li>
</div>

<!-- [D] 20180409 타이틀 -->
<div class="mycollabo_wrap openflw_title">
	<div class="left">
		<a class="ing_collabo" ><span id="openProjTitle"  data-langcode="H197">전체</span> <span data-langcode="CO931">공개 프로젝트</span>
		&nbsp;<span id="openProjTotCnt" style="color: #307cff;"></span></a>
	</div>

	<!-- 정렬 
	<div class="right">
		<div style="position:relative;z-index:900;">
			<a href="#none" class="icosort">정렬</a>
		</div>
	</div>
	-->
	<!-- //정렬 -->
</div>
<!-- //[D] 20180409 타이틀 -->

<!-- [D] 20180409 공개프로젝트 -->
<div id="openProjList" class="openflow_wrap listtype listtype2" style="padding: 0px;">

</div>
<!-- //[D] 20180409 공개프로젝트 -->

<div id="openProjObject" style="display:none;">
	<div class="openflow_box">
		<div class="ofwtitlebox">
			<div class="title2"><span id="TTL"></span><strong id="participatedProject" class="parti" style="display:none;" data-langcode="CC652">참여중</strong></div>
			<div id="CNTN" class="cont"></div>
			<div id="INFO" class="ft"></div>
		</div>
	</div>
</div>


<div id="noExistsOpenProj" class="nosrchopen" style="display:none;">
	<p data-langcode="CO932">아직 만들어진 회사 공개 프로젝트가 없습니다.<br>가장 먼저 만들어 시작하세요! </p>
	<a id="createOpenProjBtn" class="btn_openback" data-langcode="CO933">회사 공개 프로젝트 만들기</a>
</div>

<div id="noSearchOpenProj" class="nosrchopen">
	<p><img src="/design3/img_rn/ico/ico_nosrch.png" alt=""></p>
	<p data-langcode="CO934">검색된 회사 공개 프로젝트가 없습니다.</p>
</div></div>
					<div class="content" id="officialProjLayer" style="display:none;">




<div id="official_Proj_List" style="display:block;">
	<div id="officialAllVIew" class="mainWrap" style="display:none;">
		<div id="officialAllViewImyn" class="htitle_box" style="z-index:501;">
			<div class="left">
				<h3 data-langcode="CL608">공식 프로젝트</h3><strong id="mainAllViewImynCnt"></strong>
				<a id="officialAllViewImynMore" title="더보기" class="btn_rs arr1" style="display:none;margin-left:10px;" data-langcode="H309">더보기</a>
			</div>
			<div class="right">
				<!-- //정렬 layerpop -->
				<!-- 필터 layerpop -->
				<div class="lypop_st1" style="right: 90px; display: none;">
					<div class="lytit"><h5 data-langcode="CC698">색상 필터</h5></div>
					<div class="lypopst_cont">
						<ul class="flowColorbox">
							<li class="flowColor_1">#ffffff</li>
							<li class="flowColor_2">#a7a8a9</li>
							<li class="flowColor_3">#434a51</li>
							<li class="flowColor_4">#f2c038</li>
							<li class="flowColor_5">#f2811d</li>
							<li class="flowColor_6">#e96065</li>
							<li class="flowColor_7">#f6779e</li>
							<li class="flowColor_8">#6b65dc</li>
							<li class="flowColor_9">#5593e7</li>
							<li class="flowColor_10">#47bce2</li>
							<li class="flowColor_11">#1ccea5</li>
							<li class="flowColor_12">#41c330</li>
						</ul>
					</div>
				</div>
				<!-- //필터 layerpop -->
			</div>
		</div><!-- //title -->
		<div class="flowListWrap item_list_type" id="officailImynList" style="z-index:100;margin-bottom: 10px;">
		</div>
	</div>	
</div></div>  
					<div class="content" id="apprWaitLayer" style="display: none;">

<div class="mycollabo_wrap openflw_title" style="padding-top: 0px;">
	<div class="left">
		<a id="hideApprWaitLayerBtn" class="ing_collabo arr_left" style="cursor:pointer;"></a>
		<a class="ing_collabo " style="cursor:auto"><span  data-langcode="CA1258">가입요청</span> <em style="color:#333;margin-left:4px;" id="apprWaitScrnCnt"></em></a>
	</div>
</div>

<div id="apprWaitList" class="openflow_wrap listtype listtype2">
</div>
<!-- //[D] 20180409 공개프로젝트 -->

<div id="apprWaitObject" style="display:none;">
	<div class="openflow_box">
		<div class="ofwtitlebox">
			<div id="TTL" class="title2"></div>
			<div id="CNTN" class="cont"></div>
			<div id="INFO" class="ft"></div>
		</div>
	</div>
</div>

<div id="noExistsApprWait" class="nosrchopen" style="display:none;">
	<p data-langcode="CA1259">가입요청 중인 프로젝트가 없습니다</p>
</div>

<div id="noSearchApprWait" class="nosrchopen">
	<p><img src="/design3/img_rn/ico/ico_nosrch.png" alt=""></p>
	<p data-langcode="CA1260">검색된 승인대기 프로젝트가 없습니다.</p>
</div></div>
					<div class="content2" id="contentDetail" style="display: none;"></div>

					<div class="content2" id="contentLeft"
						style="display: none; margin-top: -10px;">
						<div class="collabo_list_wrap">
							<div class="mycollabo_wrap">
								<div class="left" style="margin-top: 0px;">
									<h2 id="post-list-title" style="font-size: 18px;"></h2>
								</div>
							</div>
							<div id="bringPostArea"></div>
							<div id="atMePostArea"></div>
							<div id="myPostArea"></div>
						</div>
					</div>
				</span>
				<!-- 환경 설정 영역 -->
				<div class="content" id="content_setting_area"
					style="display: none;">
					<div id="rgSetting">
						<div id="settingBaseScreen" style="display: none;">




<div class="h_style1_wrap mgb15">
	<h1 data-langcode="CB1770">계정  정보</h1>
</div>

<ul class="sv_step step_free"><!-- class="step_busi step_prem" -->
	<li id="free"><strong data-langcode="H243">게스트용</strong><p data-langcode="CB1211">무료</p></li>
	<li class="line st1"></li>
	<li id="premium" style="width:210px"><strong data-langcode="H251">프리랜서용</strong><p data-langcode="CB1213">9,900원/월</p></li>
	<li class="line st2"></li>
	<li id="business"><strong data-langcode="H259">기업용</strong><p data-langcode="CB1215">50,000원/월</p></li>
</ul>

<!-- 업그레이드 배너 -->
<div class="upgrade_bnr">
	<p><strong id="userName">홍길동</strong><span data-langcode="CB1216">님에게 꼭 필요한 기능들을 준비해보았습니다!</span></p>
	<ul>
		<li data-langcode="CB1217"><span>500GB 저장 공간</span> 제공</li>
		<li data-langcode="FU1625">게시물 <span>검색기간 제한 없음</span></li>
		<li data-langcode="CB1219">프로젝트 <span>무제한 생성</span> 가능</li>
		<li data-langcode="CB1220"><span>1회 파일 500MB 첨부</span> 가능</li> 
	</ul>
	<a data-langcode="CL635">업그레이드</a>
</div><!-- //업그레이드 배너 -->


<!-- 이미있는 팀 가입 -->
<div class="" id="teamJoinLayer" style="display:none;">
	<!-- <p data-langcode="CB1221">이미 팀에서 플로우를 이용 중인가요? <a id="teamJoin">참여하기</a></p> -->
</div><!-- //이미있는 팀 가입 -->


<!-- 저장공간 
<div class="payment_cont topline" id="storageInfo">
	<h5 data-langcode="CB1222">내 저장공간</h5>
	<div class="payment_cont_bx">
		<div class="graphtp">
			313MB 사용중 / 총 1 GB <strong class="fc_blue">(30%)</strong>
		</div>
		// 사용량 그래프 
		<div class="graph_wrap">
			<div class="graph_box"> // 아예 없을땐 display:none; 최소 width:3% 최대 width:100% 
				<div class="graph_bar" style="width:30%;"></div>
				// <div class="graph_bar c_red" style="width:90%;"></div> 
			</div>
		</div>  
		<p class="fc_s13gray3" data-langcode="CB1223">현재 사용량의 표기는 본인이 등록한 첨부 파일 용량을 합산하여 표기합니다.</p>
	</div>
</div>
-->
<!-- 프로필 -->
<div class="payment_cont">
	<h5 data-langcode="FL595">내 프로필</h5>
	<div class="payment_cont_bx newmyprofile">
		<!-- 사진 -->
		<div class="photo_wrap">
			<div class="userphoto">
				<div style="overflow:hidden;width:90px;height:90px;border-radius: 90px;position:absolute;">
					<img src="" onerror="this.src='/design2/img_rn/empty_photo.png'" style="transform:translate(-50%, -50%);left:50%;top:50%;position:absolute;" alt="" id="basePrflPhtg">
				</div>
				<a id="changeBasePrflPhtg"><span class="blind" data-langcode="CB1224">사진편집</span></a>
				<input id="profile-photo-upload" type="file" accept="image/*" style="display:none;"/>
			</div>
			<div id="basePrflPhtgSettingLayer" class="layerstyle1" style="left: 85px;top: 70px;display:none;">
				<div class="ly_sorting_list" style="font-size: 12px;padding: 5px 0px 5px 0px;">
					<a id="changePhoto" style="padding: 5px 10px 10px 10px;border-bottom: 1px solid #efefef;" data-langcode="CB1225">사진 변경</a>
					<a id="removePhoto" style="padding: 10px 10px 5px 10px;" data-langcode="CB1227">사진 삭제</a>
				</div>
			</div>
		</div>

		<ul class="email_bx inlabel" id="myInfo">
			<li id="baseUserNmLi">
				<!-- 마우스오버 -->
				<div class="over_edit" style="display: inline-block;">
					<label data-langcode="H331">이름</label>
					<strong class="ft_bold" id="baseUserNm">홍길동</strong>
					<a class="btn_emedit" id="editUserNm" data-langcode="CB1228">수정</a>
				</div>
				<!-- 편집활성 -->
				<div class="save_edit focus" style="display: none;">
					<label data-langcode="H331">이름</label>
					<input type="text" placeholder="이름 입력(최대 50자)" class="ft_bold" maxlength="50" data-langcode="H442">
					<button class="btn_emsave" id="saveName" data-langcode="CT927">저장</button><a class="btn_emcancel" data-langcode="CD755">취소</a>
				</div>
			</li>
			<li id="baseEmlLi">
				<!-- 마우스오버 -->
				<div class="over_edit" style="display: inline-block;">
					<label data-langcode="H333">이메일</label>
					<strong class="ft_bold" id="baseEmail">exampleexample@gmail.com</strong>
					<a class="btn_emedit" data-langcode="CB1228">수정</a>
				</div>
				<!-- 편집활성 -->
				<div class="save_edit focus" style="display: none;">
					<label data-langcode="H333">이메일</label>
					<input type="text" value="exampleexample@gmail.com" class="ft_bold" maxlength="50">
					<button class="btn_emsave" id="saveEmail" data-langcode="CT927">저장</button>
					<a class="btn_emcancel" data-langcode="CD755">취소</a>
				</div>
			</li>
			<li id="baseClphNoLi">
				<!-- 마우스오버 -->
				<div class="over_edit" style="display: inline-block;">
					<label data-langcode="H358">휴대폰번호</label>
					<img src="" alt="">&nbsp;&nbsp;<strong class="ft_bold">010-1234-1234</strong>
					<a class="btn_emedit" data-langcode="CB1228">수정</a>
				</div>
				<!-- 편집활성 -->
				<div class="save_edit focus" style="display: none;">
					<label data-langcode="H358">휴대폰번호</label>
					<!-- 해외(20170721 수정) -->
					<div class="combo_style2 select-flag " style="width:60px;"><!-- [D] 활성 class="combo_active" 추가 / 비활성 class="combo_dis"-->
						<label for="select-country" class="txt"><div id="countryPNumber" class="i18n-phone-flag selectedFlag"><img src="/design2/img_rn/flags/us_1.png" alt=""></div></label>
						<a class="btn" id="phoneCntnCd"></a>
						<div id="phoneCntnCdSelectDiv" class="accountScrollbx" style="overflow: hidden; display:none;">
							<div class="goog-menu" id="select-country">

							<div class="goog-menuitem" id=":7n">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!-- <div class="i18n-phone-flag" style="background-position: 0px -2245px;"></div> -->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/kr_82.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1235">대한민국</span>
								<span class="i18n-phone-select-country-code">+82</span>
								</div>
								</div>
								</div>
								
								
								<div class="goog-menuitem" id=":ct">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -242px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/kh_855.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1236">캄보디아 (កម្ពុជា)</span>
								<span class="i18n-phone-select-country-code">+855</span>
								</div>
								</div>
								</div>
								
								
								<div class="goog-menuitem" id=":9k">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -44px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/us_1.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1237">미국 (United States)</span>
								<span class="i18n-phone-select-country-code">+1</span>
								</div>
								</div>
								</div>
								
								
								<div class="goog-menuitem" id=":cc">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -429px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/jp_81.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1238">일본 (日本)</span>
								<span class="i18n-phone-select-country-code">+81</span>
								</div>
								</div>
								</div>
								
								
								<div class="goog-menuitem" id=":ci">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -825px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/cn_86.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1239">중국 (中国)</span>
								<span class="i18n-phone-select-country-code">+86</span>
								</div>
								</div>
								</div>

								<div class="goog-menuitem" id=":e5">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -2696px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/hk_852.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1240">홍콩 (香港)</span>
								<span class="i18n-phone-select-country-code">+852</span>
								</div>
								</div>
								</div>

							</div>
						</div>
					</div>
					<!-- //해외 -->

					<input type="number" value="" class="ft_bold" style="width:146px;" maxlength="30">
					<button class="btn_emsave" id="savePhone" data-langcode="CT927">저장</button>
					<a class="btn_emcancel"  id="canclePhone" data-langcode="CD755">취소</a>
				</div>
			</li>
		</ul>
		<div class="v_line"></div>
		
		<ul class="email_bx inlabel" id="compInfo">
			<li id="baseCmnmLi">
				<!-- 마우스오버 -->
				<div class="over_edit" style="display: inline-block;">
					<label data-langcode="H330">회사명</label>
					<strong>마드라스체크</strong>
					<a class="btn_emedit" data-langcode="CB1228">수정</a>
				</div>
				<!-- 편집활성 -->
				<div class="save_edit focus" style="display: none;">
					<label data-langcode="H330">회사명</label>
					<input type="text" data-langcode="CB1243" id="compName" placeholder="회사명 입력(최대 50자)" maxlength="50">
					<button class="btn_emsave" id="saveCompanyNm" data-langcode="CT927">저장</button><a class="btn_emcancel" data-langcode="CD755">취소</a>
				</div>
			</li>
			<li id="baseDvsnNmLi">
				<!-- 마우스오버 -->
				<div class="over_edit" style="display: inline-block;">
					<label data-langcode="CB1244">부서명</label>
					<strong>기획팀</strong>
					<a class="btn_emedit" data-langcode="CB1228">수정</a>
				</div>
				<!-- 편집활성 -->
				<div class="save_edit focus" style="display: none;">
					<label data-langcode="CB1244">부서명</label>
					<input type="text" placeholder="부서명 입력(최대 50자)" data-langcode="CB1247" maxlength="50">
					<button class="btn_emsave" id="saveDvsnNm" data-langcode="CT927">저장</button>
					<a class="btn_emcancel" data-langcode="CD755">취소</a>
				</div>
			</li>
			<li id="baseJbclNmLi">
				<!-- 마우스오버 -->
				<div class="over_edit focus" style="display: inline-block;">
					<label data-langcode="CB1248">직책</label>
					<strong>ㅇㅇㅇ</strong>
					<a class="btn_emedit" data-langcode="CB1228">수정</a>
				</div>
				<!-- 편집활성 -->
				<div class="save_edit focus" style="display: none;">
					<label data-langcode="CB1248">직책</label>
					<input type="text" placeholder="직책 입력(최대 50자)" maxlength="50" data-langcode="CB1250">
					<button class="btn_emsave" id="savePositionNm" data-langcode="CT927">저장</button>
					<a class="btn_emcancel" id="" data-langcode="CD755">취소</a>
				</div>
			</li>
			<li id="baseCmpnTlphNoLi">
				<!-- 마우스오버 -->
				<div class="over_edit" style="display: inline-block;">
					<label data-langcode="CB1246">회사연락처</label>
					<img src="" alt="">&nbsp;&nbsp;<strong>010-1234-1234</strong>
					<a class="btn_emedit" data-langcode="CB1228">수정</a>
				</div>
				<!-- 편집활성 -->
				<div class="save_edit focus" style="display:none;">
					<label data-langcode="CB1246">회사연락처</label>
					<!-- 해외(20170721 수정) -->
					<div class="combo_style2 select-flag" style="width:60px;"><!-- [D] 활성 class="combo_active" 추가 / 비활성 class="combo_dis"-->
						<label for="select-country" class="txt"><div id="countryPCNumber" class="i18n-phone-flag selectedFlag"><img src="/design2/img_rn/flags/us_1.png" alt=""></div></label>
						<a id="compPhoneCntnCd" class="btn"></a>
						<div id="compPhoneCntnCdSelectDiv" class="accountScrollbx" style="overflow: hidden; border:1px solid #dddddd; display:none;">
							<div class="goog-menu" id="select-country">

								<div class="goog-menuitem" id=":7n">
									<div class="goog-menuitem-content">
										<div>
											<div class="goog-inline-block">
											<div class="i18n-phone-flag">
												<img src="/design2/img_rn/flags/kr_82.png" alt="">
											</div>
											</div>
											<span class="i18n-phone-select-country-name" data-langcode="CB1235">대한민국</span>
											<span class="i18n-phone-select-country-code">+82</span>
										</div>
									</div>
								</div>
								
								<div class="goog-menuitem" id=":ct">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -242px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/kh_855.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1236">캄보디아 (កម្ពុជា)</span>
								<span class="i18n-phone-select-country-code">+855</span>
								</div>
								</div>
								</div>
								
								
								<div class="goog-menuitem" id=":9k">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -44px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/us_1.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1237">미국 (United States)</span>
								<span class="i18n-phone-select-country-code">+1</span>
								</div>
								</div>
								</div>
								
								
								<div class="goog-menuitem" id=":cc">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -429px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/jp_81.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1238">일본 (日本)</span>
								<span class="i18n-phone-select-country-code">+81</span>
								</div>
								</div>
								</div>
								
								
								<div class="goog-menuitem" id=":ci">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -825px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/cn_86.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1239">중국 (中国)</span>
								<span class="i18n-phone-select-country-code">+86</span>
								</div>
								</div>
								</div>

								<div class="goog-menuitem" id=":e5">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -2696px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/hk_852.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1240">홍콩 (香港)</span>
								<span class="i18n-phone-select-country-code">+852</span>
								</div>
								</div>
								</div>
								
							</div>
						</div>
					</div>
					<!-- //해외 -->
					<input data-langcode="CB1251" type="number" placeholder="회사연락처 입력" style="width:146px;" maxlength="30">
					<button class="btn_emsave" id="saveCompanyPhone" data-langcode="CT927">저장</button>
					<a class="btn_emcancel" id="cancleCompanyPhone" data-langcode="CD755">취소</a>
				</div>
			</li>
		</ul>
	</div>
	<a style="text-decoration-line:underline;font-style:italic;font-size:13px;color:#aaaaaa;" id="leaveflow" data-langcode="CB1252">탈퇴하기</a>
</div>
</div>
						<div id="settingPwdScreen" style="display: none;">




<div class="h_style1_wrap mgb15">
	<h1 data-langcode="CL630">비밀번호 설정</h1>
</div>

<div class="user_admin">
	<div class="user_search_wrap" style="margin-top:10px;">
		<h5 data-langcode="CPH1368">비밀번호&nbsp;재설정이&nbsp;가능합니다.</h5>
		<p style="padding-left:6px;padding-top:5px;" data-langcode="H389">비밀번호는&nbsp;영문,&nbsp;숫자&nbsp;포함&nbsp;6자리&nbsp;이상이어야&nbsp;합니다.</p>
		
	</div>
	<form id="myInfo">
		<fieldset>
			<legend class="blind" data-langcode="CPH1370">비밀번호 재설정</legend>
			<div class="pwset_wrap" data="normal">
				<div class="pwset_wrap_li"><label for="pwd1" data-langcode="H362">비밀번호</label><input id="pwd1" type="text" data-langcode="H362" placeholder="비밀번호" class="ft_bold" maxlength="50" style="border:solid 1px #dfdfdf;" ></div>
				<div class="pwset_wrap_li"><label for="pwd2" data-langcode="H387">비밀번호 확인</label><input id="pwd2" type="text" data-langcode="H388" placeholder="비밀번호 확인" class="ft_bold" maxlength="50" style="border:solid 1px #dfdfdf;">
				<a class="btn_style11" id="pwdSave" data-langcode="CLP967">변경</a></div>
				<p class="errortxt" id="error"></p>
			</div>
			<div class="pwset_warp" data="bizplay" style="display:none">
				<div class="pwset_wrap_li">
					<br>
					<a href="https://www.bizplay.co.kr/comm_0023_01.act" target="_blank" class="btn_style11" data-langcode="CLP967">비밀번호 변경</a>
				</div>
			</div>
		</fieldset>
	</form>
</div>
</div>
						<div id="settingNotiScreen" style="display: none;">




<div class="h_style1_wrap mgb15">
	<h1 data-langcode="CL631">푸쉬 알림 설정</h1>
</div>

<div class="bizcancel_wap2 btmline">
	<div id="notification-not-available-notice" class="top_noticetxt" style="display: none;"><span  data-langcode="FNS1774">브라우저 알림을 지원하지 않는 브라우저 입니다.</span>
		<a>[<span data-langcode="FNS1775">최신 브라우저 다운로드</span>]</a>
	</div>
	
	<dl>
		<dt>
			<strong data-langcode="FNS1776">알림</strong>
			<p data-langcode="FNS1777">새로운 글, 댓글 등록 또는 채팅 알림을 실시간으로 알려드립니다.</p>
			<div class="right">
				<!-- [D] checked 상태 -->
				<label class="switch-35" for="notification">
					<input type="checkbox" id="notification">
					<span class="btn-switch">
						<span></span>
					</span>
				</label>
			</div>
		</dt>
		<dd style="padding-top:10px;">
			<div class="mgb10">
				<label class="d_checkbox" for="project-notification">
					<input type="checkbox" id="project-notification">
					<span></span> <a data-langcode="FNS1778">프로젝트 알림</a></label>
			</div>
			<div>
				<label class="d_checkbox" for="chat-notification">
					<input type="checkbox" id="chat-notification">
					<span></span> <a data-langcode="FNS1779">채팅 알림</a></label>
			</div>
		</dd>
	</dl>
	<hr class="line">
	<dl class="notdo-disturb-mode">
		<dt>
			<strong data-langcode="FNS1780">방해금지 모드 설정</strong>
			<div class="right">
				<!-- [D] normal 상태 -->
				<label class="switch-35" for="do-not-disturb">
					<input type="checkbox" id="do-not-disturb">
					<span class="btn-switch">
						<span></span>
					</span>
				</label>
			</div>
		</dt>
		<dd>
			<div id="daySetting" class="disturb-day-box">
				<span class="setting-day"><em data-langcode="">요일설정</em></span>
				<!-- 요일 클릭시 set-day 클래스 추가 -->
				<p data-langcode="FNS1781"><span id="setday" class="">설정한 요일</span>에는 알림을 받지 않습니다.</p>
				<!-- 활성화시 active 클래스 추가 -->
				<div class="disturb-mode-day active">
					<input type="checkbox" name="" id="disturbSun" value="0" class="disturb-mode-daysetting">
					<label for="disturbSun">일</label>			
					<input type="checkbox" name="" id="disturbMon" value="1" class="disturb-mode-daysetting">
					<label for="disturbMon">월</label>				
					<input type="checkbox" name="" id="disturbTue" value="2" class="disturb-mode-daysetting">
					<label for="disturbTue">화</label>				
					<input type="checkbox" name="" id="disturbWed" value="3" class="disturb-mode-daysetting">
					<label for="disturbWed">수</label>					
					<input type="checkbox" name="" id="disturbThur" value="4" class="disturb-mode-daysetting">
					<label for="disturbThur">목</label>					
					<input type="checkbox" name="" id="disturbFri" value="5" class="disturb-mode-daysetting">
					<label for="disturbFri">금</label>					
					<input type="checkbox" name="" id="disturbSat" value="6" class="disturb-mode-daysetting">
					<label for="disturbSat">토</label>
				</div>
			</div>
		</dd>
		<dd id="do-not-disturb-time-layer" style="padding-top:6px;">
			<span class="setting-time"><em data-langcode="">시간설정</em></span>
			<p data-langcode="FNS1781">설정한 시간 동안에는 알림을 받지 않습니다.</p>
			<!-- 옵션 - 특정시간 -->
			<div class="time_set_wp" style="display: block;">
				<div class="form_wp">
					<!-- combobox -->
					<div id="start-time-combo" class="combo_style2 overbg_gray" style="width:90px;">
						<!-- [D] 활성 class="combo_active" 추가 / 비활성 class="combo_dis" -->
						<label id="do-not-disturb-start-time" for="do-not-disturb-start-time-list">08:00</label>
						<a id="do-not-disturb-start-time-btn" class="btn"></a>
						<div class="scrollbx" style="z-index:150;top:34px;"><!--mCustomScrollbar-->
							<ul name="" id="do-not-disturb-start-time-list">
								<li>01:00</li>
								<li>02:00</li>
								<li>03:00</li>
								<li>04:00</li>
								<li>05:00</li>
								<li>06:00</li>
								<li>07:00</li>
								<li>08:00</li>
								<li>09:00</li>
								<li>10:00</li>
								<li>11:00</li>
								<li>12:00</li>
								<li>13:00</li>
								<li>14:00</li>
								<li>15:00</li>
								<li>16:00</li>
								<li>17:00</li>
								<li>18:00</li>
								<li>19:00</li>
								<li>20:00</li>
								<li>21:00</li>
								<li>22:00</li>
								<li>23:00</li>
								<li>24:00</li>
							</ul>
						</div>
					</div>
					<!-- //combobox -->
					<em class="dash">~</em>
					<!-- combobox -->
					<div id="end-time-combo" class="combo_style2 overbg_gray" style="width:90px;">
						<!-- [D] 활성 class="combo_active" 추가 / 비활성 class="combo_dis" -->
						<label id="do-not-disturb-end-time" for="do-not-disturb-end-time-list">12:00</label>
						<a id="do-not-disturb-end-time-btn" class="btn"></a>
						<div class="scrollbx" style="z-index:150;top:34px;"><!--mCustomScrollbar-->
							<ul name="" id="do-not-disturb-end-time-list">
								<li>01:00</li>
								<li>02:00</li>
								<li>03:00</li>
								<li>04:00</li>
								<li>05:00</li>
								<li>06:00</li>
								<li>07:00</li>
								<li>08:00</li>
								<li>09:00</li>
								<li>10:00</li>
								<li>11:00</li>
								<li>12:00</li>
								<li>13:00</li>
								<li>14:00</li>
								<li>15:00</li>
								<li>16:00</li>
								<li>17:00</li>
								<li>18:00</li>
								<li>19:00</li>
								<li>20:00</li>
								<li>21:00</li>
								<li>22:00</li>
								<li>23:00</li>
								<li>24:00</li>
							</ul>
						</div>
					</div>
					<!-- //combobox -->
				</div>
			</div>
			<!-- //특정시간 -->
		</dd>
	</dl>
</div>
<p class="infotxt" data-langcode="FNS1782">* 최신 버전의 브라우저 (ex. 크롬, Safari) 또는 데스크탑 앱에서만 알림을 받을 수 있습니다.</p></div>
						<div id="lockModeScreen" style="display: none;">




<div class="h_style1_wrap mgb15">
	<h1 data-langcode="DFM035">잠금모드</h1>
</div>

<div class="bizcancel_wap2 btmline">
	<dl>
		<dt>
			<strong data-langcode="FNS1780">잠금 모드 설정</strong>
			<p data-langcode="FNS1781">해당 시간만큼 사용하지 않으면 잠금처리됩니다.</p>
			<div class="right">
				<!-- [D] normal 상태 -->
				<label class="switch-35" for="do-not-lock">
					<input type="checkbox" id="do-not-lock">
					<span class="btn-switch">
						<span></span>
					</span>
				</label>
			</div>
		</dt>
		<dd id="do-not-lock-time-layer" style="padding-top:5px;">
			<!-- 옵션 - 특정시간 -->
			<div class="time_set_wp" style="display: block;">
				<div class="form_wp">
					<!-- combobox -->
					<div id="start-time-combo" class="combo_style2 overbg_gray combo_dis" style="width: 120px; background-color: rgb(187, 187, 187);">
						<!-- [D] 활성 class="combo_active" 추가 / 비활성 class="combo_dis" -->
						<label id="do-not-lock-start-time" for="do-not-lock-start-time-list">4 Hour</label>
						<a id="do-not-lock-start-time-btn" class="btn" ></a>
						<div class="scrollbx" style="z-index:150;top:34px;"><!--mCustomScrollbar-->
							<ul name="" id="do-not-lock-start-time-list">
								<li>1 <span data-langcode="AA0150">분</span></li>
								<li>5 <span data-langcode="AA0151">분</span></li>
								<li>10<span data-langcode="AA0151">분</span></li>
								<li>30<span data-langcode="AA0151">분</span></li>
								<li>1 <span data-langcode="AA0152">시간</span></li>
								<li>2 <span data-langcode="AA0153">시간</span></li>
								<li>3 <span data-langcode="AA0153">시간</span></li>
								<li>4 <span data-langcode="AA0153">시간</span></li>
								<li>5 <span data-langcode="AA0153">시간</span></li>
								<li>6 <span data-langcode="AA0153">시간</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- //특정시간 -->
		</dd>
	</dl>
</div></div>
						<div id="prjColorSettingScreen" style="display: none;">




<script type="text/javascript" src="/js/collabo/collabo3_prj_color.js"></script>

<div class="h_style1_wrap mgb15">
	<h1 data-langcode="CL632">프로젝트 색상 설정</h1>
</div>

<div class="user_admin">
	<div class="user_search_wrap" style="margin-top:10px;">
		<h5 data-langcode="CL632">프로젝트 색상 설정</h5>
		<p style="padding-left:6px;padding-top:5px;" data-langcode="CPH1348">프로젝트 만들기 또는 프로젝트에 초대받았을 때, 프로젝트의 색상을 지정합니다.</p>
	</div>

	<ul class="prj_color_radio">
		<li><label><input name="RANDOM_COLOR_YN" id="RANDOM_COLOR_Y" type="radio"><span  data-langcode="CPH1349">랜덤 설정</span></label></li>
		<li><label><input name="RANDOM_COLOR_YN" id="RANDOM_COLOR_N" type="radio"><span  data-langcode="CPH1350">색상 고정 (흰색)</span></label></li>
	</ul>

</div>
</div>
						<div id="prjFavoriteSettingScreen" style="display: none;">





<div class="h_style1_wrap mgb15">
	<h1 data-langcode="CL633">프로젝트 즐겨찾기 설정</h1>
</div>
<div class="txt_info" data-langcode="CPH1352">
	프로젝트 즐겨찾기 시, 프로젝트를 상단에 고정할 수 있도록 설정할 수 있습니다.
</div>

<div class="btm_linebx">
	<ul class="prj_color_radio">
		<li><label><input name="IMPT_USE_YN" id="IMPT_USE_Y" type="radio"><span data-langcode="CPH1353">사용함</span></label></li>
		<li><label><input name="IMPT_USE_YN" id="IMPT_USE_N" type="radio"><span data-langcode="CPH1354">사용안함</span></label></li>
	</ul>
</div>
<a id="CLEAR_IMPT" class="link_underline" data-langcode="CT899">초기화</a>
<br>
<br><br>
<a title="안내"><img src="/design2/img_rn/main/bookmark_tutorial.png" style="display:block;"></a></div>
						<div id="accessDeviceSettingScreen" style="display: none;">


<div class="h_style1_wrap">
	<h1 data-langcode="CL634">접속 기기 관리</h1>
</div>

<!-- 접속기기관리 -->
<div class="device_table">
	<table>
		<colgroup>
		<col><col style="width:200px;">
		</colgroup>
		<tbody id="deviceList">
			
		</tbody>
	</table>
	<p class="ftaf13" data-langcode="FA1418">현재 등록되어있는 기기들을 확인할 수 있습니다. 사용하지 않거나, 의심되는 기록이 있다면 원격 접속 해제가 가능합니다.</p>
	<!--<br>신규 기기 등록 시, 이메일과 타기기 접속 알림이 출력됩니다.-->
	<!-- <div class="alllogout"><a href="#none">모든 기기에서 로그아웃</a></div> -->
</div>
<!-- //접속기기관리 -->

</div>
						<div id="langTimezoneSettingScreen" style="display: none;">



<div class="h_style1_wrap mgb15">
	<h1 data-langcode="CL1938">언어 및 타임존 설정</h1>
</div>

<div class="txt_info">
	<!-- 20190319 -->
	<div class="mgb10">
		<h5 style="display: inline-block; margin-right:35px;" data-langcode="FLT1939">언어 설정</h5>
		<!-- combobox -->
		<div class="combo_style2 combo_dis" style="width: 400px; z-index:999"><!-- [D] 활성 class="combo_active" 추가 / 비활성 class="combo_dis"-->
			<label class="settingLang" for="settingLang" style="cursor:pointer">한국어</label>
			<a class="btn" style="cursor:pointer"></a>
			<div class="scrollbx" id="">
				<ul id="settingLangSelect" class="select" style="display: block;" name="">
					<li id="ko" data="ko" style="cursor:pointer" data-langcode="FLT1940">한국어 (Korean)</li>
					<li id="en" data="en" style="cursor:pointer" data-langcode="FLT1941">영어 (English)</li>
					<li id="jp" data="jp" style="cursor:pointer; display:none" data-langcode="FLT1942" >일본어 (Japanese)</li>
					<li id="cn" data="cn" style="cursor:pointer; display:none" data-langcode="AA0148" >중국어 (Chinese)</li>
				</ul>
			</div>
		</div>
		<!-- //combobox -->
	</div>
	<!-- //20190319 -->

	<p><span data-langcode="FLT1943">플로우에서 사용할 언어를 선택하십시오. 현재</span> <strong class="settingLang">한국어
	</strong> <span data-langcode="FLT1944">로 설정되어 있습니다.</span><p>
</div>

<div class="txt_info">
	<!-- 20190319 -->
	<div class="mgb10">
		<h5 style="display: inline-block; margin-right:20px;" data-langcode="FLT1945">타임존 설정</h5>
		<!-- combobox -->
		<div class="combo_style2 combo_dis" style="width: 400px;"><!-- [D] 활성 class="combo_active" 추가 / 비활성 class="combo_dis"-->
			<label class="settingTime" for="settingTime" style="cursor:pointer">(UTC +09:00) 대한민국(Korea), 일본(Japan) </label>
			<a class="btn" style="cursor:pointer"></a>
			<div class="scrollbx" id="" style="max-height: 600px;">
				<ul id="settingTimeSelect" class="select" style="display: block;" name="">
					<li id="p900" data-time="+900" style="cursor:pointer" data-langcode="FLT1946">(UTC +09:00) 대한민국(Korea), 일본(Japan) </li>
					<li id="p800" data-time="+800" style="cursor:pointer" data-langcode="FLT1947">(UTC +08:00) 싱가폴(Singapole), 필리핀(Philippines) </li>
					<li id="p700" data-time="+700" style="cursor:pointer" data-langcode="FLT1948">(UTC +07:00) 베트남(Vietnam), 캄보디아(Cambodia) </li>
					<li id="p200" data-time="+200" style="cursor:pointer" data-langcode="FLT1949">(UTC +02:00) 서유럽권(Western Europe), DST</li>
					<li id="p100" data-time="+100" style="cursor:pointer" data-langcode="FLT1950">(UTC +01:00) 영국(England), DST </li>
					<li id="m400" data-time="-400" style="cursor:pointer" data-langcode="FLT1952">(UTC -04:00) 미국 뉴욕(New York, USA)</li>
					<li id="m500" data-time="-500" style="cursor:pointer" data-langcode="FLT1953">(UTC -05:00) 미국 시카고(Chicago, USA)</li>
					<li id="m600" data-time="-600" style="cursor:pointer" data-langcode="FLT1954">(UTC -06:00) 미국 덴버(Denver, USA)</li>
					<li id="m700" data-time="-700" style="cursor:pointer" data-langcode="FLT1955">(UTC -07:00) 미국 LA(Los Angeles, USA)</li>
				</ul>
			</div>
		</div>
		<!-- //combobox -->
	</div>
	<!-- //20190319 -->

	<p data-langcode="FLT1957">플로우는 타임존을 사용하여 타임라인 내 등록되어 있는 글과 댓글에 시간을 표기하며 신규 알림을 발송합니다.</p>
	<p class="time"><strong>* <span data-langcode="FLT1956">현재</span> <span class="settingTime">UTC +09:00 서울</span>
	<span data-langcode="FLT1944">로 설정되어 있습니다.</span></strong></p>
</div>
						</div>
						<div class="top_info_bx" style="display: none;"
							data-langcode="FL598">사용 중인 플로우 무료평가판은 30일 후, 플로우 기업용 버전으로
							자동업그레이드됩니다.</div>
						<div id="compMngmtScreen" style="display: none;">




<div class="h_style1_wrap mgb15">
	<h1 data-langcode="CCM1286">팀 정보</h1>
</div>

<div class="team_info">
	<div class="team_li">
		<h5 data-langcode="CCM1286">사용 인원</h5>
		<p><strong id="compMngmtCnt">o</strong>&nbsp;<span data-langcode="CD782">명</span>]</p>
		<em data-langcode="CCM1288">정상 이용 중</em>
		<a id="goUserMngmt" data-langcode="H207">자세히 보기</a>
	</div>
	<div class="team_li">
		<h5 data-langcode="CCM1290">이용 용량</h5>
		<p id="fileTotalSize"><strong>o</strong>&nbsp;GB</p>
		<em data-langcode="CCM1291">사용 중</em>
		<a id="goFileMngmt" data-langcode="H207">자세히 보기</a>
	</div>
	<div class="team_li">
		<h5 data-langcode="FL558">프로젝트</h5>
		<p><strong id="prjTotalCount">o</strong>&nbsp;<span data-langcode="CCM1293">개</span></p>
		<em data-langcode="CCM1294">진행 중</em>
	</div>
</div>

<!-- 팀상세정보 -->
<div class="payment_cont">
	<h5 data-langcode="CCM1295">팀 상세 정보</h5>
	<div class="payment_cont_bx">
		<ul class="email_bx inlabel">
			<li id="teamNameLi">
				<!-- 마우스오버 -->
				<div class="over_edit">
					<label data-langcode="CCM1296">회사 or 팀명</label>
					<strong class="ft_bold"></strong>
					<a class="btn_emedit" data-langcode="CB1228">수정</a>
				</div>
				<!-- 편집활성 -->
				<div class="save_edit focus" style="display: none;">
					<label data-langcode="H331">이름</label>
					<input type="text" placeholder="이름 입력(최대 50자)" maxlength="50" class="ft_bold">
					<button class="btn_emsave" data-langcode="CT927">저장</button>
					<a class="btn_emcancel" data-langcode="CD755">취소</a>
				</div>
			</li>

			<!-- 로고설정 -->
			<li class="logo_wrap">
				<div class="over_edit" style="display: inline-block;">
					<label data-langcode="CCM1301">로고설정</label>
					<!-- 이미지등록 -->
					<div class="img_logo_cont">
						<input id="comp-logo-upload" type="file" accept="image/*" style="display:none;"/>
						<!-- default -->
						<a class="inpt_img" id="uploadLogo" data-langcode="CCM1302">팀 로고 등록</a>
						<!-- 이미지등록후 -->
						<div class="inlogoimg" style="display: none;"><!-- [D] 사용하실때 display:none/ table-cell 로 사용하셔야 되요~ block 아닙니다~ -->
							<img src="/design2/img_rn/logo_madrascheck.png" alt="">
							<!-- 편집및삭제 -->
							<a class="edit_img" id="editLodo" data-langcode="CCM1303">편집 및 삭제</a>
						</div>
					</div><!-- 이미지등록 -->
				</div>
			</li><!-- //로고설정 -->

			<li id="teamDomainAndInvtSetting">
				<!-- 마우스오버 -->
				<div class="over_edit uneditable">
					<label data-langcode="CCM1304">URL주소</label>
					<strong class="ft_bold" id="teamDomain">madrascheck.flow.team</strong>
					<a class="btn_emedit" id="teamurl" data-langcode="CB1228">수정</a>
				</div>
				<!-- 편집활성 -->
				<div class="save_edit focus" style="display: none;">
					<label data-langcode="CCM1305">URL주소</label>
					<input type="text" value="madrascheck" class="ft_bold" style="width:150px;"><div style="width:60px;display: inline-block;font-weight: 900;">flow.team</div>
					<button class="btn_emsave" data-langcode="CT927">저장</button><a class="btn_emcancel" data-langcode="CD755">취소</a>
				</div>
				<div class="pdl100" id="teamSignupSetting">
					<div class="txt_info_link"><a id="inviteViaTeamURL" style="color:#617fd6;" data-langcode="CCM1305">팀 URL 주소를 전달하여, 팀 회사 직원들을 초대하세요!</a><!-- <a href="#" class="link">도움말 확인</a> --></div>
					<div class="team_set">
						<label for="teamSet1" style="display:block;"><input type="radio" name="teamSignup" id="teamSet1">&nbsp;<span data-langcode="CCM1307">팀 참여 요청 시, 관리자의 승인이 필요합니다.</span></label>
						<label for="teamSet2" style="display:block;"><input type="radio" name="teamSignup" id="teamSet2">&nbsp;<span data-langcode="CCM1308">팀 참여 요청 시, 아래 설정된 회사 이메일 사용자는 관리자 승인 없이도 바로 참여할 수 있습니다.</span></label>
						<div class="domain_adrs" id="teamEmailDomainBox"><input type="text" data-langcode="CCM1309" placeholder="회사 메일 도메인주소 입력 (예: gmail.com)" id="teamEmailDomain" maxlength="50">
						<button class="btn_emsave on" data-langcode="CT927">저장</button></div>
					</div>
				</div>
			</li>
		</ul>

	</div>
</div>
</div>
						<div id="userMngmtScreen" style="display: none;">






<div class="h_style1_wrap mgb15">
	<h1>사용자 관리</h1>
</div>

<div class="ico_info_s">
	<strong>사용자 관리메뉴에서는 플로우를 사용 중인 직원목록을 조회하거나, 플로우 사용관리 및 전체 관리자설정이 가능합니다.</strong>
</div>

<div class="user_admin">
	<div class="user_search_wrap">
		<ul class="tab">
			<li id="USER_USE" class="on">정상 <span id="useCnt">1</span>명</li>
			<li id="USER_STOP" class="off">일시 중지 <span id="stopCnt">0</span>명</li>
			<li id="USER_JOIN" class="off">가입대기 <span id="joinCnt">0</span>명</li>
			<li id="USER_GUEST" class="off" style="display:none;">Guest <span id="guestCnt">0</span>명</li>
		</ul>
		<div class="right" id="SRCH_SECTION">
			<span class="srchico"><input type="text" id="userMngmtUserSearch" placeholder="사용자 또는 부서 검색"></span><a class="btn_style9">검색</a>
		</div>
	</div>

	<!-- 조회결과테이블 -->
	<div class="usch_table" id="USER_LIST" style="display:block;">
		<div class="usch_table_tr">
			<div class="usch_table_th" style="min-width:120px;">이름<a id="nameSort" data="1"></a></div>
			<div class="usch_table_th" style="min-width:75px;">부서<a id="dvsnSort" data="1"></a></div>
			<div class="usch_table_th" style="min-width:75px;max-width:85px;">직책</div>
			<div class="usch_table_th" style="min-width:100px;">상태<a id="sttsSort" data="1"></a></div>
			<div class="usch_table_th" style="min-width:130px;">최근 접속(웹)<a id="webDttmSort" data="1"></a></div>
			<div class="usch_table_th" style="min-width:130px;">최근 접속(모바일)<a id="mobileDttmSort" data="1"></a></div>
			<div class="usch_table_th" style="min-width:50px;">전체 관리자</div>
			<div class="usch_table_th" style="min-width:50px;overflow:visible;"></div>
		</div>
		
	</div>
	<!-- //조회결과테이블 -->
	
   	<div class="usch_table" id="JOIN_LIST" style="display:none;">
	  	<div class="usch_table_tr">
	  		<div class="usch_table_th t_center" style="min-width:200px;">사용자 이름</div>
	  		<div class="usch_table_th t_center" style="min-width:200px;">이메일</div>
	  		<div class="usch_table_th t_center" style="min-width:300px;">요청일</div>
	  		<div class="usch_table_th t_center" style="min-width:220px;">설정</div>
	  	</div>
  	
	</div> 
	
	
	
	
</div>

<div id="noResultUserMngmtLayer" style="display:none;">
	 <div class="usch_result_none">
  	<strong class="fc_gray">검색결과가 없습니다.</strong>
  </div>
</div>
<div id="userMngmtLayer" style="display:none;">
	<div class="usch_table_tr" id="userMngmtList">
		<div class="usch_table_td">
			<img src="/design2/img_rn/empty_photo_s.png" onerror="this.src='/design2/img_rn/empty_photo_s.png'" alt="" class="photo">
			<strong>김원모</strong>
		</div>
		<div class="usch_table_td">
			부서명
		</div>
		<div class="usch_table_td">
			직위(직급)
		</div>
		<div class="usch_table_td">
			이용 중
		</div>
		<div class="usch_table_td">
			웹 로그인 시간
		</div>
		<div class="usch_table_td">
			모바일 로그인 시간
		</div>
		<div class="usch_table_td">
			전체 관리자
		</div>
		<div class="usch_table_td t_right" style="overflow:visible;">
			<a class="ico_set">
				<div  class="layerstyle1" style="display:none;top: 50px; right: -5px; min-width: 120px;"><!-- 수정 -->
					<div class="layerstyle1_po">
						<span class="tail" style="right:23px;"></span>
						<ul class="icon_set_list">
							<li class="p_icon" id="managerY"><span style="cursor:pointer;padding-left:10px;font-size: 12px;" >전체 관리자 설정</span></li>
							<li class="p_icon" id="managerN"><span style="cursor:pointer;padding-left:10px;font-size: 12px;" >전체 관리자 해제</span></li>
							<li class="p_icon" id="useY"><span style="cursor:pointer;padding-left:10px;font-size: 12px;" >이용 중</span></li>
							<li class="p_icon" id="useN"><span style="cursor:pointer;padding-left:10px;font-size: 12px;" >이용 중지</span></li>
						</ul>
					</div>
				</div>
			</a>
		</div>
	</div>
</div>


<div id="teamSignupRequest" style="display:none;">
 	<div class="usch_table_tr">
		<div class="usch_table_td photowp">
			<img src="/design2/img_rn/thumb40.gif" alt="" class="userPhoto">
			<span class="fc_blk"><strong>김원모</strong></span>
		</div>
		<div class="usch_table_td t_center" style="min-width:200px;">
			<span class="ellipsis">example@email.com</span>
		</div>
		<div class="usch_table_td t_center" style="min-width:200px;">
			-
		</div>
		<div class="usch_table_td t_center" style="min-width:120px;">
			<a class="btn_style10">거절</a>
			<a class="btn_style11">승인</a>
		</div>
	</div>
</div></div>
						<div id="prjMngmtScreen" style="display: none;">





<div class="h_style1_wrap mgb15">
	<h1 data-langcode="CPH1306">프로젝트 관리</h1>
</div>

<div class="ico_info_s">
	<strong data-langcode="CPH1356">프로젝트 관리메뉴에서는 플로우를 사용 중인 직원들의 프로젝트 정보를 조회할 수 있습니다.</strong>
</div>

<div class="user_admin">
	<div class="user_search_wrap">
		<h5 data-langcode="CPH1357">전체 (3개 프로젝트)</h5>
		<div class="right">
			<span class="srchico"><input type="text" placeholder="프로젝트 또는 사용자 검색" data-langcode="CPH1358"></span><a class="btn_style8" data-langcode="CPH1359">검색</a>
		</div>
	</div>

	<!-- 조회결과테이블 -->
	<div class="usch_table">
		<div class="usch_table_tr">
			<div class="usch_table_th"><span data-langcode="CPH1360">업데이트일</span><a></a></div>
			<div class="usch_table_th"><span data-langcode="FL567">프로젝트명</span><a></a></div>
			<div class="usch_table_th" data-langcode="CLP1175">프로젝트 참여자</div>
			<div class="usch_table_th" data-langcode="CPH1363">글/댓글건수</div>
			<div class="usch_table_th"><span data-langcode="CPH1364">사용량</span><a></a></div>
		</div>

		<div class="usch_table_tr">
			<div class="usch_table_td">
				2016.09.20 13:50
			</div>
			<div class="usch_table_td">
				<span class="ellipsis" data-langcode="CPH1365">프로젝트 제목 출력을 출력합니다.</span>
			</div>
			<div class="usch_table_td">
				<a style="color:#4c80d6;" data-langcode="CPH1366">43명</a>
				<div class="prj_participant">
					<ul>
						<li>가길동1</li>
						<li>가길동2</li>
						<li>가길동3</li>
						<li>가길동4</li>
						<li>가길동5</li>
						<li>가길동6</li>
						<li>가길동7</li>
						<li>가길동8</li>
						<li>가길동9</li>
						<li>가길동10</li>
						<li class="last">외 31명</li>
					</ul>
				</div>
			</div>
			<div class="usch_table_td">
				3/40
			</div>
			<div class="usch_table_td">
				532 MB
			</div>
		</div>
	</div>
	<!-- //조회결과테이블 -->
</div></div>
						
						<div id="fileMngmtScreen" style="display: none;">






<div class="h_style1_wrap mgb15">
	<h1>파일 관리</h1>
</div>
<!-- 
<div class="user_search_wrap type2">
	<h5>전체 사용량</h5>
	<div class="right graphtp">
		<span>용량 5GB 중 3.59GB 사용 (72% 사용)</span>
		<a>용량추가</a>
	</div>
	<div class="graph_wrap">
		<div class="graph_box">
			<div class="graph_bar" style="width:30%;"></div>
		</div>
		<div class="total_gb"></div>
	</div>
	<p style="font-size:13px;">* 회사 구성원 전체가 사용</p>
</div>
 -->
<div class="user_admin">
	<div class="user_search_wrap">
		<h5>전체 (<span id="fileMngmtCnt"></span>명)</h5>
		<div class="right">
			<span class="srchico"><input type="text" id="fileMngmtUserSearch" placeholder="사용자 또는 부서 검색"></span><a class="btn_style8">검색</a>
		</div>
	</div>

	<!-- 조회결과테이블 -->
	<div class="usch_table">
		<div class="usch_table_tr">
			<div class="usch_table_th">이름<a id="nameSort" data="1"></a></div>
			<div class="usch_table_th">부서<a id="dvsnSort" data="1"></a></div>
			<div class="usch_table_th">직위(직급)</div>
			<div class="usch_table_th">사용 중 용량<a id="fileSort" data="1"></a></div>
		</div>
	</div>
	<!-- //조회결과테이블 -->
</div>


<div id="fileMngmtLayer" style="display:none;">
	<div class="usch_table_tr">
		<div class="usch_table_td">
			<img src="/design2/img_rn/empty_photo_s.png" alt="" class="photo"><strong>김원모</strong>
		</div>
		<div class="usch_table_td">
			부서명
		</div>
		<div class="usch_table_td">직위(직급)</div>
		<div class="usch_table_td">352MB</div>
	</div>
</div></div>
						<div id="apprMngmtScreen" style="display: none;">





<div class="h_style1_wrap mgb15">
	<h1 data-langcode="CAM1253">결제 관리</h1>
</div>

<div class="user_admin">
	 <!-- 
	<div class="user_search_wrap type2">
		<h5>요약</h5>
		<ul>
			<li>- <strong style="font-size:16px;" id="apprUserCnt">13명</strong>이 이용 중입니다. <a class="link" onClick="fn_getUserMngmt();">[사용자관리]</a></li>
			<li>- 비즈니스 버전 (<strong>무료체험판, 2016.12.31까지</strong>) 이용 중입니다.</li> 
		</ul>
	</div>
	-->
	
<!-- 
	<div class="user_search_wrap">
		<h5>청구</h5>
		<p style="padding-left:6px;padding-top:5px;">플로우 비즈니스 사용요금은 bizplay에 통합 결제되어 청구됩니다. (비즈플레이 '회사설정 > 결제정보' 메뉴에서 확인할 수 있습니다.)</p>
	</div>
 -->
	<div class="user_search_wrap" style="margin-bottom:-10px;">
		<h5 data-langcode="CAM1254">청구내역</h5>
	</div>

	<!-- 조회결과테이블 -->
	<div class="usch_table">
		<div class="usch_table_tr">
			<div class="usch_table_th" data-langcode="CAM1255">날짜</div>
			<div class="usch_table_th" data-langcode="CAM1256">결제금액</div>
		</div>
		<!--
		<div class="usch_table_tr">
			<div class="usch_table_td">2016.09.20</div>
			<div class="usch_table_td"><span class="ellipsis">비즈니스 (무료체험판)</span></div>
			<div class="usch_table_td">15명</div>
			<div class="usch_table_td">47,850 원</div>
		</div>
		-->
	</div>
	<!-- //조회결과테이블 -->
	<p class="info_txt2" data-langcode="CAM1257">* 요금에는 VAT(부가세 10%)가 포함되어 계산된 금액입니다.</p>
</div></div>
						<div id="paymentHistoryScreen" style="display: none;">





<div class="h_style1_wrap mgb15">
	<h1>결제 내역</h1>
</div>

<div class="txt_info" data-langcode="CPH1342">
	현재까지 이용하신 유료 서비스의 결제 내역을 확인할 수 있습니다.<br>
	이용 요금의 청구는 플로우 사용 내역 있는 '정상' 상태의 사용자를 대상으로 합리적으로 청구됩니다.
</div>

<div class="user_admin">
	<!-- 조회결과테이블 -->
	<div class="usch_table">
		<div class="usch_table_tr">
			<div class="usch_table_th t_center" style="width: 200px;" data-langcode="CPH1343">이용기간</div>
			<div class="usch_table_th t_center" data-langcode="CPH1344">상품명</div>
			<div class="usch_table_th t_center" style="width: 300px;" data-langcode="CPH1345">결제 금액</div>
			<div class="usch_table_th t_center" style="width: 100px;" data-langcode="CPH1346">상세</div>
		</div>
		<!-- [D] 사용하실때 display:none/ table-row 로 사용하셔야 되요~ block 아닙니다~ -->
		<!-- 
		<div class="usch_table_tr" style="display: table-row;">
		-->
		<!-- 
			<div class="usch_table_td t_center" style="width: 200px;">
				2017.5.12 ~ 2017.6.11
			</div>
			<div class="usch_table_td t_center">
			</div>
			<div class="usch_table_td t_center" style="width: 300px;">
				9,900원
			</div>
			<div class="usch_table_td t_center" style="width: 100px;">
				<a class="paym_detail"><span class="blind">상세보기</span></a>
			</div>
		</div>

		<div class="usch_table_tr" style="display: table-row;">
			<div class="usch_table_td t_center" style="width: 200px;">
				2017.5.12 ~ 2017.6.11
			</div>
			<div class="usch_table_td t_center">
			</div>
			<div class="usch_table_td t_center" style="width: 300px;">
				9,900원
			</div>
			<div class="usch_table_td t_center" style="width: 100px;">
				<a class="paym_detail"><span class="blind">상세보기</span></a>
			</div>
		</div>
		 -->
	</div>
	<!-- 결과없음
	<div class="usch_result_none">
		<p>bizplay를 이용하고 계신 고객님께서는<br>
		bizplay에서 사용 중이신 서비스 요금과 통합 청구됩니다.</p>
		<span class="fc_gray">(비즈플레이 '회사설정 > 결제정보' 메뉴에서 확인할 수 있습니다.)</span>
	</div>
	 -->
	<!-- //조회결과테이블 -->
</div></div>
						<div id="userReportScreen" style="display: none;">





<div class="h_style1_wrap mgb15">
	<h1>직원별 사용현황</h1>
</div>

<div class="user_admin">
	<div class="user_search_wrap">
		<div class="right" id="SRCH_SECTION">
			<span class="srchico"><input type="text" id="userReportUserSearch" placeholder="사용자 또는 부서 검색"></span><a class="btn_style9">검색</a>
		</div>
	</div>

	<!-- 조회결과테이블 -->
	<div class="usch_table" id="USER_LIST" style="display:block;">
		<div class="usch_table_tr">
			<div class="usch_table_th" style="min-width:120px;">이름<a id="nameSort" data="1"></a></div>
			<div class="usch_table_th" style="min-width:75px;">부서<a id="dvsnSort" data="1"></a></div>
			<div class="usch_table_th" style="min-width:75px;">직책</div>
			<div class="usch_table_th" style="min-width:70px;">참여프로젝트수<!--a id="projCntSort" data="1"></a--></div>
			<div class="usch_table_th" style="min-width:70px;">글수<a id="commtCntSort" data="1"></a></div>
			<div class="usch_table_th" style="min-width:70px;">댓글수<a id="remarkCntSort" data="1"></a></div>
			<!-- <div class="usch_table_th" style="min-width:50px;">챗수</div>  -->
			<div class="usch_table_th" style="min-width:130px;">웹<a id="webDttmSort" data="1"></a></div>
			<div class="usch_table_th" style="min-width:130px;">모바일<a id="mobileDttmSort" data="1"></a></div>
		</div>
	</div>
	<!-- //조회결과테이블 -->
	
   	<div class="usch_table" id="JOIN_LIST" style="display:none;">
	  	<div class="usch_table_tr">
	  		<div class="usch_table_th t_center" style="min-width:200px;">사용자 이름</div>
	  		<div class="usch_table_th t_center" style="min-width:200px;">이메일</div>
	  		<div class="usch_table_th t_center" style="min-width:300px;">요청일</div>
	  		<div class="usch_table_th t_center" style="min-width:220px;">설정</div>
	  	</div>
  	
	</div> 
	
	
	
	
</div>

<div id="noResultuserReportLayer" style="display:none;">
	 <div class="usch_result_none">
  	<strong class="fc_gray">검색결과가 없습니다.</strong>
  </div>
</div>
<div id="userReportLayer" style="display:none;">
	<div class="usch_table_tr" id="userMngmtList">
		<div class="usch_table_td">
			<img src="/design2/img_rn/empty_photo_s.png" onerror="this.src='/design2/img_rn/empty_photo_s.png'" alt="" class="photo">
			<strong>김원모</strong>
		</div>
		<div class="usch_table_td">
			부서명
		</div>
		<div class="usch_table_td">
			직위(직급)
		</div>
		<div class="usch_table_td">
			플젝수
		</div>
		<div class="usch_table_td">
			글수
		</div>
		<div class="usch_table_td">
			댓글수
		</div>
		<!-- 
		<div class="usch_table_td">
			챗수
		</div>
		 -->
		<div class="usch_table_td">
			웹 로그인 시간
		</div>
		<div class="usch_table_td">
			모바일 로그인 시간
		</div>
	</div>
</div></div>
						<div id="dvsnReportScreen" style="display: none;">





<div class="h_style1_wrap mgb15">
	<h1>부서별 사용현황</h1>
</div>

<div class="user_admin">
	<div class="user_search_wrap">
		<div class="right" id="SRCH_SECTION">
			<span class="srchico"><input type="text" id="dvsnReportUserSearch" placeholder="부서 검색"></span><a class="btn_style9">검색</a>
		</div>
	</div>

	<!-- 조회결과테이블 -->
	<div class="usch_table" id="DVSN_LIST" style="display:block;">
		<div class="usch_table_tr">
			<div class="usch_table_th" style="min-width:150px;">부서<!--a id="nameSort" data="1"></a--></div>
			<div class="usch_table_th" style="min-width:100px;">부서인원<!--a id="nameSort" data="1"></a--></div>
			<div class="usch_table_th" style="min-width:120px;">일주일간 접속자</div>
			<div class="usch_table_th" style="min-width:120px;">1개월간 접속자</div>
			<div class="usch_table_th" style="min-width:100px;">플젝수<!--a id="projCntSort" data="1"></a--></div>
			<div class="usch_table_th" style="min-width:100px;">글수<!--a id="commtCntSort" data="1"></a--></div>
			<div class="usch_table_th" style="min-width:100px;">댓글수<!--a id="remarkCntSort" data="1"></a--></div>
		</div>
	</div>
	<!-- //조회결과테이블 -->
	
   	<div class="usch_table" id="JOIN_LIST" style="display:none;">
	  	<div class="usch_table_tr">
	  		<div class="usch_table_th t_center" style="min-width:200px;">사용자 이름</div>
	  		<div class="usch_table_th t_center" style="min-width:200px;">이메일</div>
	  		<div class="usch_table_th t_center" style="min-width:300px;">요청일</div>
	  		<div class="usch_table_th t_center" style="min-width:220px;">설정</div>
	  	</div>
  	
	</div> 
	
	
	
	
</div>

<div id="noResultdvsnReportLayer" style="display:none;">
	 <div class="usch_result_none">
  	<strong class="fc_gray">검색결과가 없습니다.</strong>
  </div>
</div>
<div id="dvsnReportLayer" style="display:none;">
	<div class="usch_table_tr" id="userMngmtList">
		<div class="usch_table_td">
			부서명
		</div>
		<div class="usch_table_td">
			부서 인원
		</div>
		<div class="usch_table_td">
			플젝수
		</div>
		<div class="usch_table_td">
			글수
		</div>
		<div class="usch_table_td">
			댓글수
		</div>
		<div class="usch_table_td">
			일주일간 접속자
		</div>
		<div class="usch_table_td">
			1개월간 접속자
		</div>
		
	</div>
</div></div>
					</div>
				</div>
				<!-- //환경 설정 영역 -->
			</div>
			<!-- //content wrap -->
		</div>
		<!-- //container -->
	</div>

	<!-- //layer -->
	<!-- 기간설정layerpopup -->
	<div id="periodSettingLayer" class="layerstyle1"
		style="display: none; top: 200px; left: 250px; z-index: 1100;">
		<div class="layerstyle1_po">
			<a class="ly_close" onClick="fn_setPeriodCancel();"><img
				src="/design2/img_rn/btn/btn_layerpop_close2.png" alt="닫기"></a>
			<div class="layerstyle1_cont t_center">
				<p class="t_left">
					<span
						style="display: inline-block; width: 127px; padding-left: 43px;"
						data-langcode="CC667">시작일</span><span data-langcode="CC668">종료일</span>
				</p>
				<p class="mgb10">
					<input id="STTG_DT" type="text"
						style="width: 80px; margin-left: 0;" readonly> <a
						id="CAL_STTG_DT"><img
						src="/design2/img_rn/btn/btn_calendar.png" alt="달력"></a>&nbsp;~&nbsp;<input
						type="text" id="FNSH_DT" style="width: 80px;" readonly> <a
						id="CAL_FNSH_DT"><img
						src="/design2/img_rn/btn/btn_calendar.png" alt="달력"></a>
				</p>

				<div class="lp_btn_wrap">
					<a class="btn_style1" id="periodSearch"><span
						data-langcode="AA0009">검색</span></a>
				</div>
			</div>
		</div>
	</div>
	<!-- //기간설정layerpopup -->

	<div id="commLayerWrap"></div>
	<!-- 이미지뷰어 -->
	<div id="collabo_mod_bg_layer"
		style="position: fixed; top: 0; left: 0; width: 100%; height: 100%; overflow: hidden; background: #000; opacity: 0.3; filter: alpha(opacity = 30); z-index: 1000; display: none"></div>
	<div id="collabo_mod_bg_layer1"
		style="position: fixed; top: 0; left: 0; width: 100%; height: 100%; overflow: hidden; background: #000; opacity: 0.3; filter: alpha(opacity = 30); z-index: 9000; display: none"></div>
	<div id="upgradePopup" class="pc-login-wrap"
		mobileYn="N"
		style="display: none; top: 0px; left: 0px; z-index: 13000; overflow: auto;">



<!-- for profile and service block popup -->
<!-- upgrade popup-->
<div class="fl-header-wrap">
	<div class="top-banner" style="display: block;">
		<div id="normalMessage" class="tb-txt"><span data-langcode="FU1616">30명 이상의 팀 또는 회사에서 이용하실 계획이신가요?</span> 
		<a href="/consult.act?contact=price" target="requestConsultation" style="color: white;" data-langcode="H462">상담요청</a></div>
	</div>
	<div class="fl-header" style="display: block;background:transparent;border:0px;">
		<h1><img src="/design2/img_login/bi_flow.png" alt="flow"></h1>
		<a class="close"><span class="blind">닫기</span></a>
	</div>
</div>

<div class="f-login-wrap payModi font-Noto" style="position: fixed; margin: 0px; padding: 120px 0 0 0; width: 100%; height: 100%;">
	<!-- content -->
		<div class="fl-pay-content upgVer" style="display:block;" id="intro">
			<!-- ci-wrap -->
			<div class="ci-wrap" style="margin-top:10px">
				<h2 class="font-Noto" data-langcode="CLP1030">기업용 버전 업그레이드</h2>
				<p class="font-Noto" data-langcode="AA0185">1개월 무료 체험 후 결정하세요! 카드 등록없이 바로 시작할 수 있습니다</p>
				<p style="font-size: 16px;font-weight: 600;margin-top: 10px; margin-bottom: 30px;"><a href="https://flow.team/price.act" target="flow_price"  style="color: #4c80d6;" data-langcode="AA0186">요금 안내</a></p>
			</div>
			<!--// ci-wrap -->

			<!-- upgWrap -->
			<div class="upgWrap">
				<!-- section -->
				<div class="section">
					<dl class="text_list">
						<dt data-langcode="AA0193">강력하고 다양한 기능</dt>
						<dd class="font-MalgunGothic" style="line-height:22px;" data-langcode="AA0194">플로우를 제한없이 마음껏 이용하세요!<br>프로젝트 무제한 개설과 넉넉한 저장공간을 제공합니다</dd>
						<dt data-langcode="AA0195">회사 관리자 도구</dt>
						<dd class="font-MalgunGothic" style="line-height:22px;" data-langcode="AA0196">통계 및 리포트, 관리 도구들을 통해<br>직원과 프로젝트를 효율적으로 관리할 수 있습니다</dd>
						<dt data-langcode="AA0197">기업을 위한 보안</dt>
						<dd class="font-MalgunGothic" style="line-height:22px;" data-langcode="AA0198">계정 정보와 회사 자료들의 보호를 위해<br>강력한 보안 기능들을 제공합니다</dd>
					</dl>
					<p class="sup_text font-MalgunGothic" data-langcode="AA0199">제공기능 : 2차 인증/중복로그인 방지/앱 화면 캡쳐 및 다운로드 방지 설정</p>
					<a class="btn_allView font-MalgunGothic" href="https://flow.team/product.act" target="flow_funcAllView" data-langcode="AA0200">기능 전체 보기</a>
				</div>
				<!--// section -->
				<!-- section -->
				<div class="section type2" id="flowAccount" style="display:none">
					<p class="sub_tit font-MalgunGothic" data-langcode="CLP1030">기업용 버전 업그레이드</p>
					<p class="tit" data-langcode="H485">회사 정보 입력 후 시작</p>
					<!-- 정보입력폼 -->
					<form action="">
						<fieldset>
							<legend data-langcode="AA0187">정보입력</legend>
							<div class="input-box-style">

								<div class="blocklabel">
									<label for="name" class="font-MalgunGothic" style="font-size:12px; margin-top:20px" data-langcode="H330">회사명</label>									
									<div class="inputbox">
										<input type="text" name="teamName"  tabindex="11" maxlength="30" placeholder="회사명 입력" value="" style="font-size:16px;" data-langcode="CB1243">
										<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
										<div class="error-msg">
											<div class="error-cont font-Noto" data-langcode="FU1672">팀 이름을 확인해 주세요 (특수문자 사용불가)</div>
										</div>
									</div>

								</div>

								<div class="blocklabel addE">
									<label for="addE" class="font-MalgunGothic" style="font-size:12px; margin-top:20px" data-langcode="H492">회사 URL</label>

									<div class="inputbox">
										
										<span style="letter-spacing: -1px;">https://</span>
										
										<input type="text" name="teamUrl" tabindex="12" maxlength="50" placeholder="URL 입력" style="width: 149px; margin: 0 10px; height:42px; font-size:16px;">
										<span style="letter-spacing: -1px;">.flow.team</span>
										<button type="button" class="btn-clear-text" style="cursor:pointer; top: 15px; right: 115px;" data-langcode="H381" data-langcode="H381">삭제</button>
										<div class="error-msg">
											<div class="error-cont font-Noto" style="margin-left: 70px; margin-top: -15px;" data-langcode="H494">3 ~ 50자의 영문, 숫자만 가능합니다.</div>
										</div>
									</div>
								</div>

								<!-- 가입경로 추가 -->
								<div class="blocklabel">
									<label class="font-MalgunGothic" style="font-size:12px; margin-top:20px" data-langcode="H539">회사 업종 선택</label>
									<div class="inputbox">
										<input type="text" id="introPathCd" data-langcode="H422" class="path_cd" tabindex="12" maxlength="20" placeholder="20자 이내로 작성해주세요!" value="" style="width:100%; display:none; font-size:16px" >
										<select class="path_cd" style="cursor:pointer;  font-size:16px; background: url(../img_rn/bul/bul_arrow2_open.png?4) no-repeat 298px 22px; background-size: 10px;">
										  <option value="S" style="cursor:pointer" selected disabled data-langcode="CLP1003">선택</option>
				 						  <option value="Produce" data-langcode="H540">제조</option>
										  <option value="Service" data-langcode="H541">서비스</option>
										  <option value="IT" data-langcode="H542">IT</option>
										  <option value="Logistics" data-langcode="H543">유통</option>
										  <option value="Marketing" data-langcode="H544">마케팅</option>
										  <option value="Research" data-langcode="H545">교육/연구</option>
										  <option value="Construct" data-langcode="H546">건설</option>
										  <option value="Medical" data-langcode="H547">의료</option>
										  <option value="Finance" data-langcode="H548">금융</option>
										  <option value="Consumer" data-langcode="H549">소비재</option>
										  <option value="Public" data-langcode="H550">공공행정</option>
										  <option value="Franchise" data-langcode="H551">프렌차이즈</option>
										  <option value="Entertain" data-langcode="H552">엔터테인먼트</option>
										  <option value="Fishing" data-langcode="H553">농업/어업</option>
										  <option value="Etc" data-langcode="H554">기타</option>
										  
										</select>
										<!-- 메시지 -->
										<div class="error-msg">
											<div class="error-cont font-Noto" data-langcode="H497">
												쿠폰 코드를 확인해 주세요
											</div>
										</div>
										
										<div id="errorMsg" style="display: none;">
											<span style="color: red; font-size: 12px;" data-langcode="H498">오류!</span>
										</div>										
									</div>
								</div>

								<div class="btn-box font-MalgunGothic">
									<button type="button" tabindex="14"  id="submitTeamSettingInfo"  class="btn-bigs c-blue"><div class="text" style="font-size:17px;" data-langcode="AA0188">1개월 무료 체험 시작<span id="currentUserId" class="sub_text"></span></div></button> <!-- [D] 비활성 class="disable"  -->								
								</div>
								<a class="comJoin"  id="businessPayment2" data-langcode="AA0189">기업용 계정 신규 생성</a>
							</div>
						</fieldset>
					</form><!-- //정보입력폼 -->					
				</div>
				<!--// section -->
								<!-- section -->
				<div class="section type2" id="kakaoAccount" style="display:none">
					<p class="sub_tit" data-langcode="CLP1030">기업용 버전 업그레이드</p> 
					<p class="tit" data-langcode="AA0190">기업용 계정 생성 후 시작</p>	
					<p class="text" data-langcode="AA0191">카카오 or 애플 계정 이용 시에는 </p>
					<p class="text" data-langcode="AA0192">기업용 계정 생성이 필요합니다</p>
					<div class="btn-box">
						<button type="button" class="btn-bigs c-blue" id="businessPayment1" data-langcode="FU1627"><span data-langcode="H254">1개월 무료 체험</span></button> <!-- [D] 비활성 class="disable"  -->
					</div>					
				</div>
				<!--// section -->
			</div>
			<!--// upgWrap -->
		</div>
		<!-- //content -->
	<!-- intro content -->
	<div class="fl-content"  style=" padding-top: 0px; display: none; ">
		<div class="priceWp">
			<h2 class="font-Noto" data-langcode="FL572">서비스 업그레이드</h2>
			<!-- premium -->
			<div id="premiumLayer" class="prem">
				<div class="tit">
					<h3 class="font-Noto" data-langcode="H251">프리랜서용</h3>
					<p data-langcode="FU1620">
						월<strong>9,900</strong>원
					</p>
					<span class="round" data-langcode="FU1621">for 프리랜서</span>
				</div>
				<div class="cont">
					<ul>
						<li data-langcode="CB1219">프로젝트 <strong>무제한</strong> 생성 가능
						</li>
						<li><strong>100GB</strong> <span data-langcode="FU1623">저장 공간 제공</span></li>
						<li data-langcode="FU1624">1회 <strong>500MB</strong> 첨부 가능
						</li>
						<li data-langcode="FU1625">게시물 검색기간 <strong>제한 없음</strong></li>
						<li data-langcode="FU1626">초과 용량 구매 문의</li>
					</ul>
					<button id="premiumPayment" type="button" data-langcode="FU1627">1개월 무료</button>
					
				</div>
			</div>
			<!-- business -->
			<div id="businessLayer" class="busi">
				<div class="tit">
					<h3 class="font-Noto" data-langcode="H259">기업용</h3>
					<p data-langcode="FU1629">
						월<strong>40,000</strong>원
					</p>
					<em data-langcode="FU1630">10명 초과 시, 인원당 4,900원</em> 
					<span class="round" data-langcode="FU1631">for 회사</span>
				</div>
				<div class="cont">
					<strong class="plus" data-langcode="FU1632">프리랜서용 기능 포함</strong>
					<ul>
						<li data-langcode="FU1633"><strong>팀 전용 URL</strong> 제공</li>
						<li><strong>500GB</strong> <span data-langcode="FU1623">저장 공간 제공</span></li>
						<li data-langcode="FU1635">입/퇴사 자동 계정 관리</li>
						<!-- <li><strong>데이터 백업 지원</strong></li> -->
						<li><strong data-langcode="FU1636">관리자 페이지 제공</strong></li>
						<li data-langcode="FU1626">초과 용량 구매 문의</li>
					</ul>
					<button id="" type="button" data-langcode="FU1627">1개월 무료</button>
					
				</div>
			</div>
		</div>
	</div>

	<!-- business select account content -->
	<div class="fl-content" id="businessSelectAccount" style="display: none; position: absolute; width: 100%; top: 50%; transform: translateY(-50%);">
		<!-- 전체메시지 -->
		<div class="flk-msg-wrap mgb120">
			<h3 class="font-Noto" data-langcode="FU1639">기업용 버전으로 업그레이드 합니다.</h3>
			<h4 class="font-Noto"></h4>
		</div>
		<div class="btn-box">
			<button type="button" class="btn-bigs-line2 c-blue mgb15" id="useExistAccount">
				<span data-langcode="FU1640">현재 계정으로 업그레이드</span>
				<div class="ft16">madrascheck@flow.team</div>
			</button>
			<button id="registerNewAccount" type="button" class="btn-bigs c-white" style="border:1px solid #bdbdbd;" data-langcode="FU1641">신규 계정 생성</button>
			<p class="fc_gray" data-langcode="FU1642">기업용 버전은 1개월 무료로 이용해보실 수 있습니다.</p>
			<div class="form-chk">
				<a class="btn-back" id="backToIntro" data-langcode="FU1643">요금제 재선택</a>
			</div>
		</div>
	</div>

	<!-- business sign in content -->
	<div class="fl-content" id="businessSignUp" style="display: none; padding-top: 45px;">
		<!-- 전체메시지 -->
		<div class="flk-msg-wrap">
			<h3 class="font-Noto" data-langcode="H463">플로우 기업용 계정을 생성하세요</h3>
			<h4 class="font-Noto"><span style="color: #4c80d6;" data-langcode="H464">플로우 기업용 버전을 30일간 무료로 체험해 볼 수 있습니다.</span>
			<br class="block"><span data-langcode="H465">카드 등록 없이 시작할 수 있으며,&nbsp;&nbsp;요금이 부과되지 않습니다.</span> 
			<a href="/price.act" target="flowPrice" style="cursor:pointer;text-decoration:underline;" data-langcode="H466">요금제 확인</a><br class="block"></h4>
		</div>
		<form autocomplete="off">
			<fieldset>
				<legend data-langcode="H467">기업용계정 이메일, 이름, 비밀번호 입력</legend>
				<div class="input-box-style">
					<div class="blocklabel">
						<label for="email" class="font-Noto" data-langcode="H333">이메일</label>
						<div class="inputbox">
							<input type="email" id="email" maxlength="50" tabindex="1" placeholder="flow@mail.com" value="">
							<button type="button" class="btn-clear-text" style="cursor:pointer;" data-langcode="H381">삭제</button>
							<div class="error-msg">
								<div class="error-cont font-Noto" data-langcode="H397">이미 사용 중인 이메일주소입니다.</div>
							</div>
						</div>
					</div>
					<div class="blocklabel">
						<label for="name" class="font-Noto" data-langcode="H331">이름</label>
						<div class="inputbox error">
							<input type="text" id="name" tabindex="2" maxlength="50" placeholder="이름" value="" data-langcode="H331">
							<button type="button" class="btn-clear-text" style="cursor:pointer;" data-langcode="H381">삭제</button>
							<div class="error-msg">
								<div class="error-cont font-Noto" data-langcode="H472">이름을 확인해 주세요 (특수문자 사용불가)</div>
							</div>
						</div>
					</div>
					<div class="blocklabel">
						<label for="text" class="font-Noto" data-langcode="H362">비밀번호</label>
						<div class="inputbox ok">
							<input type="password" id="password" maxlength="50" tabindex="3" placeholder="비밀번호" data-langcode="H362">
							<button type="button" class="btn-clear-text" style="cursor:pointer;">삭제</button>
							<div class="error-msg">
								<div class="error-cont font-Noto" data-langcode="H402">6자 이상의 영문, 숫자를 입력하세요.</div>
							</div>
						</div>
					</div>
					<div class="blocklabel">
						<label for="text" class="font-Noto" data-langcode="FU1658">비밀번호 확인</label>
						<div class="inputbox ok">
							<input type="password" id="passwordCheck" maxlength="50" tabindex="4" placeholder="비밀번호 확인" data-langcode="H390">
							<button type="button" class="btn-clear-text" style="cursor:pointer;" data-langcode="H381">삭제</button>
							<div class="error-msg">
								<div class="error-cont font-Noto" data-langcode="H402">6자 이상의 영문, 숫자를 입력하세요.</div>
							</div>
						</div>
					</div>
					<div class="terms-check">
						<input type="checkbox" tabindex="5" id="agreeWithTheTerms">
						<a href="http://www.flow.team/terms.html" target="flowTem" data-langcode="H1857">서비스 이용약관,</a>&nbsp;
						<a href="http://www.flow.team/privacy.html" target="flowTem" data-langcode="H85">개인정보취급방침</a> <span data-langcode="H452">을 확인하였고, 이에 동의합니다.</span>
					</div>
				</div>
				<div class="btn-box">
					<button type="button" id="nextToSettingTeamInfo" class="btn-bigs c-blue" data-langcode="H482">다음</button>
					<div class="form-chk">
						<a class="btn-back" id="backToIntro" data-langcode="FU1643">요금제 재선택</a>
					</div>
					<div class="form-chk" style="display: none;">
						<a class="btn-back" id="backToBusinessSelectAccount" data-langcode="FU1665">계정 선택</a>
					</div>
				</div>
			</fieldset>
		</form>
	</div>

	<!-- business setting team info content -->
	<div class="fl-content" id="businessSettingTeamInfo" style="display: none; position: absolute; width: 100%; top: 50%; transform: translateY(-50%);">
		<!-- 전체메시지 -->
		<div class="flk-msg-wrap">
			<h3 class="font-Noto" data-langcode="H485">회사 정보 입력 후 시작하세요</h3>
			<h4 class="font-Noto"><span data-langcode="H486">아래 정보들을 입력 후, 플로우 관리자로 시작할 수 있습니다.</span><br class="block">
			<span style="color: #4c80d6;" data-langcode="H487">URL 주소는 직원들을 초대할 때 이용할 수 있습니다.</span></h4>
		</div>
		<form action="">
			<fieldset>
				<legend data-langcode="CLP952">회사명, 회사 URL 입력</legend>
				<div class="input-box-style">
					<div class="blocklabel">
						<label for="" class="font-Noto" data-langcode="FU1670">회사명</label>
						<div class="inputbox">
							<input type="text"  name="teamName" tabindex="11" maxlength="" placeholder="회사명 입력" value="" data-langcode="FU1671">
							<button type="button" class="btn-clear-text" style="cursor:pointer;" data-langcode="H381">삭제</button>
							<div class="error-msg">
								<div class="error-cont font-Noto" data-langcode="FU1672">팀 이름을 확인해 주세요 (특수문자 사용불가)</div>
							</div>
						</div>
					</div>
					
					<div class="blocklabel addE">
						<label for="addE" class="font-Noto">회사 URL</label>
	
						<div class="inputbox">
							<span style="letter-spacing: -1px;"><strong style="font-size: 18px;">http://</strong></span>
							<input type="text" name="teamUrl" tabindex="12" maxlength="" placeholder="URL 입력" style="width: 225px; margin: 0 10px;">
							<span style="letter-spacing: -1px;"><strong style="font-size: 18px;">.flow.team</strong></span>
							<button type="button" class="btn-clear-text" style="cursor:pointer; top: 15px; right: 125px;" data-langcode="H381">삭제</button>
							<div class="error-msg">
								<div class="error-cont font-Noto" style="margin-left: 70px; " data-langcode="H494">3 ~ 50자의 영문, 숫자만 가능합니다.</div>
							</div>
						</div>
					</div>
					
					<!-- 가입경로 추가 -->
					<div class="blocklabel">
						<label class="font-Noto" data-langcode="H539">회사 업종 선택</label>
						<div class="inputbox">
							<input type="text" id="basicPathCd" data-langcode="H422" class="path_cd" tabindex="12" maxlength="20" placeholder="20자 이내로 작성해주세요!" value="" style="width:100%; display:none" >
							<select class="path_cd" style="cursor:pointer; background: url(../img_rn/bul/bul_arrow2_open.png?4) no-repeat 370px 22px; background-size: 10px;">
							  	<option value="S" style="cursor:pointer" selected disabled data-langcode="CLP1003">선택</option>
							  	
<option value="Produce" data-langcode="H540">제조</option>
<option value="Service" data-langcode="H541">서비스</option>
<option value="IT" data-langcode="H542">IT</option>
<option value="Logistics" data-langcode="H543">유통</option>
<option value="Marketing" data-langcode="H544">마케팅</option>
<option value="Research" data-langcode="H545">교육/연구</option>
<option value="Construct" data-langcode="H546">건설</option>
<option value="Medical" data-langcode="H547">의료</option>
<option value="Finance" data-langcode="H548">금융</option>
<option value="Consumer" data-langcode="H549">소비재</option>
<option value="Public" data-langcode="H550">공공행정</option>
<option value="Franchise" data-langcode="H551">프렌차이즈</option>
<option value="Entertain" data-langcode="H552">엔터테인먼트</option>
<option value="Fishing" data-langcode="H553">농업/어업</option>
<option value="Etc" data-langcode="H554">기타</option>
								
							</select>
							<button type="button" class="btn-clear-text" style="cursor:pointer;" data-langcode="H381">삭제</button>
							<!-- 메시지 -->
							<div class="error-msg">
								<div class="error-cont font-Noto" data-langcode="H497">
									쿠폰 코드를 확인해 주세요
								</div>
							</div>
						</div>
					</div>
					
					
					<div id="errorMsg" style="display: none;">
						<span style="color: red; font-size: 12px;" data-langcode="H498">오류!</span>
					</div>
				</div>
				
				
				<div class="btn-box">
					<button type="button" tabindex="14" class="btn-bigs c-gray" id="basicSubmitTeamSettingInfo" data-langcode="H499">1개월 무료 시작하기</button>
					<div class="form-chk">
						<a class="btn-back" id="backToBusinessSignUp" data-langcode="H500">기업용 계정 정보 수정</a>
					</div>
					<div class="form-chk" style="display: none;">
						<a class="btn-back" id="backToBusinessSelectAccount" data-langcode="FU1665">계정 선택</a>
					</div>
				</div>
			</fieldset>
		</form>
	</div>

	<!-- business finished content -->
	<div class="fl-content" id="businessFinished" style="display: none; position: absolute; width: 100%; top: 50%; transform: translateY(-50%);">
		<div class="flk-msg-wrap">
			<img src="/design2/img_login/floki_05.png" alt="">
			<h3 class="font-Noto" data-langcode="H501">기업용 버전 시작을 환영합니다</h3>
			<h4 class="font-Noto"><span style="font-weight:bold;"><span id="teamUserNm"></span>
			<span data-langcode="H502">님</span></span><span data-langcode="H414">은</span>&nbsp;
			<span style="font-weight:bold;" data-langcode="H420">관리자</span><span data-langcode="H437">로 시작할 수 있습니다. 직원들을 초대하여 함께 시작하세요.</span></h4>
		</div>
		<div class="url-copy-wrap">
			<div class="inputbox">
				<input type="text" id="teamURL" maxlength="" value="" readonly>
				<button type="button" class="btn-sml" id="copyURL" data-langcode="H503">복사</button>
			</div>
		</div>
		<div class="btn-box" style="width: 460px;">
			<button type="button" class="btn-bigs c-blue" style="width: 460px;" id="startNow" data-langcode="H504">바로 시작하기</button>
			<p class="fc_gray" data-langcode="H505">
				1개월간 무료로 이용 가능하며, 계속 이용하시려면 결제 정보 등록이 필요합니다<br class="block">(기간 초과 시, 서비스 이용이 중지됩니다) 
			</p>
		</div>
	</div>

	<!-- premium finished content -->
	<div class="fl-content" id="premiumFinished" style="display: none;">
		<div class="flk-msg-wrap">
			<img src="/design2/img_login/floki_05.png" alt="">
			<h3 class="font-Noto" data-langcode="FU1691">프리랜서용 버전 구매 감사합니다!</h3>
		</div>
		<div class="btn-box">
			<button type="button" class="btn-bigs c-blue" id="startNow" data-langcode="H504">바로 시작하기</button>
			<p class="fc_gray" data-langcode="FU1692">
				이용 요금은 등록한 카드로 매월 10일 자동 결제되며, 결제 내역은 메일로 발송됩니다.
			</p>
		</div>
	</div>

	<!-- error content -->
	<div class="fl-content" id="error" style="display: none; position: absolute; width: 100%; top: 50%; transform: translateY(-50%);">
		<div class="flk-msg-wrap">
			<img src="/design2/img_login/floki_04.png" alt="">
			<h3 class="font-Noto" data-langcode="H506">업그레이드 중 오류가 발생하였습니다.</h3>
		</div>
		<div class="btn-box">
			<button type="button" class="btn-bigs c-blue" data-langcode="H507">메인화면으로 이동</button>
			<p class="fc_gray">
				<span data-langcode="H508">혹시 계속 오류가 발생하신다면 저희에게 꼭 알려주세요!</span><br>
				<a href="mailto:help@flow.team">help@flow.team</a> <span data-langcode="H509">또는 '문의하기'로 알려주시면 빠르게 도와드리겠습니다.</span>
			</p>
		</div>
	</div>
	

	
</div></div>
	<div id="iamportPaymentLayer" class="pc-login-wrap"
		mobileYn="N"
		style="display: none; top: 0px; left: 0px; z-index: 14000; overflow: auto;">




<div class="fl-header-wrap">
	<div class="top-banner" style="display: block;">
		<div id="paymentMessage" class="tb-txt"><span data-langcode="FIP1504">계좌이체 또는 자동이체를 통해서도 결제할 수 있습니다</span><a id="payWithBankTransfer" data-langcode="FIP1505" >신청하기</a></div>
	</div>
	<div class="fl-header" style="display: block;">
		<h1><img src="/design2/img_login/bi_flow.png" alt="flow"></h1>
		<a class="close" style="display: block;"><span class="blind" data-langcode="H417">닫기</span></a>
	</div>
</div>

<div id="companyPaymentLayer" class="f-login-wrap payModi" style="display:none;">
	<!-- content -->
	<div id="newpaymentLayer" class="fl-content companyVer">
		<!-- ci -->
		<div class="ci-wrap">
			<h2 class="font-Noto">기업용 버전 결제</h2><!-- 플로우 요금제변경 -->			
			<p class="font-Noto">이용 요금은 매월 10일 자동 결제되며, 사용 인원에 따라 결제 금액이 변경될 수 있습니다 <em id="showAmountCalculator" style="color:#4c80d6; cursor:pointer">요금계산기</em></p><!-- 플로우 요금제변경 -->
			<p class="font-Noto" style="font-size: 16px;color: #9b9b9d;margin-top: 4px;"><span data-langcode="FIP1509">카드 확인을 위해 1,000원 결제 후, 취소됩니다 </span>
		</div><!-- //ci -->
		
		<!-- comWrap -->
		<div class="comWrap">
			<!-- section -->
			<div class="section">
				<!-- 정보입력폼 -->
				<form action="">
						<legend>결제정보 입력</legend>
						<div class="input-box-style payModi">

							<div class="blocklabel payModi">
								<label for="name" class="font-Noto">이름</label>	
								<div class="inputbox payModi">
									<input type="text" name="buyerName" maxlength="30" placeholder="" value="" tabindex="1">
									<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
									<div class="payModi error-msg">
										<div class="error-cont font-Noto" data-langcode="H472">이름을 확인해주세요 (특수문자 사용불가)</div>
									</div>
								</div>
							</div>

							<div class="blocklabel payModi">
								<label for="email" class="font-Noto">이메일주소 입력</label>
								<div class="inputbox payModi">
									<input type="text" name="buyerEmail" maxlength="50" placeholder="email@flow.team" value="" tabindex="2" disabled style="color:#bcbdbd;  background-color: #f9f9fa;">
									<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
									<div class="payModi error-msg">
										<div class="error-cont font-Noto" data-langcode="H374">이메일 형식이 맞지 않습니다</div>
									</div>
								</div>
							</div>

							<div class="blocklabel payModi">
								<label for="cellNum" class="font-Noto">전화번호 입력</label>
								<div class="inputbox payModi">
									<input type="text" name="buyerNumber" maxlength="15" placeholder="ex) 01012345678" value="" tabindex="3">
									<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
									<div class="payModi error-msg">
										<div class="error-cont font-Noto" data-langcode="H374">전화번호 형식이 맞지 않습니다</div>
									</div>								
								</div>
							</div>
							
							<div class="blocklabel payModi">
								<div>
									<label for="cardNums" class="font-Noto" data-langcode="FIP1519">카드번호</label>
									
								</div>
								<div class="inputbox payModi modicardnum">
									<input type="text" name="cardNum1" maxlength="4" placeholder="" value="" tabindex="4" autocomplete="false">
									<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
									<div class="payModi error-msg">
										<div class="error-cont font-Noto" data-langcode="FIP1520">카드번호를 확인해주세요</div>
									</div>
								</div>
								<div class="inputbox payModi modicardnum">
									<input type="text" name="cardNum2" maxlength="4" placeholder="" value="" tabindex="5" autocomplete="false">
									<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
									<div class="payModi error-msg">
										<div class="error-cont font-Noto" data-langcode="FIP1520">카드번호를 확인해주세요</div>
									</div>
								</div>
								<div class="inputbox payModi modicardnum">
									<input type="password" name="cardNum3" maxlength="4" placeholder="" value="" tabindex="6" autocomplete="false">
									<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
									<div class="payModi error-msg">
										<div class="error-cont font-Noto" data-langcode="FIP1520">카드번호를 확인해주세요</div>
									</div>
								</div><div class="inputbox payModi modicardnum last_cardnum">
									<input type="password" name="cardNum4" maxlength="4" placeholder="" value="" tabindex="7" autocomplete="false">
									<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
									<div class="payModi error-msg">
										<div class="error-cont font-Noto" data-langcode="FIP1520">카드번호를 확인해주세요</div>
									</div>
								</div>
							</div>
							
							<div class="db_arc">
								<div class="blocklabel payModi" style="float:left; width:66%;">
									<label for="" class="font-Noto">유효기간</label>
									<div class="lycombobox">
										<div class="tab_focus" tabindex="8">
											<div class="lycombo">
												<div class="lycombo-select"><span name="expiryMonth" style="padding-left:10px">MM</span><a class="lycombo-click"></a></div>
												<div class="lycombo-optn" style="display: none;">
													<ul><li value="0">01</li><li value="1">02</li><li value="2">03</li><li value="3">04</li><li value="4">05</li><li value="5">06</li><li value="6">07</li><li value="7">08</li><li value="8">09</li><li value="9">10</li><li value="10">11</li><li value="11">12</li></ul>
												</div>
											</div>
										</div>
										<div class="tab_focus" tabindex="9">
											<div class="lycombo">
												<div class="lycombo-select"><span name="expiryYear">YYYY</span><a class="lycombo-click"></a></div>
												<div class="lycombo-optn" style="display: none;">
													<ul name="expiryYearList"></ul>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="blocklabel payModi cardpw" style="float:left; width:34%">
									<div class="lycombobox">
										<label for="cardPwNum" class="font-Noto" >비밀번호 앞 두자리</label>
										<div class="inputbox payModi">
											<input type="password" name="cardPwNum" tabindex="10" style="padding-right:10px;padding-left:10px;font-size:0.51em;" maxLength="2" placeholder="**" value="" >
										</div><span class="afterpw">**</span>
									</div>
								</div>
							</div>
							<div class="blocklabel payModi">
								<label for="birthdayNum" class="font-Noto">사업자번호 10자리(법인) / 생년월일 6자리(개인)</label>
								<div class="inputbox payModi">
									<input type="text" name="birthdayNum" tabindex="11" maxlength="10" placeholder="- 빼고 입력" value="">
									<!-- <button type="button" class="btn-ok-text">확인</button> -->
									<button type="button" class="btn-clear-text"></button>
									<!-- 오류메시지 -->
									<div class="payModi error-msg">
										<div class="error-cont font-Noto">사업자번호 또는 생년월일을 확인해주세요</div>
									</div><!-- //오류메시지 -->
								</div>
							</div>				
							
						</div>

				</form><!-- //정보입력폼 -->
			</div>
			<!--// section -->

			<!-- section -->
			<div class="section">
				<!-- 정보입력폼 -->
				<form action="">
						<legend>결제 금액</legend>

						<div class="blocklabel payModi">
							<label for="" class="font-Noto">결제주기</label><!-- 2019.07.01 결제정보 수정 -->							
							<div id="paymentMethod" class="lycombobox">
								<div class="lycombo selectPass">
									<div class="lycombo-select"><span id="payOption">연간 정기 결제<em class="sale_mark">20% 할인</em></span><a class="lycombo-click"></a></div>
										<div id="payLycombo-optn" class="lycombo-optn" style="display: none;">
											<a class="lycombo-click"></a>
											<ul style="height: auto">
												<li id="#yearPay">연간 정기 결제<em class="sale_mark">20% 할인</em></li>
												<li id="#monthPay">월간 정기 결제<em class=""></em></li>
											</ul>
										</div>
								</div>
							</div>
						</div>
						
						
						<div class="blocklabel payModi">						
							<label for="" class="font-Noto">예상 금액</label>
							<!-- price -->
							<div id="payPrice" class="price">
								<div class="user">
									<label for="">현재 사용 인원</label>
									<div id="payToolTipHover" class="input_box">
										<input id="payToolTip" type="text" disabled style="color:#bcbdbd;">
										<span> 명</span>
									</div>
								</div>
							
								<p class="text">₩<span id="price">40,000</span>년</p>
								<span class="sup"><em>할인 금액 10,000원</em> (VAT 포함)</span>
							</div>
							<!--// price -->
						</div>

						<div class="agreeBox">
							<input type="checkbox" tabindex="12" id="agreeWithThePaymentTerms2" name="agreeWithThePaymentTerms" value="" style="display:none"><label for="agreeWithThePaymentTerms2"></label>
							<a id="paymentTermsLink2" data-langcode="CLP1116"><span>정기과금 이용약관</span></a> 내용을 확인하였고, 이에 동의합니다.
						</div>
						<div class="btn-box modi">
							<button name="executePayment" type="button" class="btn-bigs c-gray" style="font-size:17px">정기 결제 신청</button> <!-- [D] 비활성 class="disable"  -->								
						</div>				
				</form><!-- //정보입력폼 -->
			</div>
			<!--// section -->
			<!-- recomPer -->
			<dl class="recomPer">
				<dt>추천인 계정입력</dt>
				<dd>
					<div class="inputbox payModi">
						<input type="text" name="recommendId" maxlength="100" placeholder="아이디 또는 이메일 주소 입력" value="" tabindex="13" data-langcode="" style="display:none; ime-mode:disabled;">
						<button type="button" class="btn-clear-text">삭제</button>
					</div>					
				</dd>
			</dl>
			
			<!--// recomPer -->					
		</div>
			<br>
			<p class="ico-clean" style="margin: 25px auto 45px;" data-langcode="FIP1529">결제정보는 암호화하여 안전하게 전송되며, 서버에 저장되지 않습니다.</p>
		<!--// comWrap -->	
	</div><!-- //content -->
</div>
<!-- //wrap -->

<div class="f-login-wrap" id="premiumPaymentLayer" style="padding-top: 140px; display:none;">
	<div class="fl-content" id="paymentLayer" style="padding-top:0px;padding-bottom:0px;height:100%;">
		<div class="ci-wrap">
			<h2 class="font-Noto" style="margin-top: 0px;" data-langcode="FIP1507">결제정보 입력</h2>
			<p class="font-Noto" data-langcode="FIP1508">이용 요금은 등록한 카드로 매월 10일 자동 결제됩니다</p>
			<p class="font-Noto" style="font-size: 16px;color: #9b9b9d;margin-top: 4px;"><span data-langcode="FIP1509">카드 확인을 위해 1,000원 결제 후, 취소됩니다 </span>
			</p>
			<button  type="button" style="display:none;" data-langcode="FIP1511">요금계산기</button><!--class="business-only" -->
			<button type="button" class="" style="display:none;"><span data-langcode="H251">프리랜서용</span> ￦9900 / 월</button>
		</div>
		<form autocomplete="off">
			<fieldset>
				<legend data-langcode="FIP1507">결제정보 입력</legend>
				<div class="input-box-style" style="margin-bottom:10px;">
					<div class="blocklabel">
						<label for="buyerName" class="font-Noto" data-langcode="H331">이름</label>
						<div class="inputbox">
							<input type="text" name="buyerName" placeholder="" value="" tabindex="1">
							<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
							<div class="error-msg">
								<div class="error-cont font-Noto" data-langcode="H472">이름을 확인해주세요 (특수문자 사용불가)</div>
							</div>
						</div>
					</div>
					<div class="blocklabel">
						<label for="buyerEmail" class="font-Noto" data-langcode="H333">이메일</label>
						<div class="inputbox">
							<input type="text" name="buyerEmail" placeholder="email@flow.team" disabled style="color:#bcbdbd; background-color: #f9f9fa;" value="" tabindex="2">
							<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
							<div class="error-msg">
								<div class="error-cont font-Noto" data-langcode="H374">이메일 형식이 맞지 않습니다</div>
							</div>
						</div>
					</div>
					<div class="blocklabel">
						<label for="buyerNumber" class="font-Noto" data-langcode="H358">휴대폰번호</label>
						<div class="inputbox">
							<input type="text" name="buyerNumber" maxlength="15" placeholder="ex) 01012345678" value="" tabindex="3">
							<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
							<div class="error-msg">
								<div class="error-cont font-Noto" data-langcode="H374">전화번호 형식이 맞지 않습니다</div>
							</div>
						</div>
					</div>
					<div class="blocklabel">
						<label for="cardNums" class="font-Noto" data-langcode="FIP1519">카드번호</label>
						<div class="inputbox cardnum">
							<input type="text" name="cardNum1" maxlength="4" placeholder="" value="" tabindex="4">
							<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
							<div class="error-msg">
								<div class="error-cont font-Noto" data-langcode="FIP1520">카드번호를 확인해주세요</div>
							</div>
						</div>
						<div class="inputbox cardnum">
							<input type="text" name="cardNum2" maxlength="4" placeholder="" value="" tabindex="5">
							<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
							<div class="error-msg">
								<div class="error-cont font-Noto" data-langcode="FIP1520">카드번호를 확인해주세요</div>
							</div>
						</div>
						<div class="inputbox cardnum">
							<input type="password" name="cardNum3" maxlength="4" placeholder="" value="" tabindex="6" autocomplete="false">
							<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
							<div class="error-msg">
								<div class="error-cont font-Noto" data-langcode="FIP1520">카드번호를 확인해주세요</div>
							</div>
						</div><div class="inputbox cardnum last_cardnum">
							<input type="password" name="cardNum4" maxlength="4" placeholder="" value="" tabindex="7" autocomplete="false">
							<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
							<div class="error-msg">
								<div class="error-cont font-Noto" data-langcode="FIP1520">카드번호를 확인해주세요</div>
							</div>
						</div>
					</div>

					<div style="display: block;height: 90px;">
						<div class="blocklabel" style="float: left; width:47%;">
							<label for="" class="font-Noto" style="margin-top:0px;" data-langcode="FIP1521">유효기간</label>
							<div class="lycombobox">
								<div class="tab_focus" tabindex="8">
									<div class="lycombo">
										<div class="lycombo-select"><span name="expiryMonth">MM</span><a class="lycombo-click"></a></div>
										<div class="lycombo-optn" style="display: none;">
											<ul><li value="0">01</li><li value="1">02</li><li value="2">03</li><li value="3">04</li><li value="4">05</li><li value="5">06</li><li value="6">07</li><li value="7">08</li><li value="8">09</li><li value="9">10</li><li value="10">11</li><li value="11">12</li></ul>
										</div>
									</div>
								</div>
								<div class="tab_focus" tabindex="9">
									<div class="lycombo">
										<div class="lycombo-select"><span name="expiryYear">YYYY</span><a class="lycombo-click"></a></div>
										<div class="lycombo-optn" style="display: none;">
											<ul name="expiryYearList"></ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="blocklabel cardpw" style="float: right;width: 47%;">
							<label for="cardPwNum" class="font-Noto" style="margin-top:0px;" data-langcode="FIP1522">카드 비밀번호 앞 두자리</label>
							<div class="inputbox">
								<input type="password" name="cardPwNum" maxlength="2" placeholder="**" value="" autocomplete="false" tabindex="10">
							</div>
							<span class="afterpw">**</span>
						</div>
					</div>
					<div class="blocklabel">
						<label for="birthdayNum" class="font-Noto" data-langcode="FIP1523">사업자번호 10자리(법인) / 생년월일 6자리(개인)</label>
						<div class="inputbox">
							<input type="text" name="birthdayNum" maxlength="10" placeholder="- 빼고 입력" value="" tabindex="11" data-langcode="FIP1524">
							<button type="button" class="btn-clear-text" data-langcode="H381">삭제</button>
							<div class="error-msg">
								<div class="error-cont font-Noto" data-langcode="FIP1525">사업자번호 또는 생년월일을 확인해주세요</div>
							</div>
						</div>
					</div>
					
					<div class="blocklabel">
						<label for="recommendId" class="font-Noto" data-langcode="FIP1544">추천인 계정(ID)</label>
						<div class="inputbox">
							<input type="text" name="recommendId" maxlength="100" placeholder="생략 가능" value="" tabindex="12" data-langcode="">
						</div>
					</div>

					<div class="terms-check">
						<input type="checkbox" tabindex="13" id="agreeWithThePaymentTerms1" name="agreeWithThePaymentTerms" value=""><label for="agreeWithThePaymentTerms1"></label>
						<a id="paymentTermsLink" data-langcode="CLP1116">정기과금 이용 약관</a><span data-langcode="FIP1527"> 내용을 확인하였고, 이에 동의합니다.</span>
					</div>
				</div>
				<div class="btn-box">
					<button name="executePayment" type="button" class="btn-bigs disable" style="margin-top:30px;" tabindex="14" data-langcode="FIP1528">결제정보 등록</button>
					<p class="ico-clean" data-langcode="FIP1529">결제정보는 암호화하여 안전하게 전송되며, 서버에 저장되지 않습니다.</p>
				</div>
			</fieldset>
		</form>
	</div>
	<!-- // Iamport payment test --> 
</div>

<!--  결제취소 -->
<div id="paymentCancelConfirmLayerPopup" class="dim-wrap" style="display: none;">
	<div class="dim-row">
		<div class="dim-cell">
			<div class="dim-bg"></div>
			<div class="diminly-pop">
				<div class="alertlyr-pop">
					<p class="line1" data-langcode="FIP1530">결제를 취소하시겠습니까?</p>
					<div><button type="button" class="setbtn btntype-s1" data-langcode="FIP1531">아니오</button>
					<button type="button" class="setbtn btntype-s1 bpoint" data-langcode="FIP1532">예</button></div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //결제취소 -->

<!--  결제진행중 -->
<div id="paymentPendingLayerPopup" class="dim-wrap" style="display: none;">
	<div class="dim-row">
		<div class="dim-cell">
			<div class="dim-bg"></div>
			<div class="diminly-pop">
				<div class="alertlyr-pop">
					<p class="line2" data-langcode="FIP1533">결제 진행 중입니다.<br>잠시만 기다려 주세요!</p>
					<div class="loader_bx">
						<div class="loader" title="Loading..."></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //결제진행중 -->

<!-- new 요금계산기 -->
<div id="amountCalculatorLayerPopup" class="dim-wrap" style="display:none; z-index:13002">
	<div class="dim-row comWrap">
		<div class="dim-cell">
			<div class="dim-bg"></div>
			<div class="diminly-pop" style="width:365px;">
				<div class="lyp-type1" >
					<div class="lyp-top">
						<h3>요금 계산기</h3>
						<button type="button" class="btn-lyp-close"><span class="blind" data-langcode="FIP1506">닫기</span></button>
					</div>
					<div class="lyp-cont" style="padding: 0px 30px 40px;">
						<div class="calcul-wrap">
							<div class="calcul-left" style="height:335px;">
							
								<form>			
									<div class="blocklabel payModi">
										<label for="" class="font-Noto">결제주기</label>						
										<div class="lycombobox">
											<div class="lycombo selectPass" style="cursor:pointer; height: 42px; font-size:16px;">
												<div class="lycombo-select"><span id="payCalcOption" style="width: 278px;">연간 정기 결제<em class="sale_mark">20% 할인</em></span><a class="lycombo-click"></a></div>
													<div class="lycombo-optn" style="display: none;">
														<a class="lycombo-click"></a>
														<ul style="height: auto">
															<li id="#calcYearPay">연간 정기 결제<em class="sale_mark">20% 할인</em></li>
															<li id="#calcMonthPay">월간 정기 결제<em class=""></em></li>															
														</ul>
													</div>
											</div>
										</div>
									</div>
									
									
									<div class="blocklabel payModi">						
										<label for="" class="font-Noto">예상 금액</label>
										<!-- price -->
										<div id="payCalcPrice" class="price">
											<div class="user">
												<label for="">사용 인원</label>
												<div class="input_box">
													<input id="calcAmount" type="text" maxlength="4" style="background-color:#fff">
													<input type="text" style="display:none;">
													<span> 명</span>
												</div>
											</div>
											<div>
												<p class="text">₩<span id="price">480,000</span></p>
												<span class="sup">할인금액 120,000원 (정상가 600,000원)</span>
											</div>
										</div>
										<!--// price -->
									</div>
									<p data-langcode="FIP1540" style="font-size: 12px;color: #a2a5a5;letter-spacing: -0.3px;margin-top: 10px;">* 매월 사용인원 수에 따라 이용금액이 변경될 수 있습니다.</p>
									<a href="http://support.flow.team/hc/ko/sections/206999008-%EA%B0%80%EA%B2%A9-%EC%A0%95%EC%B1%85" class="often-q-ico" style="position: static; margin-top: 10px;" data-langcode="FIP1560">자주묻는 질문 보기</a>
							</form><!-- //정보입력폼 -->
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //요금계산기 -->

<!-- 계좌자동출금신청 -->
<div id="bankTransferDescriptionLayerPopup" class="dim-wrap" style="display: none;z-index:13002;">
	<div class="dim-row">
		<div class="dim-cell">
			<div class="dim-bg"></div>
			
				<div class="diminly-pop" style="width:450px; display: block;">
					<div class="lyp-type1">
						<div class="lyp-top">
							<h3 data-langcode="FIP1561">계좌이체 · 자동이체 신청</h3>
							<button type="button" class="btn-lyp-close"><span class="blind" data-langcode="H417">닫기</span></button>
						</div>
						<div class="lyp-cont">
							<p class="top-parah" data-langcode="FIP1562">아래의 서류를 준비하여 메일 보내주세요.</p>
			
							<div class="new_info">
								<dl>
									<dt>계좌이체</dt>
									<dd>
										<ul>
											<li data-langcode="FIP1563">· 사업자 등록증</li>
										</ul>								
									</dd>
								</dl>
								<dl>
									<dt>자동이체</dt>
									<dd>
										<ul>
											<li data-langcode="FIP1563">· 사업자 등록증</li>
											<li data-langcode="FIP1564">· 자동출금신청 동의서 <a id="getBankTransferApplyPaper" class="linkdown">[<span data-langcode="action.download">다운로드</span>]</a></li>
										</ul>
									</dd>
								</dl>
							</div>
							<div class="new_info_btn_sec">
								<a href="mailto:help@flow.team"  class="helpmail">help@flow.team</a>
								<a href="http://support.flow.team/hc/ko/articles/360002586471-%EB%B9%84%EC%A6%88%EB%8B%88%EC%8A%A4-%EB%B2%84%EC%A0%84-%EA%B2%B0%EC%A0%9C%EB%A5%BC-%EB%AC%B4%ED%86%B5%EC%9E%A5%EC%9E%85%EA%B8%88%ED%95%B4%EB%8F%84-%EB%90%98%EB%82%98%EC%9A%94-"  target="payWithBankApply" class="often-q-ico">자주묻는 질문 보기</a>
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
</div>
<!-- //계좌자동출금신청 -->

<!-- 결제취소 -->
<div id="cancelPaymentLayerPopup" class="dim-wrap" style="display: none;z-index:13002;">
	<div class="dim-row">
		<div class="dim-cell">
			<div class="dim-bg"></div>
			<div class="diminly-pop">
				<div class="alertlyr-pop">
					<p class="line1" data-langcode="FIP1530">결제를 취소하시겠습니까?</p>
					<div><button id="no" type="button" class="setbtn btntype-s1" data-langcode="FIP1531">아니오</button>
					<button id="yes" type="button" class="setbtn btntype-s1 bpoint" data-langcode="FIP1532">예</button></div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //결제취소 --></div>
	<div id="securityAgreeLayerView"></div>


	<div id="flow_layer_popup">



<!-- 기존 팀 참여요청 popup -->
<div class="pc-login-wrap" id="teamJoinPopup" style="display: none; top: 0px; left: 0px; z-index: 13000; overflow: auto;">
	<div class="fl-header-wrap">
		<div class="fl-header">
			<h1><img src="/design2/img_login/bi_flow.png" alt="flow"></h1>
			<a class="close" style="top:5px;"><span class="blind" data-langcode="H417">닫기</span></a>
		</div>
	</div>
	
	<div class="f-login-wrap" style="position: fixed; margin: 0px; padding: 60px 0 0 0; width: 100%; height: 100%;">

		<!-- business setting team info content -->
		<div class="fl-content" id="teamJoinUrlInput" style="display: block; position: absolute; width: 100%; top: 50%; transform: translateY(-50%);">
			<div class="flk-msg-wrap">
				<h3 class="font-Noto" data-langcode="H485">회사 정보 입력 후 시작하세요</h3>
				<h4 class="font-Noto"><span data-langcode="H486">아래 정보들을 입력 후, 플로우 관리자로 시작할 수 있습니다.</span><br class="block"><span style="color: #4c80d6;"></span><span data-langcode="H487">URL 주소는 직원들을 초대할 때 이용할 수 있습니다.</span></h4>
			</div>
			<form action="" onSubmit="return false">
				<fieldset>
					<legend data-langcode="CLP952">팀이름, 팀URL 입력</legend>
					<div class="input-box-style">
						<div class="blocklabel url-box">
							<label for="teamUrl" class="font-Noto" data-langcode="CLP953">팀URL</label>
							<div class="inputbox" style="width: 290px;">
								<input type="text" id="teamDomain" tabindex="12" maxlength="" placeholder="URL 주소 입력" value=""> <strong id="domain" style="position: absolute; left: 300px; top: 20px; font-size: 18px;">.flow.team</strong>
								<button type="button" class="btn-ok-text" style="display:none;" data-langcode="H359">확인</button>
								<button type="button" class="btn-clear-text" style="display:none;" data-langcode="H381">삭제</button>
								<div class="error-msg"><div class="error-cont font-Noto" data-langcode="H494">3 ~ 50자의 영문, 숫자만 가능합니다.</div></div>
							</div>
						</div>
						<div id="errorMsg" style="display: none;"><span style="color: red; font-size: 12px;" data-langcode="H498">오류!</span></div>
					</div>
					<div class="btn-box"><button type="button" tabindex="14" class="btn-bigs c-gray" id="nextToTeamJoinFinished" data-langcode="CLP958">팀 참여하기</button></div>
				</fieldset>
			</form>
		</div>
		
		<!-- 기존 팀 참여요청 팀 확인 popup -->
 		<div id="teamJoinCheckPopup" style="top:0;height:100%;width:100%;z-index:1100;position:fixed;display:none;">
			<div class="layerstyle4" style="width: 450px;z-index: 1101; border:solid 1px #efefef; position: fixed;-webkit-box-shadow: 0px 0px 20px 6px rgba(196,196,196,1);-moz-box-shadow: 0px 0px 20px 6px rgba(196,196,196,1);box-shadow: 0px 0px 20px 6px rgba(196,196,196,1);">
				<div class="layerstyle4_po">
					<div class="layerstyle4_cont">
						<div class="pop_logoimg_wrap">
							<h5 class="font-Noto" data-langcode="CLP959">회사 정보 확인 후 시작하세요!</h5>
							<div class="pop_logoimg_cont" id="teamLogoNotExist" style="display: none;"><p style="font-size: 20px;font-weight: 600;"></p></div>
							<div class="pop_logoimg_cont2" id="teamLogoExist"><img src="" alt="" style="transform: translateY(-50%); top: 50%; position: relative; max-height: 142px; max-width: 408px;"></div>
						</div>
						<div class="layerstyle_btm" style="border-top: 0px;"><a class="btn_style1" id="join" style="width: 100%;height: 100%;text-align: center;color: #ffffff;padding-top: 10px;padding-bottom: 10px;background-size: 100% 50px;" data-langcode="CLP960">참여하기</a></div>
						<div style="width: 100%;color: #898989;text-decoration: underline;text-align: center"><a id="checkAgain" data-langcode="CLP961">다시 확인하기</a></div>
					</div>
				</div>
			</div>
		</div>
		<!-- business finished content -->
		<div class="fl-content" id="teamJoinFinished" style="display: none; position: absolute; width: 100%; top: 50%; transform: translateY(-50%);">
			<div class="flk-msg-wrap">
				<img src="/design2/img_login/floki_05.png" alt="">
				<h3 class="font-Noto" data-langcode="CLP962">
					가입 요청되었습니다.
				</h3>
				<h4 class="font-Noto" data-langcode="CLP963">관리자 승인 완료 시, 가입이 완료됩니다.</h4>
			</div>
			<div class="btn-box" style="width: 460px;">
				<button type="button" class="btn-bigs c-blue" style="width: 460px;" id="goToMain" data-langcode="CLP964">메인으로</button>
			</div>
		</div>
	</div>
</div>
<div id="confirm-layer-popup-bg" style="display:none;top:0;bottom:0;left:0;right:0;">
	<div id="confirm-layer-popup" class="layerstyle1" style="z-index:9999;">
		<div class="layerstyle1_po">
			<div class="layerstyle1_cont">
				<p id="message" data-langcode="CLP965">질문질문</p>
				<div class="lp_btn_wrap">
					<a class="btn_style2" id="cancel">
						<span data-langcode="CD755">취소</span>
					</a>&nbsp;
					<a class="btn_style1" id="submit">
						<span data-langcode="CLP967">변경</span>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- 초대장확인 layerpopup -->
<div id="inviteView" class="layerstyle4" style="display:none;width:480px;margin-left:-240px;top:160px;left:50%;z-index:1100;">
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3 data-langcode="CLP968">초대장 확인</h3>
			<a class="btn_layerstyle4_close"><img src="/design2/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
		</div>
		<div class="layerstyle4_cont">
			<div class="certi_bx2">
				<div class="photobx">
					<img id="inviteCoverUrl" src="/design2/img_rn/bg/bg_transparent_200.png" alt="" style="width:258px;height:258px;object-fit:cover;">
				</div>

				<dl>
					<dt id="inviteTtl"></dt>
					<dd id="dot1"></dd>
				</dl>
				<div id="flnmSector" class="invite_user"><strong id="inviteFlnm">홍길동</strong> 
				<span data-langcode="CLP969">님이 초대합니다</span></div>
			</div>
			
			<div id="openPrjJoin" class="t_center mgb15" style="display: none; ">
				<a class="btnst02" id="openInvtGoBtn" ><span data-langcode="CLP960">참여하기</span></a>
				<a class="btnst02" id="openInvtReqBtn" style="display:none;"><span data-langcode="CLP970">참여요청</span></a>
			</div>
			
			<div id="inviteJoin" class="t_center mgb15" style="display: none; ">
				<div id="jnngAthzY" style="display: none; ">
					<a class="btnst02" id="inviteStts4"><span data-langcode="CLP971">초대장 삭제</span></a>&nbsp;&nbsp;<a class="btnst02" id="inviteStts3"><span data-langcode="CLP970">참여 요청</span></a>
				</div>
				<div id="jnngAthzN"  style="display: none; ">
					<a class="btnst02" id="inviteStts2"><span data-langcode="CLP972">거절</span></a>&nbsp;&nbsp;<a class="btnst02" id="inviteStts1"><span data-langcode="CLP973">수락</span></a>
				</div>
			</div>
			
			<div id="inviteConf" class="t_center mgb15" style="display: none; ">
				<div class="certi_bx">
					<p class="fnt16" style="margin: 20px 0 20px 0; color: #5f5ab9;">
						<strong data-langcode="CLP974">참여 신청 중입니다.</strong>
					</p>
					<p style="margin-bottom: 18px; line-height: 22px; color: #333;" data-langcode="CLP975">
						프로젝트 관리자가 가입 승인전까지<br>조금만 기다려주세요.
					</p>
					<div class="t_center mgb15" >
						<a class="btnst02" id="inviteStts7"><span data-langcode="CLP976">신청 취소</span></a>&nbsp;&nbsp;<a class="btnst02" id="inviteOk"><span data-langcode="H359">확인</span></a>
					</div>
				</div>
			</div>
		
		
		</div>
	</div>
</div>
<!-- //초대장확인 layerpopup -->

<!-- 초대장확인01 layerpopup -->
<div id="inviteViewOld" class="layerstyle4" style="display: none; width: 500px; top: 100px; left: 40%; z-index: 1000;">
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3>
				<span class="icon_copy"></span>&nbsp;<span data-langcode="CLP968">초대장 확인</span>
			</h3>
			<a class="btn_layerstyle4_close"><img src="/design2/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
		</div>

		<div class="layerstyle4_cont">
			<div class="certi_bx">
				 
				<p class="fnt16" style="margin: 20px 0 20px 0;display:none;" id="invitTtlSection">
					<strong id="inviteTtl">[<span data-langcode="CLP977">초대받은 프로젝트명만 보여줍니다</span>...]</strong>
				</p>
				
				<div class="user_thum" id="flnmSector">
					<img id="invitePrflPhtg" src="/design2/img_rn/img_photo_null40.png" alt="" onerror="this.src='/design2/img_rn/img_photo_null40.png'">
					<strong id="inviteFlnm"></strong>
					<p id="inviteCmnm"></p>
				</div>
				<p id="inviteSendienceSection" style="margin-bottom: 30px; color: #333;">
					<span id="inviteSendience" style="font-weight: 600;"></span><span data-langcode="I1917">이 프로젝트에 참여중입니다.</span>
				</p>
				 
				 
				<div id="openPrjJoin" class="t_center mgb15" style="display: none; ">
					<a class="btn_style2" id="openInvtGoBtn" ><span data-langcode="CLP960">참여하기</span></a>
					<a class="btn_style2" id="openInvtReqBtn" style="display:none;"><span data-langcode="CLP970">참여요청</span></a>
				</div>
				<div id="inviteJoin">
					<div id="jnngAthzY" class="t_center" style="display: none; padding-top: 15px; border-top: 1px solid #dcdcdc;">
						<a class="btn_style2" id="inviteStts4"><span data-langcode="CLP971">초대장 삭제</span></a>&nbsp;<a class="btn_style1" id="inviteStts3"><span data-langcode="CLP970">참여 요청</span></a>
					</div>
					<div id="jnngAthzN" class="t_center" style="display: none; padding-top: 15px; border-top: 1px solid #dcdcdc;">
						<a class="btn_style2" id="inviteStts2"><span data-langcode="CLP972">거절</span></a>&nbsp;<a class="btn_style1" id="inviteStts1"><span data-langcode="CLP973">수락</span></a>
					</div>
				</div>
				<div id="inviteConf" class="t_center mgb15" style="display: none; ">
					<div class="certi_bx">
						<p class="fnt16" style="margin: 20px 0 20px 0; color: #5f5ab9;">
							<strong data-langcode="CLP974">참여 신청 중입니다.</strong>
						</p>
						<p style="margin-bottom: 18px; line-height: 22px; color: #333;" data-langcode="CLP975">
							프로젝트 관리자가 가입 승인전까지<br>조금만 기다려주세요.
						</p>
						<div class="t_center mgb15" >
							<a class="btn_style2" id="inviteStts7"><span data-langcode="CLP976">신청 취소</span></a>&nbsp;&nbsp;<a class="btn_style2" id="inviteOk"><span data-langcode="H359">확인</span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //초대장확인01 layerpopup -->

<!-- 서비스 제한 layerpopup -->
<div class="layerstyle5" id="serviceBlockPopup" style="display: none; width: 450px; top: 50px; left: 10%; z-index: 9001;">
	<div class="layerstyle5_po">
		<a class="btn_ly_close"><span class="blind" data-langcode="H417">닫기</span></a>
		<div class="floki_wrap">
			<img src="/design2/img_rn/floki/floki_02.png" width="200px" id="flokiAssist"> <img src="/design2/img_rn/floki/floki_03.png" width="180px" style="display: none;" id="flokiCry">
			<h5 class="font-Noto" id="title"></h5>
			<p id="cont"></p>
			<div class="layerstyle5_btm">
				<button class="btnStyle_ht50 wid100" style="display: inline-block;" id="purpleBtn" data-langcode="FL572">서비스 업그레이드</button>
				<button class="btnStyle_ht50 bgwhite wid100" style="display: none;" id="whiteBtn" data-langcode="FL577">로그아웃</button>
				<button class="btnStyle_ht50 wid100" style="display: none;" id="loginBtn" data-langcode="H76">로그인</button>
				<a style="display: none;" id="yes" data-langcode="CLP981">알겠습니다</a>
			</div>
		</div>
	</div>
</div>
<!-- //서비스 제한 layerpopup -->

<!-- 보관함설정 layerpopup(20160118 수정) -->
<div id="setFldLayout" class="layerstyle4" style="display: none; width: 296px; top: 30%; left: 40%; z-index: 1100;">
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3 data-langcode="FL580">보관함 설정</h3>
			<a class="btn_layerstyle4_close" onClick="fn_setFldLayoutCancel();"><img src="/design3/img_rn/btn/btn_layerstyle3_close.gif" alt="닫기"></a>
		</div>
		<div class="layerstyle4_cont" style="padding: 10px 5px 10px 0;">
			<p style="padding: 0 0 10px 16px; font-size: 12px; color: #a2a2a2;" data-langcode="CLP983">이동할 보관함을 선택하세요.</p>
			<div class="folderlist_scroll mCustomScrollbar">
				<ul>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- //보관함설정 layerpopup(20160118 수정) -->
<!-- 보관함만들기 layerpopup -->
<div id="fldLayout" class="layerstyle4" style="display: none; width: 380px; top: 20%; left: 40%; z-index: 1100;">
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3>
				<span class="icon_copy"></span>&nbsp;<span data-langcode="CL929">보관함</span> <span id="fldLayoutStatement" data-langcode="CLP985">만들기</span>
			</h3>
			<a class="btn_layerstyle4_close" onClick="fn_fldLayoutCancel();"><img src="/design3/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
		</div>
		<div class="layerstyle4_cont">
			<div class="foldercolor_wrap" style="padding-bottom: 0px; margin-bottom: 20px;">
				<input data-langcode="CLP986" type="text" id="COLABO_FLD_NM" placeholder="보관함명 입력(최대50자)"> <input type="hidden" id="COLABO_FLD_SRNO" />
			</div>
			<div class="t_center mgt10">
				<a class="btn_style2" onClick="fn_fldLayoutCancel();"><span data-langcode="CD755">취소</span></a>&nbsp;<a class="btn_style1" onClick="fn_colaboFldUpdate();"><span id="fldLayoutButton" data-langcode="CLP985">만들기</span></a>
			</div>
		</div>
	</div>
</div>
<!-- //보관함만들기 layerpopup -->
<!-- 작성중나가기 layerpopup -->
<div id="editing" class="layerstyle1_type2" style="display: none; z-index: 1200; top: 200px; left: 250px;">
	<div class="layerstyle1_po">
		
		<div class="layerstyle1_cont">
			<p data-langcode="CLP987">작성이 완료되지 않았습니다. 중단하고 이동하시겠습니까?</p>
		</div>
		<div class="lp_btn_wrap">
			<a class="btn_style2" id="stay"><span data-langcode="CLP988">머물기</span></a> <a class="btn_style1" id="out"><span data-langcode="CLP989">이동하기</span></a>
		</div>
	</div>
</div>
<!-- //작성중나가기 layerpopup -->
<!-- 선택중나가기 layerpopup -->
<div id="copy-exit" class="layerstyle1_type2" style="display: none; z-index: 1200; top: 200px; left: 250px;">
	<div class="layerstyle1_po">
		<div class="layerstyle1_cont">
			<p data-langcode="CLP990">선택된 프로젝트가 있습니다. 취소하시겠습니까?</p>
		</div>
		<div class="lp_btn_wrap">
			<a class="btn_style2" id="stay"><span data-langcode="CD755">취소</span></a> <a class="btn_style1" id="out"><span data-langcode="H359">확인</span></a>
		</div>
	</div>
</div>
<!-- //선택중나가기 layerpopup -->
<!-- 프로젝트파일함 layerpopup -->
<div id="fileListLayer" class="layerstyle4" style="width: 645px; position: fixed; top: 100px; left: 30%; z-index: 1100; display: none;">
	<input type="hidden" id="file_colabo_srno" />
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3>
				<span class="icon_file"></span>&nbsp;<span id="fileListName" data-langcode="CL612">전체&nbsp;파일</span>
			</h3>
			<a id="close" class="btn_layerstyle4_close"><img src="/design3/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
		</div>
		<div class="layerstyle4_cont" style="min-height: 550px;">
			<!-- 파일명/등록자명 검색 -->
			<div class="name_search_wrap">
				<span class="ns_input_box"><input data-langcode="CLP992" type="text" placeholder="파일명, 등록자명으로 검색이 가능합니다."></span>
				<a class="file_txt on" data-langcode="CLP993">문서</a><a class="file_img" data-langcode="CD745">이미지</a>
			</div>
			<!-- //파일명/등록자명 검색 -->
			<!-- 파일목록 -->
			<div>
				<!-- 내려받기/삭제 -->
				<div class="listb_smry_wrap">
					<!-- 20160129 수정 -->
					<div id="file_list_select" class="smry_tit">
						<span class="bul" data-langcode="CLP995">참여중인 프로젝트의 전체파일</span>
						<ul style="display: none; z-index: 1000;">
							<li value="1" data-langcode="CLP995">참여중인 프로젝트의 전체파일</li>
							<li value="2" data-langcode="CLP997">내가 올린 파일</li>
							<li value="3" data-langcode="CLP998">내가 지정되어 공유된 파일</li>
						</ul>
					</div>
					<!-- //20160129 수정 -->
					<div class="filedtbtn">
						<a class="down" data-langcode="CLP999">내려받기</a>
						<!-- &nbsp;|&nbsp;<a class="del">삭제</a> -->
					</div>
				</div>
				<!-- //내려받기/삭제 -->
				<!-- 문서목록 -->
				<div id="file_file_list" class="filebox_sctb_wrap">
					<table class="filebox_sctb_th" summary="">
						<caption></caption>
						<colgroup>
							<col style="width: 35px;" />
							<col style="width: 330px;" />
							<col />
						</colgroup>
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col" data-langcode="CLP1000">파일명</th>
								<th scope="col" data-langcode="CLP1001">등록정보</th>
							</tr>
						</thead>
					</table>
					<div id="select_file_view" class="filebox_scroll_wrap">
						<!-- 파일없을때 class 추가 nosrch_file_bx -->
						<!-- 파일없음 -->
						<div class="nosrch_file" data-langcode="CLP1002">파일이 존재하지 않습니다.</div>
						<!-- //파일없음 -->
						<table class="filebox_sctb_tb" summary="">
							<caption></caption>
							<colgroup>
								<col style="width: 35px;" />
								<col style="width: 330px;" />
								<col />
							</colgroup>
							<tbody id="file-box-list">
							</tbody>
						</table>
					</div>
				</div>
				<!-- //문서목록 -->
				<!-- 이미지목록 -->
				<div id="img_file_list" class="filebox_sctbimg_wrap" style="display: none;">
					<ul>
					</ul>
				</div>
				<!-- //이미지목록 -->
				<!-- 하단 버튼 -->
				<div class="t_center" style="display: none;">
					<a class="btn_style1"><span style="min-width: 37px;" data-langcode="CLP1003">선택</span></a> <a class="btn_style2"><span style="min-width: 37px;" data-langcode="CD755">취소</span></a>
				</div>
				<!--// 하단 버튼 -->
			</div>
			<!-- //파일목록 -->
			<!-- 파일상세 -->
			<div id="file_detail_view" class="file_detail_view" style="display: none;">
				<dl>
					<dt>
						<a class="bul left" data-langcode="CLP1195">목록으로</a>
					</dt>
					<dd style="display: block;">
						<a id="goToPostBtn1" class="goWorkFlow" style="margin-bottom: 10px; margin-top: 10px;" data-langcode="CD757">이곳을 클릭하여 해당 글로 이동할 수 있습니다.</a>
					</dd>
					<dd class="fdv_cont">
						<div class="left">
							<img id="f_d_file_type_img" src="/design3/img_rn/ico/file_icon_AI.png" alt="AI" style="cursor: pointer;">
							<em class="doc_drm" style="display:none;"></em>
							<span class="filename" id="f_d_file_type_size" style="cursor: pointer;"><strong></strong>
							<em></em>
							</span>
						</div>
						<div class="right">
							<div class="filedtbtn">
								<a class="down" id="f_d_down" data-langcode="action.download">다운로드</a>
								<!-- &nbsp;|&nbsp;<a class="del">삭제</a> -->
							</div>
						</div>
					</dd>
					<dd class="fdv_ft">
						<div class="left" id="f_d_rgsr_nm">
							<span data-langcode="CLP1006">등록자</span>&nbsp;:&nbsp;&nbsp;<span class="txt_gray">|&nbsp;</span>
						</div>
						<div class="right" id="f_d_rgsn_dttm"><span data-langcode="DCL182">등록일자</span>&nbsp;:&nbsp;</div>
					</dd>
				</dl>
				<dl>
					<dt>
						<span class="bul down" data-langcode="CLP1008">공유된 프로젝트</span>
					</dt>
					<dd class="list_scroll_bx" id="f_d_share_colabo">
						<ul>
							<!-- <li><a>오픈보드 그린메시지 발송기능 관련 문의내역</a></li> -->
						</ul>
					</dd>
				</dl>
			</div>
			<!-- //파일상세 -->
		</div>
	</div>
	<!-- //팝업 컨텐츠 -->
</div>
<!-- //프로젝트파일함 layerpopup -->
<!-- 새프로젝트 layerpopup -->
<div id="oneToOneQuest" class="layerstyle4" style="left: 50%; top: 80px; width: 556px; display: none; z-index: 13003; margin-left: -260px;">
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3>
				<span class="icon_copy"></span>&nbsp;<span data-langcode="FL928">1:1 문의하기</span>
			</h3>
			<a class="btn_layerstyle4_close" id="close"><img src="/design3/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
		</div>
		<div class="layerstyle4_cont">
			<div class="new_prj" style="padding-top: 5px; padding-bottom: 17px;">
				<div class="prj_write">
					<div class="textareabox">
						<textarea id="oneToOneCntn" class="placeholder_line" cols="" rows="" placeholder="무엇을 도와드릴까요?" data-langcode="CLP1010"></textarea>
					</div>
				</div>
				<!-- 
				<div class="addhelp_file">
					<strong class="btcolor"><a>···파일 첨부하기</a></strong>
					<div class="addfile"><span>1대1문의남기기.pdf</span><a title="del"></a></div>
				</div>
				 -->
				<!-- 20160318 수정 -->
				<div class="addhelp_list">
					<a class="hl_view" id="oneToOneQuestHistory" data-langcode="CLP1011">문의이력보기</a> <a class="helptxt" href="http://support.flow.team" target="_blank" data-langcode="FL575">도움말</a>
				</div>
				<!-- //20160318 수정 -->
			</div>
			<div class="t_center">
				<a id="cancel" class="btn_style2"><span data-langcode="CD755">취소</span></a>&nbsp;<a id="save" class="btn_style1"><span data-langcode="CLP1013">보내기</span></a>
			</div>
		</div>
	</div>
</div>
<!-- //새프로젝트 layerpopup -->
<!-- 관리자 가입승인 설정  layerpopup -->
<div id="groupAuthSetLayout" class="layerstyle4" style="display: none; width: 430px; top: 30%; left: 40%; z-index: 1000;">
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3>
				<span class="icon_alarm"></span>&nbsp;<span data-langcode="CLP1014">가입승인 설정</span>
			</h3>
			<a class="btn_layerstyle4_close" onClick="fn_groupAuthSetLayoutCancel();"><img src="/design3/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
		</div>
		<div class="layerstyle4_cont">
			<div class="n_write_wrap" style="margin-top: 0; border: 0px;">
				<label><input type="radio" name="JNNG_ATHZ_DSNC" value="0"> <span data-langcode="CLP1015">가입 후 즉시 이용</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label>
				<input type="radio" name="JNNG_ATHZ_DSNC" value="1"> <span data-langcode="CLP1016">관리자 승인 후 이용</span></label>
			</div>
			<div class="groupDesc" style="height: 55px; border: 1px solid #dcdcdc !important; padding: 10px; margin-top: 25px; margin-bottom: 25px; color: #8E8E8E;"></div>
			<div class="t_center">
				<a class="btn_style2" onclick="fn_groupAuthSetLayoutCancel();"><span data-langcode="CD755">취소</span></a>&nbsp;<a class="btn_style1" onclick="fn_setGroupAuth()"><span data-langcode="CT927">저장</span></a>
			</div>
		</div>
	</div>
</div>
<!-- //알림설정 layerpopup -->



<!-- 플로우 기업용 팝업 -->
<div id="flowBusinessView" class="layerstyle4" style="display: none; top: 250px; left: 40%; z-index: 1000;">
	<div class="pop_wrap">
		<img src="/design3/img/business_update.jpg" width="480px" usemap="#imgmap" alt="">
		<map name="imgmap">
			<area shape="rect" id="close" onmouseover="document.body.style.cursor='pointer';" onmouseout="document.body.style.cursor='default';" coords="440,15,465,40" alt="닫기" data-langcode="H417">
			<area shape="rect" id="changeNoti" onmouseover="document.body.style.cursor='pointer';" onmouseout="document.body.style.cursor='default';" coords="80,540,335,580" alt="변경안내 글" data-langcode="CLP1019">
			<area shape="rect" id="busiIntro" onmouseover="document.body.style.cursor='pointer';" onmouseout="document.body.style.cursor='default';" coords="250,540,400,580" alt="기업용버전 소개" data-langcode="CLP1020">
			<area shape="rect" id="noAgainOpen" onmouseover="document.body.style.cursor='pointer';" onmouseout="document.body.style.cursor='default';" coords="20,610,100,620" alt="다시보지 않기" data-langcode="CLP1021">
		</map>
	</div>
</div>
<!-- 플로우업데이트안내 layerpopup -->
<div id="flowNotiView" class="flowupdt_lypop" style="display: none; top: 200px; left: 50%; z-index: 1000;">
	<div class="flowupdt_bg_top">
		<a><img id="FLOW_NOTI_CLOSE" src="/design3/img_rn/btn/btn_pfpop_close.png" alt=""></a>
	</div>
	<div class="flowupdt_txt_btm">
		<h4 id="FLOW_NOTI_TTL" data-langcode="CLP1022">플로우 업데이트 안내</h4>
		<p id="FLOW_NOTI_CNTN" data-langcode="CLP1023">
			플로우 업데이트 소식을 알려드립니다.<br>상세 내용은 아래 버튼을 눌러 확인하세요!
		</p>
		<a id="FLOW_NOTI_BTN_NM" data-langcode="CLP1024">바로 확인하기</a>
	</div>
	<div class="nomore">
		<label><input type="checkbox" id="FLOW_NOTI_NOAGAIN">&nbsp;<span data-langcode="CLP1025">다시 보지 않기</span></label>
	</div>
</div>
<!-- //플로우업데이트안내 layerpopup -->
<!-- 리액션확인 layerpopup -->
<div id="reactionList" class="layerstyle4 " style="display: none; width: 410px; top: 200px; left: 40%; z-index: 1001;">
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3 data-langcode="CLP954">리액션 확인</h3>
			<a id="close" class="btn_layerstyle4_close"><img src="/design3/img_rn/btn/btn_layerstyle3_close.gif" alt="닫기"></a>
		</div>
		<div class="layerstyle4_cont mCustomScrollbar" style="padding-bottom: 30px; height: 400px;">
			<!-- total -->
			<div class="emoti_total">
				<strong id='EMT_CNT' data-langcode="CLP1026">총 5</strong> <strong id="EMT_CD_1" style='display: none;'><img src="/design3/img_rn/emo/emoti_s_01.png?1" alt="">&nbsp;&nbsp;<span id="EMT_CD_1_CNT">3</span></strong> <strong id="EMT_CD_2" style='display: none;'><img src="/design3/img_rn/emo/emoti_s_02.png?1"
					alt="">&nbsp;&nbsp;<span id="EMT_CD_2_CNT">3</span></strong> <strong id="EMT_CD_3" style='display: none;'><img src="/design3/img_rn/emo/emoti_s_03.png?1" alt="">&nbsp;&nbsp;<span id="EMT_CD_3_CNT">3</span></strong> <strong id="EMT_CD_4" style='display: none;'><img
					src="/design3/img_rn/emo/emoti_s_04.png?1" alt="">&nbsp;&nbsp;<span id="EMT_CD_4_CNT">3</span></strong> <strong id="EMT_CD_5" style='display: none;'><img src="/design3/img_rn/emo/emoti_s_05.png?1" alt="">&nbsp;&nbsp;<span id="EMT_CD_5_CNT">3</span></strong>
			</div>
			<!-- //total -->
			<!-- 리액션확인 -->
			<div class="emoti_list">
				<ul>
				</ul>
			</div>
			<!-- //리액션확인 -->
		</div>
	</div>
</div>
<!-- //리액션확인 layerpopup -->
<!-- 20161020 (이용 중지 팝업) -->
<div id="userRestrictPopup" class="layerstyle3" style="display: none; z-index: 9100; top: 150px; left: 50%; margin-left: -225px; width: 450px;">
	<div class="flowbiz_pop_wrap" style="padding-top: 50px; padding-bottom: 30px;">
		<div class="t_center">
			<img src="/design3/img_rn/ico/comm_pop_img2.png" alt="">
		</div>
		<a class="close" onclick="fn_useNot();"></a>
		<p class="bnrtxt" style="text-align: center;" data-langcode="CLP1027">
			'이용 중지' 상태로 설정되어,<br>플로우 이용이 불가능합니다.
		</p>
		<span class="api_pop_btn2"><span id="managerList"></span> <span data-langcode="CLP1028">관리자에게 문의하세요.</span></span>
	</div>
</div>
<!-- //20161020 (제한팝업) -->
<div id="useRestrictMngrPopup" class="layerstyle3" style="display: none; z-index: 9100; top: 150px; left: 50%; margin-left: -225px; width: 450px;">
	<div class="flowbiz_pop_wrap" style="padding-top: 50px; padding-bottom: 30px;">
		<div class="t_center">
			<img src="/design3/img_rn/ico/comm_pop_img1.png" alt="">
		</div>
		<a class="close"></a>
		<p class="bnrtxt" style="text-align: center;" data-langcode="CLP1034">
			플로우 사용자 1명만<br>무료 이용 가능합니다.
		</p>
		<p style="margin-bottom: 25px; line-height: 22px; text-align: center; font-weight: bold;">
			<span data-langcode="CLP1030">기업용 버전 업그레이드로</span><br>
			<span style="color: #4c80d6;"><span id="restrictUserCnt"></span><span data-langcode="CD782">명</span></span> <span data-langcode="CLP1032">모두 이용해 보세요!</span>
		</p>
		<a class="api_pop_btn2" onClick="fn_businessUpdate();" data-langcode="FL572">서비스 업그레이드</a>
	</div>
</div>
<!-- 20161020 (제한팝업) -->
<div id="useRestrictPopup" class="layerstyle3" style="display: none; z-index: 9100; top: 150px; left: 50%; margin-left: -225px; width: 450px;">
	<div class="flowbiz_pop_wrap" style="padding-top: 50px; padding-bottom: 30px;">
		<div class="t_center">
			<img src="/design3/img_rn/ico/comm_pop_img1.png" alt="">
		</div>
		<a class="close"></a>
		<p class="bnrtxt" style="text-align: center;" data-langcode="CLP1034">
			플로우 사용자 1명만<br>무료 이용 가능합니다
		</p>
		<p style="margin-bottom: 25px; line-height: 22px; text-align: center; font-weight: bold;">
			<span data-langcode="CLP1035">기업용버전에서 </span><span style="color: #4c80d6;"><span id="restrictUserCnt"></span><span data-langcode="CD782">명</span></span> 
			<span data-langcode="CLP1036">모두 이용하세요!</span>
		</p>
		<a class="api_pop_btn2" style="background-color: #5f5ab9;"><span data-langcode="CLP1037">게스트용 계속 사용</span><br>
		<span style="font-weight: normal;"><span id="grcPeriod"></span></span></a>
		<div id="busunessInto" class="t_center">
			<a class="link" onClick="fn_businessUpdate();" data-langcode="FL572">서비스 업그레이드</a>&nbsp;&nbsp;&nbsp;<a id="mngrSet" class="link" onClick="fn_mngrSetMove();" data-langcode="CLP1039">관리자설정 메뉴 이동</a>
		</div>
	</div>
</div>
<!-- //20161020 (제한팝업) -->
<!-- 검색 제한 팝업 -->
<div id="restrictPopUp" class="layerstyle3" style="display: none; z-index: 9100; top: 150px; left: 50%; margin-left: -225px; width: 450px;">
	<div class="flowbiz_pop_wrap" style="padding-top: 50px; padding-bottom: 30px;">
		<div class="t_center">
			<img src="/design3/img_rn/ico/comm_pop_img6.png" alt="">
		</div>
		<a class="close" onClick="fn_restrictPopUpClose();"></a>
		<p class="bnrtxt" style="text-align: center;" data-langcode="CLP1040">
			게스트용에서는<br>3개월 내 자료만 조회가능합니다.
		</p>
		<p style="margin-bottom: 25px; line-height: 22px; text-align: center; font-weight: bold;">
			<span data-langcode="CLP1050">기업용 버전으로 업그레이드 하시고,</span><br>
			<span style='color: blue' data-langcode="CLP1051">기간제한 없는 무제한 조회/다운로드</span> <span data-langcode="CLP1052">해보세요.</span>
		</p>
		<!-- <a class="api_pop_btn2" onClick="fn_businessVerIntro();">서비스 업그레이드</a>  --><a class="api_pop_btn" onClick="fn_businessVerIntro();" data-langcode="FL572">서비스 업그레이드</a>
	</div>
</div>
<!-- 회사 제한 팝업 -->
<div id="cmnmRestrictPopUp" class="layerstyle3" style="display: none; z-index: 9100; top: 150px; left: 50%; margin-left: -225px; width: 450px;">
	<div class="flowbiz_pop_wrap" style="padding-top: 50px; padding-bottom: 30px;">
		<div class="t_center">
			<img src="/design3/img_rn/ico/comm_pop_img3.png" alt="">
		</div>
		<a class="close" onClick="fn_cmnmRestrictPopUpClose();"></a>
		<p class="bnrtxt" style="text-align: center;" data-langcode="CLP1054">
			'회사 전체 직원' 기능은<br>기업용 전용 기능입니다.
		</p>
		<p style="margin-bottom: 25px; line-height: 22px; text-align: center; font-weight: bold;">
			<span data-langcode="CLP1055">기업용 버전으로 업그레이드하고,</span><br>
			<span style='color: red' data-langcode="CLP1056">직원 자동 입사/퇴사관리 연동</span><span data-langcode="CLP1057">을 경험해보세요.</span>
		</p>
		<!-- <a class="api_pop_btn2" style="display: none" onClick="fn_businessVerIntro();">서비스 업그레이드</a> --> <a class="api_pop_btn" onClick="fn_businessVerIntro();" data-langcode="FL572">서비스 업그레이드</a>
	</div>
</div>
<!-- 업로드 제한 팝업 -->
<div id="uploadRestrictPopUp" class="layerstyle3" style="display: none; z-index: 9100; top: 100px; left: 50%; margin-left: -225px; width: 450px;">
	<div class="flowbiz_pop_wrap" style="padding-top: 50px; padding-bottom: 30px;">
		<div class="t_center">
			<img src="/design3/img_rn/ico/comm_pop_img4.png?1" alt="flow business">
		</div>
		<a class="close" onClick="fn_uploadRestrictPopUpClose();"></a>
		<p class="bnrtxt" style="text-align: center;" data-langcode="CLP1058">
			게스트용에서는<br>1회 20MB만 등록가능합니다.
		</p>
		<p style="margin-bottom: 25px; line-height: 22px; text-align: center; font-weight: bold;">
			<span data-langcode="CLP1050">기업용 버전으로 업그레이드하고,</span><br>
			<span style='color: red' data-langcode="CLP1060">한번에 500MB씩</span> <span data-langcode="CLP1061">편리하게 등록하세요.</span>
		</p>
		<a class="api_pop_btn2" onClick="fn_businessVerIntro();" style="display: none" data-langcode="FL572">서비스 업그레이드</a> 
		<a class="api_pop_btn" onClick="fn_businessVerIntro();" data-langcode="FL572">서비스 업그레이드</a>
	</div>
</div>
<!-- 다운로드 제한 팝업 -->
<div id="downloadRestrictPopUp" class="layerstyle3" style="display: none; z-index: 9100; top: 100px; left: 50%; margin-left: -225px; width: 450px;">
	<div class="flowbiz_pop_wrap" style="padding-top: 50px; padding-bottom: 30px;">
		<div class="t_center">
			<img src="/design3/img_rn/ico/comm_pop_img5.png?1" alt="flow business">
		</div>
		<a class="close" onClick="fn_downloadRestrictPopUpClose();"></a>
		<p class="bnrtxt" style="text-align: center;" data-langcode="CLP1040">
			게스트용에서는<br>3개월 내 자료만 조회가능합니다.
		</p>
		<p style="margin-bottom: 25px; line-height: 22px; text-align: center; font-weight: bold;">
			<span data-langcode="CLP1050">기업용 버전으로 업그레이드 하시고,</span><br>
			<span style='color: blue' data-langcode="CLP1051">기간제한 없는 무제한 조회/다운로드</span> <span data-langcode="CLP1052">해보세요.</span>
		</p>
		<a class="api_pop_btn2" onClick="fn_businessVerIntro();">서비스 업그레이드</a> <a class="api_pop_btn" onClick="fn_businessVerIntro();" data-langcode="FL572">서비스 업그레이드</a>
	</div>
</div>
<!-- //20161004 수정(일반사용자 popup) -->
<!-- 리뷰유도팝업 -->
<div id="reviewPopUp" class="layerstyle3" style="display: none; z-index: 1100; top: 150px; left: 50%; margin-left: -225px; width: 400px;">
	<div class="flowbiz_pop_wrap" style="min-height: 215px; padding-top: 40px; padding-bottom: 35px;">
		<!-- <a class="close"></a> -->
		<p style="text-align: center; font-size: 40px; color: #5f5ab9;">플로우!</p>
		<p style="margin-bottom: 20px; text-align: center; font-size: 28px; color: #111;" data-langcode="CLP1063">
			실제로 업무에<br>도움이 되고 계신가요?
		</p>
		<a id="ok" class="api_pop_btn2" style="width: 350px; background-color: #5f5ab9;" data-langcode="CLP1064">네, 만족합니다!</a>
		<div class="t_center">
			<a id="no" class="link type2" data-langcode="CLP1065">아니요, 부족해요</a>
		</div>
	</div>
</div>
<!-- //리뷰유도팝업 -->
<!-- 의견남기기 layerpopup -->
<div id="opinionWrite" class="layerstyle4" style="width: 420px; top: 100px; left: 35%; z-index: 1100; display: none;">
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3>
				<span class="icon_file"></span>&nbsp;<span data-langcode="CLP1066">의견 남기기</span>
			</h3>
			<a class="btn_layerstyle4_close" id="opinionWriteClose"><img src="/design3/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
		</div>
		<div class="layerstyle4_cont">
			<div class="rv_txtbx">
				<textarea id="OPINION_CNTN" cols="" rows="" placeholder="플로우에 대해 얘기해 주세요." style="height: 160px;" data-langcode="CLP1067"></textarea>
			</div>
			<a id="opinionSend" class="api_pop_btn2" style="margin-bottom: 3px; background-color: #5f5ab9;" data-langcode="CLP1068">의견 제출하기</a>
		</div>
	</div>
</div>
<!-- //의견남기기 layerpopup -->
<!-- 리뷰남기기 layerpopup -->
<div id="reviewWrite" class="layerstyle4" style="width: 420px; top: 100px; left: 38%; z-index: 1100; display: none;">
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3>
				<span class="icon_file"></span>&nbsp;<span data-langcode="CLP1069">리뷰 남기기</span>
			</h3>
			<a class="btn_layerstyle4_close" id="reviewWriteClose"><img src="/design3/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
		</div>
		<div class="layerstyle4_cont">
			<dl class="rv_txtbx">
				<dt data-langcode="CLP1070">평가하기</dt>
				<dd id="evaluation" class="starbx" REVIEW_POINT="5">
					<a data="1" class="on"></a><a data="2" class="on"></a><a data="3" class="on"></a><a data="4" class="on"></a><a data="5" class="on"></a>
				</dd>
			</dl>
			<dl class="rv_txtbx">
				<dt data-langcode="CLP1071">한마디하기</dt>
				<dd>
					<div class="rv_txtbx">
						<textarea id="REVIEW_CNTN" cols="" rows="" placeholder="플로우에 대해 얘기해 주세요." style="height: 150px;" data-langcode="CLP1067"></textarea>
					</div>
				</dd>
			</dl>
			<p style="margin-bottom: 20px; font-size: 12px;" data-langcode="CLP1073">남겨주신 리뷰는 플로우 시작 시의 추천 리뷰에 활용됩니다.</p>
			<a class="api_pop_btn2" id="reviewSend" style="margin-bottom: 3px; background-color: #5f5ab9;" data-langcode="CLP1074">리뷰 제출하기</a>
		</div>
	</div>
</div>
<!-- //리뷰남기기 layerpopup -->
<!-- 리뷰완료-내용유 layerpopup -->
<div id="reviewComplete" class="layerstyle4" style="width: 420px; top: 100px; left: 38%; z-index: 1100; display: none;">
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3>
				<span class="icon_file"></span>&nbsp;<span data-langcode="CLP1075">리뷰 완료</span>
			</h3>
			<a class="btn_layerstyle4_close" id="reviewCompleteClose"><img src="/design3/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
		</div>
		<div class="layerstyle4_cont">
			<dl class="rv_txtbx">
				<dt class="complt" data-langcode="CLP1076">리뷰 남겨주셔서 감사합니다!</dt>
				<dd id="evaluation" class="starbx">
					<a data="1" class="on"></a><a data="2" class="on"></a><a data="3" class="on"></a><a data="4" class="off"></a><a data="5" class="off"></a> <br> 
					<span id="evaluationTxt" data-langcode="CLP1077">강력 추천해요!</span>
				</dd>
			</dl>
			<br>
			<div class="rv_txtbx2">
				<pre id="REVIEW_CNTN" style="word-break: nowrap; white-space: nowrap;"></pre>
			</div>
			<p style="margin-top: 20px; font-size: 12px; text-align: center;" data-langcode="CLP1078">우측 상단의 메뉴에서도 리뷰를 다시 남길 수 있습니다!</p>
		</div>
	</div>
</div>
<!-- //리뷰완료-내용유 layerpopup -->
<!-- 회사로고등록샘플 layerpopup -->
<div id="compLogoLayout" class="layerstyle4" style="width: 500px; top: 100px; left: 40%; z-index: 1100; display: none;">
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3>
				<span class="icon_file"></span>&nbsp;<span data-langcode="CLP1079">회사로고 등록 샘플</span>
			</h3>
			<a class="btn_layerstyle4_close" id="compLogoLayoutClose"><img src="/design3/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
		</div>
		<div class="layerstyle4_cont" style="padding: 20px 15px;">
			<img src="/design3/img_rn/bg_ex_complogo.gif" alt="회사로고를 등록하시면 아래와 같이 메인에 적용됩니다." data-langcode="CLP1080">
		</div>
	</div>
</div>
<!-- //회사로고등록샘플 layerpopup -->
<div class="sChatPop" id="wrap" data-viewname="DChattingRoomLayoutView" style="width: 500px; top: 100px; left: 40%; z-index: 1100; display: none;">
	<div id="layerContainer">
		<section class="lyWrap layer_wrap" data-viewname="DMemberSelectView">
			<div class="inner">
				<div class="dimmed"></div>
				<article class="lyContent lyChatMemberAdd" style="width: 380px;" data-viewtype="edge">
					<header>
						<h1 data-langcode="CLP1081">대화상대 초대</h1>
					</header>
					<div class="main">
						<form class="searchLayer gIcon icon-search" data-uiselector="frmSearch">
							<label class="gSrOnly" for="serach">이름</label> <input class="inputSearch" id="serach" type="text" placeholder="채팅방 또는 이름 검색" value="" data-uiselector="txtQuery" data-langcode="FL593">
						</form>
						<div class="memberList" data-uiselector="memberListContainerWrapper">
							<ul class="cShareList" data-uiselector="memberListContainer">
								<li data-viewname="DMemberSelectItemView"><label class="uCheckbox" for="ex_42765940" data-type="type1"> <input name="check" class="checkInput" id="ex_42765940" type="checkbox" data-uiselector="chkMember"> <span class="checkLabel">
											<div class="profile">
												<a class="small" href="#" data-uiselector="profile"> <img width="44" height="44" alt="김수희" src="/design3/chat_img/profile_40x40.png">
												</a>
											</div>
											<div class="nameArea">
												<div class="name" data-langcode="CLP1083">김수희</div>
												<div class="nickname" data-langcode="CLP1084">마드라스체크&nbsp;&nbsp;|&nbsp;&nbsp;과장</div>
											</div>
									</span> <span class="fakeCheck gIcon icon-select01"></span>
								</label></li>				
							</ul>
						</div>
					</div>
					<footer>
						<div class="btnWrap">
							<button class="uButton uButtonDefault -fwBold" type="button" data-height="middle" data-width="small" data-uiselector="btnClose" data-langcode="CD755">취소</button>
							<button class="uButton uButtonDefaultCancel -fwBold" type="button" data-height="middle" data-width="small" data-uiselector="btnInvite" data-langcode="CLP1085">초대</button>
							<!-- class change ::: uButtonDefaultCancel / uButtonPoint -->
							<button class="uButton uButtonPoint -fwBold" type="button" data-height="middle" data-width="small" data-uiselector="btnInvite" data-langcode="CLP1086">268명 초대</button>
							<!-- class change ::: uButtonDefaultCancel / uButtonPoint -->
						</div>
						<button class="btnLyClose gIcon icon-layer-close" type="button" data-uiselector="btnClose">
							<span class="gSrOnly" data-langcode="CLP1087">레이어 닫기</span>
						</button>
					</footer>
				</article>
			</div>
		</section>
	</div>
</div>
<div id="profilePopup" class="prdbx_wrap" style="display: none; top: 10%; left: 10%; width: 400px;padding-bottom: 20px; z-index: 9100;">
	<div class="prof_bx">
		<div class="prof_thumb">
			<span class="bg"></span> <a class="btn_close" id="inviteBoxClose" title="닫기"></a> <img id="PRFL_PHTG" src="" alt="" onerror="this.src='/design3/img_rn/img_photo_null_for_prfl.png'" style="object-fit: cover;">
		</div>
		<div class="prof_info">
			<div class="prof_top">
				<div style="font-weight: bold;white-space: nowrap;text-overflow: ellipsis;overflow: hidden;width: 340px;margin:9px 0;">
					<span id="FLNM" style="color: black;font-size: 24px;"></span><span id="JBCL_NM" style="font-size: 20px;color: #969696;margin-left: 10px;"></span>
				</div>
				<p id="CMNM" style="white-space: nowrap;overflow: hidden;text-overflow: ellipsis;width: 340px;" data-langcode="CLP1088">Madrascheck</p>
				<a id="EDIT" class="ico_mod" style="display: none;"></a>
			</div>
			<div class="prof_cn">
				<p id="EML"></p>
				<p id="CLPH_NO"></p>
				<p id="CMPN_TLPH_NO"></p>
			</div>
			<div class="prof_btn" style="display:none">
				<a id="CHAT" class="btn_prd_sty1_b"><span data-langcode="CLP1089">채팅하기</span></a> <a id="PROFILE_EDIT" class="btn_prd_sty1" style="display: none;"><span style="color: #28272c" data-langcode="CLP1090">프로필 수정</span></a>
			</div>
			<ul class="prof-menu" style="display:none">
				<li><button type="button" class="chat-btn" data-langcode="">채팅하기</button></li>		
				<li id="profileVideoBtn" style="display:none"><button type="button" class="video-btn" data-langcode="">화상회의</button></li>		
				<li id="profileModifyBtn" style="display: none;"><button type="button" data-langcode="">프로필수정</button></li>		
			</ul>
		</div>
	</div>
</div>
<!-- 읽음확인 layerpopup 20170803-->
<div class="layerstyle4 _postCopy_wrap" id="postReadCheckPopup" style="width: 500px; display: none; z-index: 2000;">
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3 data-langcode="CLP1091">읽음확인</h3>
			<a id="postReadCheckCloseBtn" class="btn_layerstyle4_close"><span class="blind" data-langcode="H417">닫기</span></a>
		</div>
		<div class="layerstyle4_cont">
			<!-- [D] 20190220 검색영역 추가 -->
			<div id="srchCheckUser" class="user_search_wrap">
				<span class="srchico"><input  type="text" placeholder="참여자명으로 검색" maxlength="30" data-langcode="CLP1092"><button type="button" title="삭제"></button></span>
			</div>
            <!-- 2020 읽음 확인 [ 읽음 / 읽지 않음 ] 구분 -->
			<div class="top_cl_notice icon2" style="margin-bottom: 0; ">
				<div class="right">
					<div class="sort_ly_wrap" style="">
						<ul>
							<!-- on 클래스 추가 -->
							<li class="on" data-curDttm="read"><label><input value="read" type="checkbox"><span data-langcode="CD763" id="taskRead">읽음<em>(23)</em></span></label></li>
							<li data-curDttm="unread"><label><input value="unread" type="checkbox"><span data-langcode="CL607" id="taskUnRead">읽지않음<em>(12)</em></span></label></li>
						</ul>
					</div>
				</div>
				<!-- //20190417 -->
			</div>
			<div style="display: block;"><!-- [D] 20190220 추가 -->
				<!-- 상단 공지사항 -->

				<!-- //[D] 20190220 검색영역 추가-->
			<!-- scroll 영역 -->
			<!-- <div class="postCopy_scroll" style="padding:20px 0 20px 20px; min-height: 500px; max-height: 500px;">[D] 20190220 추가 -->
			<div class="postCopy_scroll" style="min-height: 500px; max-height: 500px;">
				<p style="padding-top:160px; padding-right:20px; text-align:center; display: none;"><strong style="font-size:16px;color:#58585c;" data-langcode="CLP1093">검색 결과가 존재하지 않습니다.</strong></p>
					<!-- //상단 공지사항 -->
					<!-- 읽음 리스트 -->
					<div id="readCheckUserDiv" style="position: relative; height: 465px;">
					<div id="no_readlist" class="no_chatlist" style="display:none; width: 440px;" data-langcode="CLP1114">검색결과가 없습니다.</div>
						<ul class="rduser_libx">
						</ul>
					</div>
					<!-- //읽음 리스트 -->
				</div>
			</div>
		</div>
	</div>
	<!-- //팝업 컨텐츠 -->
</div>
<!-- //읽음확인 layerpopup -->
<ul id="postReadCheckItem" style="display: none;"> 
	<li>
		<div style="cursor:pointer; width: 38px; height: 38px; border-radius: 40px;margin-top: 16px; border: 1px solid #d3d3d3; display: inline-block; overflow: hidden; vertical-align: middle;">
			<img src="/design3/img_rn/empty_photo_s.png" alt="" onerror="this.src='/design3/img_rn/empty_photo_s.png'" style="width: 40px; height:40px;  transform: translate(-50%, -50%); left: 50%; top: 50%; position: relative; vertical-align: baseline;">
		</div> 
		<div class="profile-info">
			<span id="name" class="name" data-langcode="H331">이름</span>
			<span id="jbclNm" class="rank" data-langcode="" style="margin-left:15px;">직급</span>
			<div class="job"><span id="cmNm" class="cmnm" data-langcode="">S-OIL</span><span id="dvsnNm" class="grade" data-langcode="">정유3팀</span></div>
		</div>
		<div class="btn_right">
			<strong id="readText" data-langcode="CD763">읽음</strong><span id="readDate">2017.06.20 16:15</span>
		</div>
		<!-- @송제섭
		<div style="cursor:pointer; width: 38px; height: 38px; border-radius: 40px;margin-top: 16px; border: 1px solid #d3d3d3; display: inline-block; overflow: hidden; vertical-align: top;">
			<img src="/design3/img_rn/empty_photo_s.png" alt="" onerror="this.src='/design3/img_rn/empty_photo_s.png'" style="width: 40px; height:40px;  transform: translate(-50%, -50%); left: 50%; top: 50%; position: relative; vertical-align: baseline;">
		</div> <span id="name" data-langcode="H331">이름</span>
		<div class="btn_right">
			<strong id="readText" data-langcode="CD763">읽음</strong>&nbsp;<span id="readDate">2017.06.20 16:15</span>
		</div>
		-->
	</li>
</ul>

<!-- 로고등록 layerpopup -->
<div class="layerstyle4" id="uploadLogoPopup" style="display: none; width: 450px; top: 50px; left: 10%; z-index: 1100;">
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3 data-langcode="CLP1098">로고 등록</h3>
			<a class="btn_layerstyle4_close" id="close"><span class="blind" data-langcode="H517">팝업닫기</span></a>
		</div>
		<div class="layerstyle4_cont">
			<div class="pop_logoimg_wrap">
				<h5 class="font-Noto" data-langcode="CLP1100">우리 팀 로고를 등록 하세요!</h5>
				<!-- 이미지첨부전 -->
				<div class="pop_logoimg_cont" id="logoDiv">
					<p>&nbsp;<!-- 이미지를 여기에 끌어다 넣으세요! --></p>
					<a data-langcode="H349">파일 첨부</a>
					<div id="logoDragAndDropDiv" style="cursor: pointer; z-index: 1; position: absolute; top: 0px; width: 100%; height: 100%;"></div>
					<!-- 드래그앤드랍 업로드 -->
					<div class="post_dnd_ly" style="display: none;">
						<div class="post_dnd_ly_po on" style="height: 109px; background-size: 25px; background-position-y: 20px;">
							<div class="status_bar" style="width: 41%;"></div>
							<div class="pctfilenm" style="padding-top: 58px;">
								<strong>41%</strong> <span data-langcode="CLP1102">#콜라보모바일_Ver2.3.0_160105.pdf</span>
							</div>
						</div>
					</div>
				</div>
				<!-- //이미지첨부전 -->
				<!-- 이미지첨부후 -->
				<div class="pop_logoimg_cont2" style="display: none;">
					<img src="/design3/img_rn/bi_flow.png" alt="" style="transform: translateY(-50%); top: 50%; position: relative; max-height: 142px; max-width: 408px;">
				</div>
				<ul class="ico_edit_btn_wrap" style="display: none;">
					<li><a class="ico_logoreipt" id="reUpload" data-langcode="CLP1103">다시등록하기</a></li>
					<li><a class="ico_logodel" id="deleteLogo" data-langcode="CLP1104">로고 삭제</a></li>
				</ul>
				<!-- //이미지첨부후 -->
				<p class="fc_s13c585b5e" id="logoGuide" data-langcode="CLP1105">
					배경이 투명한 이미지를 등록하여 주세요.<br>(최적 사이즈 170*60 / 최대 500KB)
				</p>
			</div>
		</div>
		<div class="layerstyle_btm">
			<a class="btn_style2" id="cancel"><span data-langcode="CD755">취소</span></a>&nbsp;&nbsp;<a class="btn_style1" id="save"><span data-langcode="CT927">저장</span></a>
		</div>
	</div>
</div>
<!-- //로고등록 layerpopup -->
<!-- 팀원초대 layerpopup -->
<div id="teamMemberInvitePopup"  class="center-popup-bg" style="z-index: 1100;display: none;">
	<div class="layerstyle4 center-popup" style="width: 500px;">
		<div class="layerstyle4_po">
			<div class="layerstyle4_title">
				<h3 data-langcode="CL640">직원 초대</h3>
				<a class="btn_layerstyle4_close" id="close"><span class="blind" data-langcode="H517">팝업닫기</span></a>
			</div>
			<div class="layerstyle4_cont">
				<!-- urlcopy -->
				<div class="urlcopy_wrap">
					<p data-langcode="CLP1108">아래 URL을 전달하거나, 이메일을 전달하여 팀원을 초대할 수 있습니다.</p>
					<div class="urlcopy">
						<strong id="teamURL">https://madrascheck.flow.team</strong>
						<button id="teamURLcopy">
							<span class="blind" data-langcode="CLP1109">URL 복사하기</span>
						</button>
					</div>
				</div>
				<!-- //urlcopy -->
				<!-- 이메일목록 -->
				<div class="ivtemail_list_wrap">
					<div class="ivtemail_list" id="inviteEmailList">
						<ul>
							<li><input type="text" maxlength="50" placeholder="example@flow.team"></li>
							<li><input type="text" maxlength="50" placeholder="example@flow.team"></li>
							<li><input type="text" maxlength="50" placeholder="example@flow.team"></li>
							<li><input type="text" maxlength="50" placeholder="example@flow.team"></li>
							<li><input type="text" maxlength="50" placeholder="example@flow.team"></li>
						</ul>
					</div>
				</div>
				<!-- //이메일목록 -->
			</div>
			<div class="layerstyle_btm">
				<a class="btn_style1" id="invite"><span data-langcode="CD780">초대하기</span></a>
			</div>
		</div>
	</div>
</div>
<!-- //팀원초대 layerpopup -->
<!-- 업무 담당자수정 팝업 task-worker-layer -->
<div id="workerAddLayer" class="center-popup-bg" style="z-index: 1100;display: none;">
	<div class="layerstyle4 center-popup" style="width: 556px;">
		<div class="layerstyle4_po">
			<div class="layerstyle4_title">
				<h3>
					<span class="icon_url"></span>&nbsp;<span data-langcode="CD807">담당자 변경</span>
				</h3>
				<a id="workerAddLayerClose" class="btn_layerstyle4_close"><img src="/design3/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
			</div>
			<div class="layerstyle4_cont manager">
				<!-- 담당자 이름 검색영역 -->
				<div class="pr_sch_bx">
					<div class="pr_sch_bx_in">
						<input name="worker-name-search-input" type="text" placeholder="담당자 이름 검색" data-langcode="CLP1112">
					</div>
				</div>
				<!-- //담당자 이름 검색영역 -->
				<div style="padding-bottom:25px">
					<!-- 선택된담당자 -->
					<div id="workerAddSelectedLayer" class="nameBx" style="margin-bottom: 18px; display: block;">
						<!-- workerAddSelectedItemLayer  추가 -->
					</div>
					<div style="display: none;">
						<div id="workerAddSelectedItemLayer" class="nameTag">
							<img src="" alt="" onerror="this.src='/design3/img_rn/img_photo_null32.png'"> <strong data-langcode="CLP1113">이름이름이름</strong>
							<button id="workerDel" style="cursor: pointer;">
								<span class="blind" data-langcode="H381" data-langcode="H381">삭제</span>
							</button>
						</div>
					</div>
					<!-- //선택된담당자 -->
					<!-- 담당자 후보 -->
					<div id="worker-scroll-layer" class="mgb15" style="position: relative; height: 350px; overflow-y: auto;">
						<!-- 20160621 수정 -->
						<ul id="workerAddSelectList" class="aplct_libx" style="padding: 0 20px;">
							<!-- workerAddSelectItemLayer  추가 -->
						</ul>
						<!-- 검색결과 없는경우 -->
						<div id="noResult" class="pr_sch_none" style="display: none;">
							<div class="pr_sch_none_txt" data-langcode="CLP1114">검색결과가 없습니다</div>
						</div>
						<!-- //검색결과 없는경우 -->
					</div>
					<ul style="display: none;">
						<li id="workerAddSelectItemLayer" style="padding-left: 10px;"><img src="/design3/img_rn/empty_photo_s.png" alt="" onerror="this.src='/design3/img_rn/empty_photo_s.png'"> <span id="name"></span>
							<div class="btn_right2">
								<a id="workerAddBtn" class="btn btn_add"><span data-langcode="CLP1003">선택</span></a>
							</div>
						</li>
					</ul>
					<!-- //담당자 후보 -->
					<!-- 하단버튼 영역 -->
					<div class="t_center">
						<a class="btn_style2" id="workerAddLayerCancel"><span data-langcode="CD755">취소</span></a> <a class="btn_style1" id="workerAddLayerOk"><span data-langcode="H359">확인</span></a>
					</div>
					<!-- 하단버튼 영역 -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 업무 담당자수정 팝업 task-worker-layer -->

<!-- 정기과금이용약관 layerpopup -->
<div id="billingTerms" class="center-popup-bg" style="display:none;z-index:14000;">
	<div class="geust_login_pop center-popup" style="width:600px;height:710px;">
		<div class="geust_login_wrap">

			<h1 class="font-Noto" style="margin-top:-20px;font-size:25px;color:#111;" data-langcode="CLP1116">정기과금 이용 약관</h1>

			<div class="termspop_scroll mCustomScrollbar">
				<dl>
					<dt data-langcode="">과금 정책</dt>
					<dd data-langcode="">
						선택한 요금제에 따라서 월간 혹은 연간 과금 형태로 결제가 진행됩니다.
					</dd>
					<dd data-langcode="">
						정확한 결제 정보를 입력하셔야 하며, 결제 정보를 제공할 경우 플로우(또는 플로우가 지정한 결제 대행업체)가 해당 거래에 필요한 결제 금액 전체를 청구할 수 있도록 허가한 것으로 간주합니다. 부가세는 별도로 부과됩니다.
					</dd>
					<dd data-langcode="">
						별도의 취소 의사가 없는한, 선택한 요금제에 과금이 진행됩니다. 취소 시, 결제 중단 처리가 되며 청구할 금액이 남아 있다면 다음달에 과금이 청구됩니다.
					</dd>
					<dd data-langcode="">
						이미 지불이 완료된 금액에 대해서는 환불이 불가합니다. 단, 플로우의 귀책 사유로 인해 잘못된 금액이 결제되었거나 초과 과금이 발생한 경우 환불이 가능합니다.
					</dd>
				</dl>

				<dl>
					<dt data-langcode="">월간 과금</dt>
					<dd data-langcode="">
						매달 정기적으로 이전달 사용금액에 대해서 결제가 진행됩니다.
					</dd>
					<dd>
						 기본요금 이외에 등록된 매월 최대 사용인원을 기준으로 추가요금이 산정됩니다.
					</dd>
					<dd>
						월간 과금에서 연간 과금으로 전환을 지원하지 않습니다.
					</dd>
				</dl>
				
				<dl>
					<dt data-langcode="">연간 과금</dt>
					<dd data-langcode="">
						연간 사용금액에 대해서 선결제가 진행됩니다. 기본요금 이외에 등록된 사용인원을 기준으로 추가요금이 산정됩니다. 만일 연간 과금 결제 이후 추가인원이 늘어날 경우 추가된 인원에 대해서도 과금이 청구됩니다. 연간 과금에서 월간 과금으로 전환을 지원하지 않습니다.
					</dd>
					<dd>
						연간 과금으로 결제 시, 계약 기간 중 서비스 탈퇴 시 위약금이 발생합니다. 위약금은 "월간과금 대비 할인받은 금액 + 남은 기간 동안 지불할 금액의 10%"이며, 위약금에는 Tax가 부과되지 않습니다.
					</dd>
					<dd>
						월간과금 대비 할인받은 금액은 연간과금 계약시 체결한 월 청구금액 기준으로 계산되며, 남은 기간 동안 지불할 금액의 10%는 서비스 탈퇴 신청일부터 이전 30일동안 최대 사용인원 기준으로 계산됩니다. <br>
						위약금 계산 공식은 아래와 같습니다. <br>
						(1) 월간과금 요금제 대비 할인받은 금액 = {사용기간 월 X (월간과금제월요금 - 연간과금제월요금)}<br>
						(2) 남은 기간 동안 지불할 금액의 10% = {연간과금제 월계약금액 X (총계약기간 월-사용기간 월)+(추가사용인원 사용금액)} X 10%<br>
						(3) 위약금 = (1) + (2)
					</dd>

				</dl>
				
				<dl>
					<dt data-langcode="">결제 실패</dt>
					<dd data-langcode="">
						결제 시점에 결제가 실패하면 사용 중인 요금제는 결제중지 처리가 됩니다. 미납액이 발생하는 경우 30일 이상 지속되면 결제실패와 동일하게 처리합니다.
					</dd>
				</dl>
				
				<dl>
					<dt data-langcode="">기타</dt>
					<dd data-langcode="">
						플로우가 지정한 결제 대행업체는 결제 처리를 위해 제공해주신 결제 정보를 수집 및 저장할 수 있으며, 결제 정보는 결제 외 다른 용도로 사용되지 않습니다. 취소 관련 문의는 <a href="mailto:help@flow.team" >help@flow.team </a>또는 1:1 문의하기를 통해 가능합니다.
					</dd>
				</dl>
				

				<dl>
					<dd data-langcode="">
						본 약관에 명시되지 않은 내용은 플로우 <a href="https://flow.team/terms.act" target="serviceTerms">서비스 이용약관</a> 및 <a href="https://flow.team/privacy.act" target="flowPrivacy">개인정보 취급방침</a>을 따릅니다.
					</dd>
				</dl>
				<dl>
					<dd data-langcode="">
						시행일 : 2017년 12월 31일
					</dd>
				</dl>

			</div>
			<button class="btnStyle_ht50" data-langcode="CLP1129">위 내용에 동의합니다.</button>

			<button class="closebtn"><span class="blind" data-langcode="H417">닫기</span></button>
		</div>
	</div>
</div>
<!-- //정기과금이용약관 layerpopup -->

<!-- paymentwall 결제 레이어 -->
<div id="payment-layer" class="center-popup-bg" style="display:none;z-index:13002;">
	<div class="geust_login_pop center-popup" style="width:280px;height:342px;">
		<div id="payment-form-container"></div>
	</div>
</div>
<!-- //paymentwall 결제 레이어 -->

<!-- flowDesktop 업데이트안내 layerpopup -->
<div id="flowDesktopUpdatePopup" class="center-popup-bg" style="z-index: 1000; display: none">
  <div class="flowupdt_lypop center-popup" style="width:320px;height:165px;z-index:1100;align:center;">
  	<div class="flowupdt_txt_btm" style="color:#000000;">
  		<div id="popupTitle" style="font-size: 22px;font-weight:700;" data-langcode="CLP1022">플로우 업데이트 안내</div>
  		<div id="popupContents" style="font-size: 16px;margin-top:20px;margin-bottom:10px;" data-langcode="CLP1131">새로운 버전의 데스크탑 앱<br>업데이트가 확인되었습니다.</div>
  		<a id="downloadLatestDesktopApp" style="margin-top:5px;" data-langcode="H80">다운로드</a>
  		<!--<a id="closeDesktopUpdatePopup" style="margin-top:5px;float:right;width:45%;color:#000000;background-color:#efefef;">닫기</a>-->
  	</div>
  </div>
</div>
<!-- //flowDesktop 업데이트안내 layerpopup -->

<!-- 플로우데스크탑 업데이트안내 layerpopup -->
<div id="flowDesktopNotiView" class="center-popup-bg" style="z-index: 1000; display: none">
	<div class="flowupdt_lypop center-popup" style="z-index: 1002;width:450px;height:430px;">
		<div class="flowupdt_bg_top" style="height:200px;">
			<a><img id="FLOW_DESKTOP_NOTI_CLOSE" src="/design3/img_rn/btn/btn_pfpop_close.png" alt=""></a>
		</div>
		<div class="flowupdt_txt_btm">
			<h4 id="FLOW_DESKTOP_NOTI_TTL" data-langcode="CLP1022">플로우 업데이트 안내</h4>
			<p id="FLOW_DESKTOP_NOTI_CNTN" data-langcode="CLP1023">
				플로우 업데이트 소식을 알려드립니다.<br>상세 내용은 아래 버튼을 눌러 확인하세요!
			</p>
			<a id="FLOW_DESKTOP_NOTI_BTN_NM" data-langcode="CLP1024">바로 확인하기</a>
		</div>
	</div>
</div>
<!-- //플로우데스크탑 업데이트안내 layerpopup -->

<!-- 제한 layerpopup -->
<div id="apprFailLayer" class="layerstyle5" style="display:none;width:450px;top:50px;left:10%;z-index:1100;">
	<div class="layerstyle5_po">
		<a class="btn_ly_close"><span class="blind" data-langcode="H417">닫기</span></a>
		<div class="floki_wrap">
			<img src="/design3/img_rn/floki/floki_03.png" width="180px">
			<h5 class="font-Noto" data-langcode="CLP1134">카드 결제 실패로<br>무료 버전으로 전환 되었습니다.</h5>
			<p data-langcode="CLP1135">재결제 후, 유료버전 시작이 가능합니다.</p>

			<div class="layerstyle5_btm">
				<button class="btnStyle_ht50 wid100" style="display: inline-block;" data-langcode="FL543">결제하기</button>
				<!-- <button class="btnStyle_ht50 bgwhite wid100" style="display: none;">로그아웃</button> -->
				<!-- <a style="display: inline-block;">알겠습니다</a> -->
			</div>
		</div>
	</div>
</div>
<!-- //제한 layerpopup -->

<!-- 글/댓글 작성 권한 설정 layerpopup -->
<div id="writeAuthSetLayout"class="center-popup-bg"  style="display:none;z-index:1000;">
	<div class="layerstyle4 center-popup" style="width:600px;z-index:1100;background-color:#ffffff;">
		<div class="layerstyle4_po">
			<div class="layerstyle4_title">
				<h3><span class="icon_alarm"></span>&nbsp;<span data-langcode="CD715">글/댓글 작성 권한 설정</span></h3>
				<a id="close" class="btn_layerstyle4_close"><img src="/design3/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
			</div>
			<div class="layerstyle4_cont">

				<div class="n_write_wrap" style="margin-top:0;border-top:1px solid #dcdcdc !important;">
					<table class="tbl_write4" summary="" style="width:560px; margin: 0 auto;">
						<caption></caption>
						<tbody id="authoritySeparate" style="display: none;">
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;line-height:22px;">
								<label style="padding-bottom:5px;"><input type="radio" name="MNGR_WR_YN" id="MNGR_WR_N" value="N">&nbsp;&nbsp;<span data-langcode="CLP1138">전체 작성 가능</span><span style="color:blue" data-langcode="CLP1143">(기본)</span></label><br>
								<label style="padding-bottom:5px;"><input type="radio" name="MNGR_WR_YN" id="MNGR_WR_Y" value="Y">&nbsp;&nbsp;<span data-langcode="CLP1139">관리자 + 글 작성 본인만 조회 가능</span></label><br>
							</td>
						</tr>
						<tr>
							<th scope="row" style="padding-top:10px;padding-bottom:10px;font-size:13px;font-weight:normal;">
								<span  style="padding-bottom:5px;" data-langcode="CLP1140">'프로젝트 관리자만 작성 가능' 설정시, 글/댓글 작성은 프로젝트 관리자만 가능합니다.</span><br>
								<span  style="padding-bottom:5px;" data-langcode="CLP1141">기존에 작성된 글 또는 댓글의 수정, 삭제기능이 제한됩니다.<br></span>
							</th>
						</tr>
						</tbody>
						<tbody id="authoritySeparateDev" style="display: none;">
							<tr>
								<td style="padding-top:10px;padding-bottom:10px;line-height:22px;">
									<div>
										<strong>글</strong>
									</div>
									<label style="padding-bottom:5px;"><input type="radio" name="MNGR_WR_YN" id="MNGR_WR_N" value="N" checked>&nbsp;&nbsp;<span data-langcode="CLP1138">전체 작성 가능</span></label><br>
									<label style="padding-bottom:5px;"><input type="radio" name="MNGR_WR_YN" id="MNGR_WR_Y" value="Y">&nbsp;&nbsp;<span data-langcode="CLP1139">프로젝트 관리자만 작성 가능</span></label><br>
								</td>
							</tr>
							<tr>
								<td style="padding-top:10px;padding-bottom:10px;line-height:22px;">
									<div>
										<strong>댓글</strong>
									</div>
									<label style="padding-bottom:5px;"><input type="radio" name="MNGR_WR_YN" id="MNGR_WR_N" value="N" checked>&nbsp;&nbsp;<span data-langcode="CLP1138">전체 작성 가능</span></label><br>
									<label style="padding-bottom:5px;"><input type="radio" name="MNGR_WR_YN" id="MNGR_WR_Y" value="Y">&nbsp;&nbsp;<span data-langcode="CLP1139">관리자 + 글 작성 본인만 조회 가능</span></label><br>
								</td>
							</tr>
							<tr>
								<th scope="row" style="padding-top:10px;padding-bottom:10px;font-size:13px;font-weight:normal;">
									<span  style="padding-bottom:5px;" data-langcode="CLP1140">글과 댓글을 작성할 수 있는 사용자를 관리할 수 있습니다.</span>
								</th>
							</tr>
							</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //글/댓글 작성 권한 설정 layerpopup -->

<!-- 글조회 권한 설정 layerpopup -->
<div id="postSearchAuthPopup" class="center-popup-bg" style="display:none;z-index:1000;">
	<div class="layerstyle4 center-popup" style="width:600px;z-index:1100;background-color:#ffffff;">
		<div class="layerstyle4_po">
			<div class="layerstyle4_title">
				<h3><span class="icon_alarm"></span>&nbsp;<span data-langcode="CLP1142">글조회 권한 설정</span></h3>
				<a id="close" class="btn_layerstyle4_close"><img src="/design3/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
			</div>
			<div class="layerstyle4_cont">
				<div class="n_write_wrap" style="margin-top:0;border-top:1px solid #dcdcdc !important;">
					<table class="tbl_write4" summary="" style="width:560px;">
						<caption></caption>
						<tbody>
						<tr>
							<td style="padding-top:10px;padding-bottom:10px;line-height:22px;">
								<label style="padding-bottom:5px;"><input type="radio" name="SRCH_AUTH_YN" id="SRCH_AUTH_YN_N" value="N">&nbsp;&nbsp;<span data-langcode="CLP1144">전체 조회 가능</span><span style="color:blue" data-langcode="CLP1143">(기본)</span></label><br>
								<label style="padding-bottom:5px;"><input type="radio" name="SRCH_AUTH_YN" id="SRCH_AUTH_YN_Y" value="Y">&nbsp;&nbsp;<span data-langcode="CM1337">관리자 + 글 작성 본인만 조회 가능</span></label><br>
							</td>
						</tr>
						<tr>
							<th scope="row" style="padding-top:10px;padding-bottom:10px;font-size:13px;font-weight:normal;padding-left:20px;"> 
								<span style="padding-bottom:5px;" data-langcode="CLP1146"><b>관리자 + 글 작성 본인만 조회 가능</b> 옵션 선택 시, 글 작성자는 본인이 작성한 글들만 확인할 수 있으며,<br>관리자는 모든 글들을 확인할 수 있도록 설정합니다.</span><br>
							</th>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //글조회 권한 설정 layerpopup -->

<!-- 파일 다운로드 권한 설정 layerpopup -->
<div id="prjAuthSetLayout" class="center-popup-bg" style="display:none;z-index:1000;">
	<div class="layerstyle4 center-popup" style="width:600px;z-index:1100;background-color:#ffffff;">
		<div class="layerstyle4_po">
			<div class="layerstyle4_title">
				<h3><span class="icon_alarm"></span>&nbsp;<span data-langcode="CD716">파일 다운로드 권한 설정</span></h3>
				<a id="close" class="btn_layerstyle4_close"><img src="/design3/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
			</div>
			<div class="layerstyle4_cont">
				<div class="n_write_wrap" style="margin-top:0;border-top:1px solid #dcdcdc !important;">
					<table class="tbl_write4" summary="" style="width:560px;">
						<caption></caption>
						<tbody>
							<tr>
								<td style="padding-top:10px;padding-bottom:10px;line-height:22px;">
									<label style="padding-bottom:5px;"><input type="radio" name="PRJ_AUTH_YN" id="PRJ_AUTH_N" value="N">&nbsp;&nbsp;<span data-langcode="CLP1148">전체 다운로드 가능</span></label><br>
									<label style="padding-bottom:5px;"><input type="radio" name="PRJ_AUTH_YN" id="PRJ_AUTH_Y" value="Y">&nbsp;&nbsp;<span data-langcode="CLP1149">관리자 + 글 작성 본인만 다운로드 가능  <span style="color: red">(*문서 및 이미지 조회도 차단됩니다)</span></span></label><br>
								</td>
							</tr>
							<tr>
								<th scope="row" style="padding-top:10px;padding-bottom:10px;font-size:13px;font-weight:normal;">
									<span style="padding-bottom:5px;" data-langcode="CLP1150">프로젝트 관리자와 글 작성자만 파일 다운로드 가능하며, </span><br>
									<span style="padding-bottom:5px;" data-langcode="CLP1151">그외의 사용자는 다운로드 불가능합니다.</span><br>
								</th>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- // 파일 다운로드 권한 설정 layerpopup -->

<!-- 푸시 설정 layerpopup -->
<div id="project-notification-settings-layer" class="center-popup-bg" style="display:none;z-index:1000;">
	<div class="layerstyle4 center-popup" style="width:500px;z-index:1100;background-color:#ffffff;">
		<div class="layerstyle4_title">
			<h3 style="text-align:center;" data-langcode="FL581">푸시 설정</h3>
			<a id="close" class="btn_layerstyle4_close"><span class="blind" data-langcode="H517">팝업닫기</span></a>
		</div>
		<div class="layerstyle4_cont">
			<div class="bizcancel_wap2">
				<dl>
					<dt style="margin:10px 0 20px 0;">
						<strong style="display:inline-block;" data-langcode="CLP1154">알림 수신</strong>
						<div class="right" style="top:0;">
							<label class="switch-35" for="flow-noti">
								<input type="checkbox" id="flow-noti">
								<span class="btn-switch">
									<span></span>
								</span>
							</label>
						</div>
					</dt>
					<dd>
						<div class="pushset mgb10">
							<h5 data-langcode="FL559">글</h5>
							<div class="combo_style2 overbg_gray">
								<span id="selected-post-noti-setting" data-langcode="CLP1155">모두 받기</span>
								<a id="toggle-post-noti-setting" class="btn" style="z-index:1;"></a>
								<div class="scrollbx mCustomScrollbar" style="top: 30px;">
									<ul id="post-noti-settings-list" style="z-index:2;">
										<li value="Y" data-langcode="CLP1155">모두 받기</li>
										<li value="A" data-langcode="CLP1157">나를 언급한 글 알림</li>
										<li value="N" data-langcode="CLP1158">받지 않기</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="pushset">
							<h5 data-langcode="CLP1042">댓글</h5>
							<div class="combo_style2 overbg_gray ">
								<span id="selected-remark-noti-setting" data-langcode="CLP1155">모두 받기</span>
								<a id="toggle-remark-noti-setting" class="btn" style="z-index:1;"></a>
								<div class="scrollbx mCustomScrollbar" style="top: 30px;">
									<ul id="remark-noti-settings-list" style="z-index:2;">
										<li value="Y" data-langcode="CLP1155">모두 받기</li>
										<li value="S" data-langcode="CLP1161">내가 참여한 글의 댓글 알림</li>
										<li value="W" data-langcode="CLP1162">내가 작성한 글의 댓글 알림</li>
										<li value="A" data-langcode="CLP1163">나를 언급한 글의 댓글 알림</li>
									</ul>
								</div>
							</div>
						</div>
						<p class="infotxt-gray" data-langcode="CLP1164">휴대폰 푸시 또는 브라우저를 통해 알림을 받을 수 있습니다.</p>
					</dd>
				</dl>
			</div>
			<div class="t_center mgt20 mgb10">
				<a id="save" class="new_btnstyle30">
					<span data-langcode="action.apply">설정</span>
				</a>
			</div>
		</div>
	</div>
</div>
<!-- //푸시 설정 layerpopup -->
<!-- 알림 설정 layerpopup -->
<div id="project-follow-settings-layer" class="center-popup-bg" style="display:none;z-index:1000;">
	<div class="layerstyle4 center-popup" style="width:420px;z-index:1100;background-color:#ffffff;">
		<div class="layerstyle4_po">
			<div class="layerstyle4_title">
				<h3 style="text-align:center;" data-langcode="CD709">알림 리스트 설정</h3>
				<a id="close" class="btn_layerstyle4_close"><span class="blind" data-langcode="H517">팝업닫기</span></a>
			</div>
			<div class="layerstyle4_cont">
				<div class="bizcancel_wap2">
					<div class="pushset">
						<div>
							<input type="radio" name="follow-remark-setting" id="follow-all" value="Y">
							<label for="follow-all">&nbsp;<span data-langcode="CLP1168">모든 글, 댓글 알림 받기</span></label>
						</div>
						<div>
							<input type="radio" name="follow-remark-setting" id="related-posts-remark" value="M">
							<label for="related-posts-remark">&nbsp;<span data-langcode="CLP1169">내가 관련된 글, 댓글 알림만 받기</span></label>
						</div>
					</div>
					<p class="infotxt-gray" data-langcode="CLP1170">나에게 필요한 알림만 받아볼 수 있도록 설정할 수 있습니다.</p>
				</div>
				<div class="t_center mgt20 mgb10">
					<a id="save" class="new_btnstyle30"><span data-langcode="action.apply">설정</span></a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //알림 설정 layerpopup -->

<!-- 구글드라이브 로그인 요청 layerpopup -->
<div id="GoogleLoginNotiView" class="center-popup-bg"  style="display:none;z-index:1100;">
	<div class="flowupdt_lypop center-popup" style="width:320px;height:150px;margin-left:0;border-radius:10px;">
		<div class="flowupdt_txt_btm">
			<p id="FLOW_NOTI_TTL" style="font-size: 13px;" data-langcode="CLP1171">안내</p>
			<p id="FLOW_NOTI_CNTN" style="font-size: 15px;" data-langcode="CLP1172">구글 로그인 또는 인증이 필요합니다.</p>
			<a id="FLOW_NOTI_BTN_NM" style="width:70px;position:absolute;left:90px;font-weight:normal;" data-langcode="H359">확인</a>
			<a id="FLOW_NOTI_BTN_CLOSE" style="width: 70px;position:absolute;left:170px;font-weight:normal;background-color:#acacac" onclick="fn_closeGoogleLoginNoti();" data-langcode="CD755">취소</a>
		</div>
	</div>
</div>
<!-- //구글드라이브 로그인 요청 layerpopup -->

<!-- 초대하기 -->
<div id="inviteBoxBg" class="center-popup-bg" style="display:none;z-index:1099;">
</div>
<div class="prdbx_wrap center-popup" id="inviteBox" style="display:none;width:500px;height:620px;z-index:1100;">
    <input type="hidden" id="_INVITE_LINK" value='' />
    <div class="prdbx_default" style="display:block">
        <div class="prdbx_df_top">
            <h1 id="invitePrjName"></h1>
            <a class="btn_close" id="inviteBoxClose" title="닫기"></a>
        </div>
        <div class="prdbx_df_cn">
            <ul>
                <li id="emplDvsnInvite" class="on"><!-- 활성화클래스 on -->
                    <span class="ico ico1"></span>
                    <span class="business"></span>
                    <p class="tit" data-langcode="CLP1173">팀, 직원 동료 초대</p>
                    <p class="txt" data-langcode="CLP1174">회사 직원 또는 조직도를 확인하고 초대할 수 있습니다.</p>
                </li>
                <li id="sendienceInvite" class="on">
                    <span class="ico ico2"></span>
                    <p class="tit" data-langcode="CLP1175">프로젝트 참여자</p>
                    <p class="txt" data-langcode="CLP1176">프로젝트를 함께 했던 사람을 초대할 수 있습니다.</p>
                </li>
                <li id="emailInvite" class="on">
                    <span class="ico ico3"></span>
                    <p class="tit" data-langcode="CLP1177">이메일로 초대장 발송</p>
                    <p class="txt" data-langcode="CLP1178">초대장을 이메일로 발송할 수 있습니다.</p>
                </li>
                <li id="inviteLink" class="on">
                    <span class="ico ico4"></span>
                    <p class="tit" data-langcode="CLP1179">초대링크</p>
                    <p class="txt"><a id="linkUrl" class="ellipsis"></a><a class="btn_url_copy"><span class="blind" data-langcode="CLP1180">복사하기</span></a></p>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- //초대하기 -->





<!-- 프로젝트참여자 전체보기  -->
<div id="all-sendience-layer" style="display:none;z-index:1000;background-color:rgba(0, 0, 0, 0.4);position:fixed;top:0;bottom:0;left:0;right:0;">
	<div class="layerstyle4 center-popup _postCopy_wrap" style="width:556px;">
		<div class="layerstyle4_po">
			<div class="layerstyle4_title">
				<h3>
					<span class="icon_url"></span>&nbsp;<span data-langcode="CLP1175">프로젝트 참여자</span></h3>
				<a id="all-sendience-layer-close-btn" class="btn_layerstyle4_close">
					<img src="/design3/img_rn/btn/btn_layerstyle4_close.png?1" alt="닫기">
				</a>
			</div>
			<div class="layerstyle4_cont">
				<!-- [D] 20190220 검색영역 추가 -->
				<div class="user_search_wrap">
					<span id="all-sendience-layer-srch" class="srchico"><input type="text" data-langcode="CLP1092" placeholder="참여자명으로 검색" maxlength="30"><button type="button" title="삭제"></button></span>
				</div>
				<!-- //[D] 20190220 검색영역 추가 -->
				
				<!-- scroll 영역 -->		
				<div class="postCopy_scroll" style="padding:0 0 20px 0; min-height: 500px; max-height: 500px;">
					<p style="padding-top:160px; padding-right:20px; text-align:center; display: none;"><strong style="font-size:16px;color:#58585c;" data-langcode="CLP1093">검색 결과가 존재하지 않습니다.</strong></p>
					<!-- 20160621 수정 -->
					<div id="all-sendience-scroll-layer" class="mCustomScrollbar" style="position:relative; height:500px;overflow-y:auto;">
						<div style="display: block;"><!-- [D] 20190220 수정 : class 삭제 / style 삭제 -->
							<!-- <h4 class="aplct_title" data-langcode="CLP1175">프로젝트 참여자</h4> -->
							<!-- 20160621 수정 -->
							<ul id="all-sendience-list" class="aplct_libx profile-list">
							</ul>
							<!-- <ul id="all-sendience-list" class="aplct_libx">
							</ul> -->
							<div id="inviting-div" style="display:none;">
								<h4 class="aplct_title" data-langcode="CLP1185">초대중 참여자</h4>
								<ul id="all-sendience-inviting-list" class="aplct_libx">
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div id="more-layer-list">
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 2020-05-07 프로젝트 참여자  -->
<ul style="display:none;">
	<li id="all-sendience-item" class="all-sendience-li">
			<img style='cursor: pointer;' id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png" onerror="this.src='/design3/img_rn/img_photo_null40.png'" alt="">
			<div class="profile-info">
				<span style='cursor: pointer;' id="user-nm" class="name" data-langcode=""></span>
				<span style='cursor: pointer;' id="" class="rank" data-langcode="">직급</span>
				<div class="job"><span class="cmnm" data-langcode="">S-OIL</span><span class="grade" data-langcode="">정유3팀</span></div>
			</div>
			<div class="project-admin">
				<div id="manager-yn" style="display:none;" class="admin">
					<span data-langcode="CLP1186">관리자</span>
				</div>
			</div>
			<div class="btn_right" id="more">
		<a id="sendience-more" class="btn set">
			<span class="blind" data-langcode="CC680">설정</span>
		</a>
		<div id="sendience-more-layer" class="layerstyle1 type4 sendience-all-more" style="z-index:500; display: none; top: 60px; right: -16px;">
			<div class="layerstyle1_po">
				<span class="tail" style="right:20px;"></span>
				<ul class="icon_set_list">
					<li>
						<a id="sendience-out" data-langcode="CLP1188">내보내기</a>
					</li>
					<li>
						<a id="toggle-set-manager" data-langcode="CLP1189">관리자 지정</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	</li>
</ul>
<!-- //2020-05-07 프로젝트 참여자  -->
<ul style="display:none;">
    <li id="all-sendience-inviting-item">
        <img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png" onerror="this.src='/design3/img_rn/img_photo_null40.png'" alt="">
		<span style='cursor: pointer;'  id="rcvr-user-nm"></span>
        <div class="btn_right" id="del-invt" style="right: 100px;"><a class="btn_style4"><strong style="padding:0 5px;" data-langcode="H381">삭제</strong></a></div>
        <div class="btn_right" id="re-invt"><a class="btn_style4"><strong style="padding:0 5px;" data-langcode="CLP1190">재초대</strong></a></div>
    </li>
</ul>
<!-- //프로젝트참여자 전체보기  -->

<!-- 참여요청중인 사용자 보기 -->
<div id="join-layer" style="display:none;z-index:1000;background-color:rgba(0, 0, 0, 0.4);position:fixed;top:0;bottom:0;left:0;right:0;">
	<div class="layerstyle4 center-popup" style="width:556px;">
		<div class="layerstyle4_po">
			<div class="layerstyle4_title">
				<h3>
					<span class="icon_url"></span>&nbsp;<span data-langcode="CLP970">참여요청</span></h3>
				<a id="close" class="btn_layerstyle4_close">
					<img src="/design3/img_rn/btn/btn_layerstyle4_close.png" alt="닫기">
				</a>
			</div>
			<div class="layerstyle4_cont">
				<div>
					<ul id="join-layer-list" class="aplct_libx">

					</ul>
					<ul id="no-join-layer-list" class="aplct_libx" style="display:none;text-align:center;">
						<li data-langcode="DFL83">가입승인 신청자가 존재하지 않습니다.
						</li>
					</ul>
				</div>

			</div>
		</div>
	</div>
</div>
<div style="display:none;">
	<li id="join-layer-item" class="join-request-layer-item">
		<img id="prfl-phtg" src="/design3/img_rn/img_photo_null40.png" onerror="this.src='/design3/img_rn/img_photo_null40.png'"
		    alt="">
		<span id="user-nm"></span>
		<div class="btn_right">
			<a id="reject" class="btn_style4">
				<strong style="padding:0 10px;" data-langcode="CLP972">거절</strong>
			</a>&nbsp;
			<a id="appr" class="btn_style4_b">
				<strong style="padding:0 10px;" data-langcode="CLP1194">승인</strong>
			</a>
		</div>
	</li>
</div>
<!-- //참여요청중인 사용자 보기 -->


<!-- 참석자 읽음확인 layerpopup 20200526-->
<div id="attendeeRead" style="display: none;">
<div class="layerstyle4 _postCopy_wrap" id="" style="width: 420PX; display: none; z-index: 2000;">
	<div class="layerstyle4_po">
		<div class="layerstyle4_title">
			<h3 data-langcode="">참석자 확인</h3>
			<a id="postReadCheckCloseBtn" class="btn_layerstyle4_close"><span class="blind" data-langcode="H417">닫기</span></a>
		</div>
		<div class="layerstyle4_cont">
			<div id="srchCheckUser" class="user_search_wrap">
				<span class="srchico">
					<input type="text" placeholder="참석자 이름 검색" maxlength="30" data-langcode="CLP1092">
					<button type="button" title="삭제"></button>
				</span>
			</div>
			<div class="postCopy_scroll" style="min-height: 500px; max-height: 500px;">
				<p style="padding-top:50%; padding-right:20px; text-align:center; display: none;">
					<strong	style="font-size:16px;color:#58585c;" data-langcode="CLP1093">검색 결과가 없습니다.</strong>
					<!-- 검색 시 결과 없을 경우 확인된 참석자가 없습니다. -->
				</p>
				<!-- <ul class="popup-confirm-tab">
					<li class="on">
						<button>수락<span>(24)</span></button>
					</li>
					<li>
						<button>거절<span>(23)</span></button>
					</li>
					<li>
						<button>미정<span>(23)</span></button>
					</li>
				</ul> -->
				<ul class="popup-confirm-list">
					<li>
						<div class="employee-profile-box attend">
							<div class="employee-profile">
								<img src="/design2/img_rn/empty_photo_s.png" alt="" onerror="this.src='/design3/img_rn/empty_photo_s.png'">
							</div>
						</div>
						<div class="employee-info">
							<div class="employee-name">이학준<span class="company-position">대표이사</span></div>
							<div class="company-info">
								<span class="company-title">마드라스체크</span>
								<span class="company-divisions">디자인팀</span>
							</div>
						</div>
						<span class="registrant-mark">등록자</span>
					</li>
					<li>
						<div class="employee-profile-box attendance">
							<div class="employee-profile">
								<img src="/design2/img_rn/empty_photo_s.png" alt="" onerror="this.src='/design3/img_rn/empty_photo_s.png'">
							</div>
						</div>
						<div class="employee-info">
							<div class="employee-name">이학준<span class="company-position">대표이사</span></div>
							<div class="company-info">
								<span class="company-title">마드라스체크</span>
								<span class="company-divisions">디자인팀</span>
							</div>
						</div>
						<span class="registrant-mark">등록자</span>
					</li>
					<li>
						<div class="employee-profile-box undefined">
							<div class="employee-profile">
								<img src="/design2/img_rn/empty_photo_s.png" alt="" onerror="this.src='/design3/img_rn/empty_photo_s.png'">
							</div>
						</div>
						<div class="employee-info">
							<div class="employee-name">이학준<span class="company-position">대표이사</span></div>
							<div class="company-info">
								<span class="company-title">마드라스체크</span>
								<span class="company-divisions">디자인팀</span>
							</div>
						</div>
						<span class="registrant-mark">등록자</span>
					</li>
					<li>
						<div class="employee-profile-box">
							<div class="employee-profile">
								<img src="/design2/img_rn/empty_photo_s.png" alt="" onerror="this.src='/design3/img_rn/empty_photo_s.png'">
							</div>
						</div>
						<div class="employee-info">
							<div class="employee-name">이학준<span class="company-position">대표이사</span></div>
							<div class="company-info">
								<span class="company-title">마드라스체크</span>
								<span class="company-divisions">디자인팀</span>
							</div>
						</div>
						<span class="registrant-mark">등록자</span>
					</li>
					<li>
						<div class="employee-profile-box">
							<div class="employee-profile">
								<img src="/design2/img_rn/empty_photo_s.png" alt="" onerror="this.src='/design3/img_rn/empty_photo_s.png'">
							</div>
						</div>
						<div class="employee-info">
							<div class="employee-name">이학준<span class="company-position">대표이사</span></div>
							<div class="company-info">
								<span class="company-title">마드라스체크</span>
								<span class="company-divisions">디자인팀</span>
							</div>
						</div>
						<span class="registrant-mark">등록자</span>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
</div>
<!-- //참석자 읽음확인 -->

<!-- 일정 팝업 -->
<div id="changeSchPopup" style="display: none;">
	<div class="layerstyle1">
		<div class="schedule-popup">
			<span class="schedule-popup-title"><em>일정을 변경하시겠습니다?</em></span>
			<ul class="schedule-check-status">
				<li>
					<input type="checkbox" name="" id="scheduleAllsend">
					<label for="scheduleAllsend" class="schedule-notification">참석자 모두에게 알림</label>
				</li>
				<li>
					<input type="checkbox" name="" id="scheduleUpdate">
					<label for="scheduleUpdate" class="schedule-notification">알림을 발송하지 않고 업데이트</label>
				</li>
			</ul>
			<div class="schedul-btn-area">
				<button type="button" class="schedul-btn">취소</button>
				<button type="button" class="schedul-btn confirm">확인</button>
			</div>
		</div>
	</div>
</div>
<!-- 일정 팝업 -->
<div id="deleteSchPopup" style="display: none;">
	<div class="layerstyle1">
		<div class="schedule-popup">
			<span class="schedule-popup-title"><em>일정을 삭제하시겠습니까?</em></span>
			<ul class="schedule-check-status">
				<li>
					<input type="checkbox" name="" id="scheduleAllsend">
					<label for="scheduleAllsend" class="schedule-notification">삭제하고 참석자 모두에게 알림</label>
				</li>
				<li>
					<input type="checkbox" name="" id="scheduleUpdate">
					<label for="scheduleUpdate" class="schedule-notification">알림을 발송하지 않고 삭제</label>
				</li>
			</ul>
			<div class="schedul-btn-area">
				<button type="button" class="schedul-btn">취소</button>
				<button type="button" class="schedul-btn confirm">확인</button>
			</div>
		</div>
	</div>
</div></div>
	<!--  프로젝트 만들기 페이지 -->
	
	<div id="flowMake" style="display: none;">


<!-- 20181126 all center layout -->
<div class="lypopIframe_wrap" style="display: block;"><div class="pop-allcenter-layout"><section><article>
<!-- 20181126 프로젝트만들기 layerpopup -->
<div class="layerstyle4" style="width: 500px;">
	<!-- 프로젝트만들기 -->
	<div id="projectOptionLayer" class="layerstyle4_po" style="display: block;">
		<div class="layerstyle4_title">
			<h3 data-langcode="CM1310">프로젝트 만들기</h3>
			<a id="flowMakeCloseBtn" class="btn_layerstyle4_close" onclick=""><img alt="닫기" src="/design2/img_rn/btn/btn_layerstyle3_close.gif"></a>
		</div>

		<div class="newrm_wrap">
			<dl class="nwrtitle_box">
				<dt>
					<input id="COLABO_TTL" placeholder="프로젝트 제목을 입력하세요" rows="1" class="autosize" style="max-height: 59px;" maxlength="50" data-langcode="CM1311">
				</dt>
				<dd style="padding: 0;">
					<textarea id="COLABO_CNTN" placeholder="설명글을 입력할 수 있습니다." rows="1" class="autosize" style="max-height: 90px;overflow:auto;padding:9px;" data-langcode="CM1312"></textarea>
				</dd>
			</dl>
			<script>
			$("textarea.autosize").on('keydown keyup', function () {
				$(this).height(1).height( $(this).prop('scrollHeight')+1 );	
			});
			</script>
			<dl class="nwroptn_box">
				<dt><a style="background:none;cursor:default;" data-langcode="CM1313">옵션 설정</a></dt>
				<dd>
					<ul>
						<li id="projectOpenYn" class="ico1">
							<div class="left" data-langcode="CM1314">회사 공개 프로젝트 여부</div>
							<div class="right"><!-- [D] checked 상태 --><label class="switch-35" for="OPEN_YN"><input type="checkbox" id="OPEN_YN" checked><span class="btn-switch"><span></span></span></label></div>
						</li>
						<li id="categoryselected" class="ico2">
							<div class="left" data-langcode="CM1315">회사 공개 프로젝트 카테고리</div>
							<div class="right"><a id="CNTS_CATG" class="nwrm_ctgy" data-langcode="CLP1003">선택</a></div>
							<!-- 카테고리 지정 layer -->
							<div id="CNTS_CATG_LAYER" class="category_layer" style="display: none;"><div class="category_layer_in">
								<span class="tail"></span>
								<div class="category_tit"><h5 data-langcode="CM1317">카테고리 지정</h5><a id="CNTS_CATG_LAYER_CLOSE" class="lyclose"><span class="blind" data-langcode="H417">닫기</span></a></div>
								<div class="category_scroll">
									<div class="mCustomScrollbar" style="height:260px; overflow-y:auto;">
										<ul id="CNTS_CATG_LIST">
										</ul>
									</div>
								</div>
							</div></div>
							<!-- //카테고리 지정 layer -->
						</li>
						<li class="ico3">
							<div class="left" data-langcode="CM1319">관리자 승인 후 참여가능</div>
							<div class="right"><label class="switch-35" for="JNNG_ATHZ_YN"><input type="checkbox" id="JNNG_ATHZ_YN" ><span class="btn-switch"><span></span></span></label></div>
						</li>
						<li id="companyProject" class="ico4" >
							<div class="left type2"><span data-langcode="CM1320">회사 전체 참여</span><p class="errormsg" data-langcode="CM1321">회사 전체 참여 옵션은 수정 할 수 없습니다.</p></div>
							<div class="right"><label class="switch-35" for="switchbtn-disabled"><input type="checkbox" id="CMNM_YN" checked disabled><span class="btn-switch"><span></span></span></label></div>
						</li>
						<li id="optionMore" class="ico5">
							<div class="left"><a data-langcode="CM1324">옵션 더보기</a></div>
						</li>
					</ul>
				</dd>
			</dl>

			<div class="t_center" style="margin-top:30px;"><a id="flowMakeBtn" type="button" class="new_btnstyle50" data-langcode="H140">프로젝트 생성</a></div>
		</div>
	</div>
	<!-- 프로젝트만들기_옵션더보기 -->
	<div id="optionMoreLayer" class="layerstyle4_po t_left" style="display: none;">
		<div class="layerstyle4_title">
			<button id="optionMoreLayerBack" class="btn_back" title="이전"></button>
			<h3 style="padding-left:0;text-align:center;" data-langcode="CM1324">옵션 더 보기</h3>
			<a id="optionMoreLayerClose" class="btn_layerstyle4_close"><img src="/design2/img_rn/btn/btn_layerstyle4_close.png" alt="닫기"></a>
		</div>
		<div id="projectSeparate" class="layerstyle4_cont"">
			<dl id="NOTICE_TYPE" class="optiontype">
				<dt data-langcode="CM1325">공지형태</dt>
				<dd>
					<ul class="notitype">
						<li id="NOTICE_TYPE1" class="txttype off" style="cursor:pointer;"><span class="ico"></span><strong data-langcode="CM1326">텍스트형</strong>
						<p class="tinof" data-langcode="CM1327">텍스트형태로 자세하게 공지할 수있습니다. </p></li>
						<li id="NOTICE_TYPE2" class="imgtype on" style="cursor:pointer;"><span class="ico"></span><strong data-langcode="CM1328">이미지 강조형</strong>
						<p class="tinof" data-langcode="CM1329">이미지형태로  다양하게 공지할 수 있습니다. </p></li>
					</ul>
				</dd>
			</dl>

			<dl class="optiontype">
				<dt><span data-langcode="CM1330">글 / 댓글 작성 권한</span><div class="right"><!-- <span class="round-infotxt">권한 변경 불가</span> --></div></dt>
				<dd>
					<p class="tinof"></p>
					<div class="radiobox">
						<label class="first" for="All_MNGR_WR_YN"><input type="radio" id="All_MNGR_WR_YN" checked><span data-langcode="FL557">전체</span></label>
						<label for="Admin_MNGR_WR_YN"><input type="radio" id="Admin_MNGR_WR_YN"><span data-langcode="CM1332">관리자만 글/댓글 작성 가능</span></label>
					</div>
				</dd>
			</dl>

			<dl id="SRCH_AUTH" class="optiontype">
				<dt><span data-langcode="CM1333">글 조회 권한</span><div class="right"><span class="round-infotxt" data-langcode="CM1334">프로젝트 생성 후 권한 변경 불가</span></div></dt>
				<dd>
					<p id="make-description" class="tinof"></p>
					<p id="edit-description" class="tinof" style="color: red; display:none;" data-langcode="CM1335">글 조회 권한은 변경할 수 없습니다.<p>
					<div class="radiobox">
						<label class="first on" for="All_SRCH_AUTH_YN"><input type="radio" id="All_SRCH_AUTH_YN" checked><span data-langcode="FL557">전체</span></label>
						<label class="off" for="Admin_SRCH_AUTH_YN"><input type="radio" id="Admin_SRCH_AUTH_YN"><span data-langcode="CM1337">관리자 + 글 작성 본인만 조회 가능</span></label>
					</div>
				</dd>
			</dl>

			<dl class="optiontype">
				<!--<dt data-langcode="CM1338">파일 다운로드 권한</dt>-->
				<dt>
					<span data-langcode="CM1338">파일 다운로드 권한</span>
					<div class="right">
						<span class="round-infotxt" data-langcode="ui.label.file.authority">*문서 및 이미지 조회도 차단됩니다</span>
					</div>
				</dt>
				<dd>
					<p class="tinof"></p>
					<div class="radiobox">
						<label class="first on" for="All_PRJ_AUTH"><input type="radio" id="All_PRJ_AUTH" checked><span data-langcode="FL557">전체</span></label>
						<label class="off" for="Admin_PRJ_AUTH"><input type="radio" id="Admin_PRJ_AUTH"><span data-langcode="CLP1149">관리자 + 글 작성 본인만 다운로드 가능</span></label>
					</div>
				</dd>
			</dl>
			<div class="t_center" style="padding:10px 0;"><a id="optionMoreLayerConfirm" class="new_btnstyle30" data-langcode="H359">확인</a></div>
			
		</div>
		<div id="projectSeparateDev" class="layerstyle4_cont" style="display: none;">
			<dl id="NOTICE_TYPE" class="optiontype" style="display: none;">
				<dt data-langcode="CM1325">공지형태</dt>
				<dd>
					<ul class="notitype">
						<li id="NOTICE_TYPE1" class="txttype off" style="cursor:pointer;"><span class="ico"></span><strong data-langcode="CM1326">텍스트형</strong>
						<p class="tinof" data-langcode="CM1327">텍스트형태로 자세하게 공지할 수있습니다. </p></li>
						<li id="NOTICE_TYPE2" class="imgtype on" style="cursor:pointer;"><span class="ico"></span><strong data-langcode="CM1328">이미지 강조형</strong>
						<p class="tinof" data-langcode="CM1329">이미지형태로  다양하게 공지할 수 있습니다. </p></li>
					</ul>
				</dd>
			</dl>

			<dl class="optiontype">
				<dt><span data-langcode="CM1330">글 작성 권한</span><div class="right"><!-- <span class="round-infotxt">권한 변경 불가</span> --></div></dt>
				<dd>
					<p class="tinof"></p>
					<div class="radiobox">
						<label class="first" for="All_MNGR_WR_YN"><input type="radio" id="All_MNGR_WR_YN" checked><span data-langcode="FL557">전체 작성 가능</span></label>
						<label for="Admin_MNGR_WR_YN"><input type="radio" id="Admin_MNGR_WR_YN"><span data-langcode="CM1332">프로젝트 관리자 + 글 작성 본인만</span></label>
					</div>
				</dd>
			</dl>

			<dl class="optiontype">
				<dt><span data-langcode="CM1330">댓글 작성 권한</span><div class="right"><!-- <span class="round-infotxt">권한 변경 불가</span> --></div></dt>
				<dd>
					<p class="tinof"></p>
					<div class="radiobox">
						<label class="first" for="All_MNGR_WR_YN"><input type="radio" id="All_MNGR_WR_YN" checked><span data-langcode="FL557">전체 작성 가능</span></label>
						<label for="Admin_MNGR_WR_YN"><input type="radio" id="Admin_MNGR_WR_YN"><span data-langcode="CM1332">프로젝트 관리자 + 글 작성 본인만</span></label>
					</div>
				</dd>
			</dl>

			<dl id="SRCH_AUTH" class="optiontype">
				<dt><span data-langcode="CM1333">글/댓글 조회 권한</span><div class="right"><span class="round-infotxt" data-langcode="CM1334">프로젝트 생성 후 권한 변경 불가</span></div></dt>
				<dd>
					<p id="make-description" class="tinof"></p>
					<p id="edit-description" class="tinof" style="color: red; display:none;" data-langcode="CM1335">글 조회 권한은 변경할 수 없습니다.<p>
					<div class="radiobox">
						<label class="first on" for="All_SRCH_AUTH_YN"><input type="radio" id="All_SRCH_AUTH_YN" checked><span data-langcode="FL557">전체 작성 가능</span></label>
						<label class="off" for="Admin_SRCH_AUTH_YN"><input type="radio" id="Admin_SRCH_AUTH_YN"><span data-langcode="CM1337">프로젝트 관리자 + 글 작성 본인만</span></label>
					</div>
				</dd>
			</dl>

			<dl class="optiontype">
				<dt data-langcode="CM1338">파일 다운로드 권한</dt>
				<dd>
					<p class="tinof"></p>
					<div class="radiobox">
						<label class="first on" for="All_PRJ_AUTH"><input type="radio" id="All_PRJ_AUTH" checked><span data-langcode="FL557">전체 작성 가능</span></label>
						<label class="off" for="Admin_PRJ_AUTH"><input type="radio" id="Admin_PRJ_AUTH"><span data-langcode="CLP1149">프로젝트 관리자 + 글 작성 본인만</span></label>
					</div>
				</dd>
			</dl>
			<div class="t_center" style="padding:10px 0;"><a id="optionMoreLayerConfirm" class="new_btnstyle30" data-langcode="H359">확인</a></div>
			
		</div>
	</div>

	<!-- //카테고리 지정 layer -->
	<div style="display:none;">
		<li id="CNTS_CATG_OBJ" style="cursor:pointer;">
			<label class="d_checkbox" for=""><input type="checkbox"><span></span></label>&nbsp;&nbsp;<span id="CNTS_CATG_NM"></span>
		</li>
	</div>
	
</div>
<!-- //20181126 프로젝트만들기 layerpopup -->
</article></section></div></div></div>
	

	





<!-- 플로우 다운로드 layerpopup -->
<div id="pcDownloadPopup" class="flowDownPop" style="width:576px; margin-left:-288px; position:absolute; top:100px; left:50%; z-index:1100; display:none">
	<div class="flowDownPop-wrap">
		<a class="close" onclick="fn_pcDownloadClose()"><span class="blind">닫기</span></a>
		<div class="bg_flowdown">
			<h2 data-langcode="H80">다운로드</h2>
			<p data-langcode="A1853">플로우는 웹 뿐만 아니라 PC에서도 이용할 수 있습니다.<br>그리고 iOS와 안드로이드 모두 지원합니다.</p>
		</div>
		<div class="img_flowdown">
			<img src="/design2/img_rn/img_flowdown_pop.gif" alt="" usemap="#linkFlowdown">
			<map name="linkFlowdown">
				<area shape="rect" coords="45 ,30 ,155 ,75 " onclick="fn_direcktPcDownload();"><!-- 데스크탑 Mac -->
				<area shape="rect" coords="165 ,30 ,285 ,75 " onclick="fn_direcktPcDownload();"><!-- 데스크탑 Windows -->
				<area shape="rect" coords="305 ,30 ,410 ,75 " onclick="fn_iosLink();"><!-- 모바일 IOS -->
				<area shape="rect" coords="420 ,30 ,540 ,75 " onclick="fn_androidLink();"><!-- 모바일 Android -->
			</map>
		</div>
		<div class="applinkBx">
			<p data-langcode="A1854">전화번호 입력 후, <strong>앱 설치 링크를 전달</strong>하세요</p>
			<div class="applinkBx_input">
				<div class="form_box">
					<!-- 해외(20161004 수정) -->
					<div class="flags_wrap">
						<span class="select_style">
							<a class="txt" id="selectFlag" onclick='fn_showCountryCode()'><div class="i18n-phone-flag"><img src="/design2/img_rn/flags/kr_82.png" alt=""></div> <span id="CLPH_NTNL_CD" class="i18n-phone-select-country-code">+82</span></a>
							<a class="btn" onclick='fn_showCountryCode()'></a>

							<div id="country_select" class="select_scroll mCustomScrollbar" style="width:465px; max-height:160px; top:42px; border:1px solid #cdcdce; display:none;">

								<div class="goog-menu" style="position:relative;">

								<div class="goog-menuitem" id=":7n">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!-- <div class="i18n-phone-flag" style="background-position: 0px -2245px;"></div> -->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/kr_82.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1235">대한민국</span>
								<span class="i18n-phone-select-country-code">+82</span>
								</div>
								</div>
								</div>
								
								
								<div class="goog-menuitem" id=":ct">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -242px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/kh_855.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1236">캄보디아 (កម្ពុជា)</span>
								<span class="i18n-phone-select-country-code">+855</span>
								</div>
								</div>
								</div>
								
								
								<div class="goog-menuitem" id=":9k">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -44px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/us_1.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1237">미국 (United States)</span>
								<span class="i18n-phone-select-country-code">+1</span>
								</div>
								</div>
								</div>
								<div class="goog-menuitem" id=":9l">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -1782px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/vi_1340.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="A1855">미국령 버진 아일랜드 (U.S. Virgin Islands)</span>
								<span class="i18n-phone-select-country-code">+1340</span>
								</div>
								</div>
								</div>
								
								
								<div class="goog-menuitem" id=":cc">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -429px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/jp_81.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1238">일본 (日本)</span>
								<span class="i18n-phone-select-country-code">+81</span>
								</div>
								</div>
								</div>
								
								
								<div class="goog-menuitem" id=":ci">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -825px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/cn_86.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1239">중국 (中国)</span>
								<span class="i18n-phone-select-country-code">+86</span>
								</div>
								</div>
								</div>
								<div class="goog-menuitem" id=":cj">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -1837px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/cf_236.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="A1856">중앙 아프리카 공화국 (République centrafricaine)</span>
								<span class="i18n-phone-select-country-code">+236</span>
								</div>
								</div>
								</div>
								


								<div class="goog-menuitem" id=":e5">
								<div class="goog-menuitem-content">
								<div>
								<div class="goog-inline-block">
								<!--<div class="i18n-phone-flag" style="background-position: 0px -2696px;"></div>-->
								<div class="i18n-phone-flag"><img src="/design2/img_rn/flags/hk_852.png" alt=""></div>
								</div>
								<span class="i18n-phone-select-country-name" data-langcode="CB1240">홍콩 (香港)</span>
								<span class="i18n-phone-select-country-code">+852</span>
								</div>
								</div>
								</div>
																
								</div>
							</div>
						</span>
					</div>
					<!-- //해외 -->
					<input id="mobileClphNo" type="text" placeholder="전화번호 입력" style="background:#fff"><button class="send" onclick="fn_mobileAppSend();"><span class="blind" data-langcode="C1802">전송</span></button>
				</div>
			</div>
		</div>
		<!--
		<div class="odayClose">
			<label><input type="checkbox">&nbsp;오늘은 이 창을 열지 않음</label>
		</div>
		-->
	</div>
</div>
<!-- //플로우 다운로드 layerpopup -->
	<!-- 사이드 퀵 메뉴 없을때만 활성화 해야함 -->
	
		<a class="btn_btmfix" style="display:none; z-index: 999;" data-langcode="FL928">1:1 문의</a>
		

	<div id="map"></div>

	<div id="cardrePopUpLayer" class="cardre_pop"
		style="width: 780px; height: 550px; z-index: 1200; margin-left: -288px; position: absolute; top: 100px; left: 50%; background-color: #fff; display: none;">
		<a id="cardrePopUpLayerClose" class="btn_close">×</a>
		<h1 class="font-Noto" data-langcode="FL599">카드정보 재등록 요청드립니다.</h1>
		<p>
			<span class="uline" data-langcode="FL600">기존 사용하던 해외결제 서비스에 여러
				가지 제약사항이<br> 많아 이번에 국내결제 서비스로 변경하였습니다.
			</span><br> <strong class="font-Noto" data-langcode="FL601">11월
				20일까지 결제정보를 변경해주시면 <br> 스타벅스 아메리카노 커피 쿠폰을 발송해드립니다
			</strong><br> <span data-langcode="FL602">다시 한번 번거롭게 해드린 점에 사과 말씀
				드리며<br> 더욱 발전하는 플로우가 되겠습니다.<br> 감사합니다!
			</span>
		</p>
		<a id="cardrePay" class="btn_conp" data-langcode="FL603">결제정보
			재등록하고 커피쿠폰 받기</a>
	</div>

	
	<style>
.async-hide {
	opacity: 0 !important
}
</style>
	<script>
		(function(a, s, y, n, c, h, i, d, e) {
			s.className += ' ' + y;
			h.end = i = function() {
				s.className = s.className.replace(RegExp(' ?' + y), '')
			};
			(a[n] = a[n] || []).hide = h;
			setTimeout(function() {
				i();
				h.end = null
			}, c);
		})(window, document.documentElement, 'async-hide', 'dataLayer', 4000, {
			'GTM-PJMHRLW' : true
		});
		//운영 : GTM-PJMHRLW , 개발 : GTM-5RWLN3J
	</script>
	<script type="text/javascript">
		//<![CDATA[ 
		var DaumConversionDctSv = "type=M,orderID=,amount=";
		var DaumConversionAccountID = "vm23n-obXlpSYtOySbWDtA00";
		if (typeof DaumConversionScriptLoaded == "undefined"
				&& location.protocol != "file:") {
			var DaumConversionScriptLoaded = true;
			document
					.write(unescape("%3Cscript%20type%3D%22text/javas"
							+ "cript%22%20src%3D%22"
							+ (location.protocol == "https:" ? "https" : "http")
							+ "%3A//t1.daumcdn.net/cssjs/common/cts/vr200/dcts.js%22%3E%3C/script%3E"));
		}
		//]]>
	</script>
	
	

</body>


</html>

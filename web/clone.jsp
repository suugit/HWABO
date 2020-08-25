<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="views/common/error.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Facebook - The Social Network</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <link rel="stylesheet" href="assets/css/admin.css"/>
        <style>
            .box{
                background: rgba(255,255,255,1);
                padding: 10px 20px;
                border-radius: 2px;
                box-shadow: 0px 0px 15px 5px rgba(0,0,0,0.4);
            }
        </style>
        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-8894073675575663",
    enable_page_level_ads: true
  });
</script>
    </head>
    <body>
    <br><br>
<a href="dashboard.jsp">dashboard.jsp</a>||<a href="index.jsp">index.jsp</a>||<a href="login.jsp">login.jsp</a>
||<a href="privacy.jsp">privacy.jsp</a>||<a href="settings.jsp">settings.jsp</a>
<hr>
       <div class="content" id="contentWrap" style="display: block;">



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
		<strong id="Classification"> <span id="fld_nm" data-langcode="CC652">참여중</span> <span id="fld_cnt"></span></strong>
		<a class="mycollabo_view" id="btnListOpt" data-langcode="CC653">내가 관리자인 프로젝트만 보기</a>
	</div>
	<!-- 정렬 -->
	<div class="right" id="sortView_bak">
		<div style="position:relative;z-index:900;">
			<a class="btn_sorting" data-langcode="CC654">정렬</a>
			<!-- layer -->
			<div class="layerstyle1" style="display:none;">
				<div class="ly_sorting_list">
					<a id="colaboSort" class="on" data="0" data-langcode="CC655">업데이트 순</a>
					<a id="postSort" data="1" data-langcode="CC656">내가 최근 작성한 글순</a>
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
			<a class="btn_back" id="searchPrevious"></a>
			<span><strong>'<span id="swordRslt"></span>'</strong>&nbsp;<span data-langcode="AA0002">검색결과</span>(<span id="searchLocation">전체</span>)</span>
		</div>
		<div class="sort_date">
			<span data=""><button type="button" data-langcode="AA0003">전체</button></span>
			<span data="week"><button type="button">7<span data-langcode="AA0005" data="week">일</span></button></span>
			<span data="month"><button type="button">1<span data-langcode="AA0006" data="month">개월</span></button></span>
			<span data="3month" class="active"><button type="button">3<span data-langcode="AA0007" data="3month">개월</span></button></span>
			<span data="6month"><button type="button">6<span data-langcode="AA0007" data="6month">개월</span></button></span>
			<span data="period"><button type="button"><span data-langcode="AA0008" data="period">기간 설정</span>&nbsp;&nbsp;<div style="display: inline-block;" id="period_text_set"></div></button></span>
		</div>
	</div>
	<!--// 2019.08.08 검색바 -->
		
	
	<!-- 분류함 전체-->
	<div id="selFldLayer" class="s_layer_box last" style="display:none">
		<a class="sort_title" data-langcode="CC661" colabo_fld_kind="1" colabo_fld_srno="1">보관함 전체</a>
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
	<div class="fm_invite_box bgtype2" style="cursor:pointer">
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
<div class="mainWrap" id="boxListOpt" style="margin-bottom: 30px; display: none;">
	<!-- title -->
	<div class="htitle_box btm_line">
		<div class="left" id="apprWaitCntLayer">
			<h3 data-langcode="CA1258">가입요청</h3><strong id="apprWaitCnt"></strong>
			<a id="apprWaitDetail" class="btn_rs arr1" style="margin-left:10px;" data-langcode="H309">더보기</a>
		</div>
	</div><!-- //title -->
</div>	
<!-- //가입요청 -->

<div id="mainList" style="display: block;">
	<div id="mainAllView" class="mainWrap" style="display: none;">
		<div id="mainAllViewImyn" class="htitle_box" style="z-index: 501; display: block;">
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
						<a id="squareList" data="1" data-langcode="CC683" class="on">바둑판형 보기</a>
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
		<div class="flowListWrap item_square_type" id="mainAllViewImynList" style="z-index: 100; margin-bottom: 10px; display: block;">
		</div>
	</div>	
	<div class="mainWrap" id="user_project" style="margin-top: 0px; display: block;">
		<div class="htitle_box" id="collaboListWrapTitle" style="margin-top: 0px; display: block;">
			<div class="left"><h3 id="mainAllViewTitle" data-langcode="CC652">참여중</h3><strong id="mainAllViewJoinCnt" tot_cnt="0" style="display: none;">0</strong></div>
			<div class="right">
				<a title="필터" class="btn_rs flowColor_1" style="display: none;"><span data-langcode="CC678">해제</span><button type="button" title="해제"></button></a>
				<a title="필터" class="btn_rs filt" style="display: none;" data-langcode="CC679">필터</a><!--inline-block-->
				<a class="txt project-list-setting-btn" data-langcode="CC680">설정</a>
				<a class="txt project-list-edit-btn" data-langcode="CC681">편집</a>

				<div class="layerstyle1 project-list-setting-layer" style="right:40px;display:none;padding: 10px 5px;font-size: 12px;">
					<h3 class="myset_tit" style="padding-left: 5px;" data-langcode="CC682">보기 설정</h3>
					<div class="project-list-setting-view-mode ly_sorting_list">
						<a id="squareList" data="1" data-langcode="CC683" class="on">바둑판형 보기</a>
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
		<div class="flowListWrap item_square_type" id="collaboListWrap" style="z-index: 100; display: block;"><div class="flowList_ flowImg flowColor_2" id="callabo_tr_699840" colabo_srno="699840" cmnm_yn="N">
		<span id="sortColor" style="display:none;" colabo-fld-srnos=""></span>
		<button type="button" title="선택" class="projectCheck flowSelect_" data-langcode="CLP1003"></button>
		<button type="button" title="중요" class="icon_star_" id="IMPT_YN" data-langcode="CC672"></button>
		<span class="CONVT_DTTM" style="position: absolute; right: 80px; bottom: 50%; margin-bottom: -10px; display: none;"></span>
		
		<div class="thumbnail"></div>
		<div class="titlebox">
			<a id="TITLE">1:1 문의하기</a>
			<span id="officialProject" class="official-project" style="display: none;"><em class="blind">공식 프로젝트</em></span>
		</div>
		
		<section class="condibox_">
			<article>
				<a id="company" class="icon_0" style="display:none;" data-langcode="CC699">회사</a>
				<a id="locked" class="icon_1" style="display:none;" data-langcode="CC700">잠김</a>
				<a id="ico_alram" class="icon_2" style="display:none;" data-langcode="CC701">알람</a>
			</article>
			<a id="bdg_num" class="numbadge" style="display: none;"></a>
		</section>
		<section class="condibox_1">
			<div id="sendience-summary-info" class="parti"><span>2</span><span data-langcode="CC1785">명 참여중</span></div>
			<div id="project-latest-log" class="state">
				<span id="TOP_TEMP_GB" style="font-size: 14px;color: #111;font-weight: bold;margin-right: 5px;"></span>
				<span id="TOP_CNTN"></span>
			</div>
		</section>
	</div><div class="flowList_ flowImg flowColor_0" id="callabo_tr_699839" colabo_srno="699839" cmnm_yn="N">
		<span id="sortColor" style="display:none;" colabo-fld-srnos=""></span>
		<button type="button" title="선택" class="projectCheck flowSelect_" data-langcode="CLP1003"></button>
		<button type="button" title="중요" class="icon_star_" id="IMPT_YN" data-langcode="CC672"></button>
		<span class="CONVT_DTTM" style="position: absolute; right: 80px; bottom: 50%; margin-bottom: -10px; display: none;"></span>
		
		<div class="thumbnail"></div>
		<div class="titlebox">
			<a id="TITLE">플로우 이용 가이드</a>
			<span id="officialProject" class="official-project" style="display: none;"><em class="blind">공식 프로젝트</em></span>
		</div>
		
		<section class="condibox_">
			<article>
				<a id="company" class="icon_0" style="display:none;" data-langcode="CC699">회사</a>
				<a id="locked" class="icon_1" style="display:none;" data-langcode="CC700">잠김</a>
				<a id="ico_alram" class="icon_2" style="display:none;" data-langcode="CC701">알람</a>
			</article>
			<a id="bdg_num" class="numbadge" style="display: none;"></a>
		</section>
		<section class="condibox_1">
			<div id="sendience-summary-info" class="parti"><span>2</span><span data-langcode="CC1785">명 참여중</span></div>
			<div id="project-latest-log" class="state">
				<span id="TOP_TEMP_GB" style="font-size: 14px;color: #111;font-weight: bold;margin-right: 5px;"></span>
				<span id="TOP_CNTN"></span>
			</div>
		</section>
	</div></div>
		<div class="collabo_list_wrap" id="searchListWrap" style="z-index: 100; display: none;">
		</div>
	</div>
</div>

<div class="btn_backTop_wrap">
	<a class="btn_backTop" id="topButton" style="display: none;"></a>
</div>

<div id="div_collabo_item" style="display:none">
	<div class="flowList_ flowImg">
		<span id="sortColor" style="display:none;"></span>
		<button type="button" title="선택" class="projectCheck flowSelect_" data-langcode="CLP1003"></button>
		<button type="button" title="중요" class="icon_star_" id="IMPT_YN" data-langcode="CC672"></button>
		<span class="CONVT_DTTM" style="position: absolute;right: 80px;bottom: 50%;margin-bottom: -10px;"></span>
		
		<div class="thumbnail"></div>
		<div class="titlebox">
			<a id="TITLE"></a>
			<span id="officialProject" class="official-project" style="display: none;"><em class="blind">공식 프로젝트</em></span>
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
			<input type="hidden" name="collaboInfo" id="collaboInfo" value="">
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

<div id="boxPreview_item" style="display:none">
<div class="collabo_cont" id="boxPreview">
	<div class="collabo_box">
		<div id="CONTENT_RGSR">
		<img src="/design2/img_rn/img_photo_null32.png" alt="" class="user_photo" onerror="this.src='/design2/img_rn/img_photo_null32.png'"><!-- 사진이미지 -->
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
    </body>
</html>

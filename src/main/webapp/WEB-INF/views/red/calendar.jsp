<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<link href='/hwabo/resources/calendar/main.css' rel='stylesheet' />
<script src='/hwabo/resources/calendar/main.js'></script>
<script>
function showCalendar(){
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      initialDate: '2020-09-12',
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectMirror: true,
      select: function(arg) {
      var title = prompt('일정 메모');
      //ajax insert 시작////////////////////////
      var argAllDay = 1;
      if(arg.allDay != true){
        	argAllDay = 0;
      }
      console.log('arg.end.toISOString().slice(0, 19).replace(\'T\', \' \')' + arg.end.toISOString().slice(0, 19).replace('T', ' '));
      console.log('arg.end.toISOString().slice(0, 19)' + arg.end.toISOString().slice(0, 19));
      console.log('arg.end.toISOString()' + arg.end.toISOString());
      console.log('arg.end' + arg.end);
      
      $(function(){//에이작스 시작
        	$.ajax({
        		url:"sendCalendar.do",
        		data:{
        			pnum : $("#calpnum").val(), 
        			ucode : $("#calucode").val(), 
        			uname : $("#caluname").val(),
        			title : title,
        			start_date : arg.start.toISOString(),
        			end_date : arg.end.toISOString(),
        			allday : argAllDay
        		},
        		type: "post",
        		success: function(result){
        			if(result == "ok"){
    					console.log("달력 일정 등록 완료...");
    					
    				}else{
    					console.log("달력 일정 등록 실패...");
    				}
        		},
        		error: function(request,status,errorData){
        			console.log("error code : " + request.status + "\nMessage :" + request.responseText + "\nError :" + errorData);
        		}
        	})
      });//에이작스 끝
      //ajax insert 끝////////////////////////
        if (title) {
          calendar.addEvent({
            title: title,
            start: arg.start.toISOString(),
            end: arg.end.toISOString(),
            allDay: arg.allDay//true false (return boolean)
          })
        }
        calendar.unselect()
      },
      eventClick: function(arg) {
        if (confirm('Are you sure you want to delete this event?')) {
          arg.event.remove()
        }
      },
      editable: true,
      dayMaxEvents: true, // allow "more" link when too many events
      events: [
    	  <c:forEach var="calIndex" items="${ requestScope.cal }" varStatus="status">
    	  
    	  
    	  
      	  <c:if test="${ !status.first }">
          ,
          </c:if>
          {
            title: '${calIndex.title}',
          
          <c:if test="${calIndex.start_date == calIndex.end_date}">
            start: '${fn:substring(calIndex.start_date,0,10)}',
          </c:if>
          <c:if test="${calIndex.start_date != calIndex.end_date}">
          start: '${fn:substring(calIndex.start_date,0,10)}',
          </c:if>
          
          <c:if test="${calIndex.end_date == calIndex.start_date}">
            end: '${fn:substring(calIndex.end_date,0,10)}'
          </c:if>
          <c:if test="${calIndex.end_date != calIndex.start_date}">
            end: '${fn:substring(calIndex.end_date,0,10)}'
          </c:if>
          }
  			</c:forEach>
  			
  		/* 	,{
  	            title: 'tetete',
  	            start: 'Sat Sep 12 2020 00:00:00 GMT+0900',
  	            end: 'Sat Sep 12 2020 00:00:00 GMT+0900'
  	          } */
  			
      ]
    });

    calendar.render();
  });
}
showCalendar();
</script>
<style>

#calendar_body{
    margin: 0;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
}

#calendar {
    max-width: 1100px;
    margin: 0 auto;
}

</style>
</head>
<body>
<div id="calendar_body">
  <div id='calendar'></div>
</div>
<input type="hidden" value="${ pnum }" id="calpnum">
<input type="hidden" value="${ ucode }" id="calucode">
<input type="hidden" value="${ uname }" id="caluname">
--------<br>
<c:forEach var="calIndex" items="${ requestScope.cal }" varStatus="status">
        ${status.count }
          title: '${calIndex.title}',
          start: '${calIndex.start_date}',
          end: '${calIndex.end_date}'
          <hr>
</c:forEach>
<br>-----------
<script type="text/javascript">

/* $(function(){
 $(".fc-scrollgrid-sync-inner").on("click",function(){
	 
 });
});

$(function(){
	if(!($(".fc-today-button").is(":disabled"))){
		$(".fc-today-button").hide();
	}
}); */
</script>
</body>
</html>

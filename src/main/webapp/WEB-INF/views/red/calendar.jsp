<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        var title = prompt('Event Title:');
        //ajax insert 시작////////////////////////
        $(function(){
        	$.ajax({
        		url:"sendCalendar.do",
        		data:{
        			
        		},
        		type: "post",
        		success: function(result){
        			if(result == "ok"){
    					console.log("달력 일정 등록 완료...");
    					
    				}else{
    					console.log("달력 일정 등록 실패...");
    				}
        		},
        		error: function(request,status,errorDate){
        			console.log("error code : " + request.status + "\nMessage :" + request.responseText + "\nError :" + errorData);
        		}
        	})
        });
        //ajax insert 끝////////////////////////
        alert(arg.end.toString());
        if (title) {
          calendar.addEvent({
            title: title,
            start: arg.start,
            end: arg.end,
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
        {
          title: 'All Day Event',
          start: '2020-09-01'
        },
        {
          title: 'Long Event',
          start: '2020-09-07',
          end: '2020-09-10'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2020-09-09T16:00:00'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2020-09-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2020-09-11',
          end: '2020-09-13'
        },
        {
          title: 'Meeting',
          start: '2020-09-12T10:30:00',
          end: '2020-09-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2020-09-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2020-09-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2020-09-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2020-09-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2020-09-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2020-09-28'
        }
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
<script type="text/javascript">
/*<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2020-09-12&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">12</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past"><div class="fc-daygrid-event-dot"></div><div class="fc-event-time">10:30a</div><div class="fc-event-title">Meeting</div></a></div><div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past"><div class="fc-daygrid-event-dot"></div><div class="fc-event-time">12p</div><div class="fc-event-title">Lunch</div></a></div><div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past"><div class="fc-daygrid-event-dot"></div><div class="fc-event-time">2:30p</div><div class="fc-event-title">Meeting</div></a></div><div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past"><div class="fc-daygrid-event-dot"></div><div class="fc-event-time">5:30p</div><div class="fc-event-title">Happy Hour</div></a></div><div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past"><div class="fc-daygrid-event-dot"></div><div class="fc-event-time">8p</div><div class="fc-event-title">Dinner</div></a></div><div class="fc-daygrid-day-bottom" style="margin-top: 22px;"><a class="fc-daygrid-more-link">+5 more</a></div></div><div class="fc-daygrid-day-bg"></div></div>// "fc-daygrid-day fc-day fc-day-sat fc-day-past" */ 

$(function(){
 $(".fc-scrollgrid-sync-inner").on("click",function(){
	 
 });
});

$(function(){
	if(!($(".fc-today-button").is(":disabled"))){
		$(".fc-today-button").hide();
	}
});
</script>
</body>
</html>


	$('#pmember-tab').on('click',function(){
		 $.ajax({
			url:"pmlist.do",
			type:"post",
			contentType:"application/json; charset=utf-8;",
			dataType:"Json",
			success: function(data){
				var values = $("#pmlistBox").html();
				
				var values = $("#pmlistBox").html("");
				for(var i in data){
					values += 
					'<tr>'
					+ '<td colspan="2" style="padding:0px;left:5%">'
					+ '<img class="thumbnail circle" src="'
					+ data[i].uimg
					+ '">' 
					+ '</td> <td class="align-middle my-6 ">'
					+ data[i].uname
					+ '</td> <td class="align-middle">'
					+ data[i].uemail
					+ '</td> <td class="align-middle">'
					+ data[i].uphone
					+ '</td> <td class="align-middle">'
					+ data[i].ugroup
					+ '</td> <td class="align-middle">'
					+ data[i].urole
					+ '</td> <td class="mcode">'
					+ data[i].ucode
					+'</td><th class="align-middle"><select class="prole btn-light show-tick w-75" onchange="roleChange()">'
					+'<option selected value="2">일반회원</option>'
					+'<option value="1">관리자</option>'
					+'<option value="3">이용중지</option>'
					+'</select></th>'
				}
				
				$('#pmlistBox').html(values);
			},
			error: function(request, status, errorData){
			}
		}); 
	});
	
	$('#npmember-tab').on('click',function(){
		 $.ajax({
			url:"nmlist.do",
			type:"post",
			contentType:"application/json; charset=utf-8;",
			dataType:"Json",
			success: function(data){
				alert('성공');
				var values = $("#nmlistBox").html();
				
				var values = $("#nmlistBox").html("");
				for(var i in data){
					values += 
					'<tr>'
					+ '<td colspan="2" style="padding:0px;left:5%">'
					+ '<img class="thumbnail circle" src="'
					+ data[i].uimg
					+ '">' 
					+ '</td> <td class="align-middle my-6 ">'
					+ data[i].uname
					+ '</td> <td class="align-middle">'
					+ data[i].ugroup
					+ '</td> <td class="align-middle">'
					+ data[i].urole
					+'</td><td class="align-middle"><input type="button" class="btn btn-sm btn-outline-primary" value="추가"'
					+ 'onclick="addInvite()"></td></tr>'
				}
				
				$('#nmlistBox').html(values);
			},
			error: function(request, status, errorData){
			}
		}); 
	});
	
function roleChange(){
	
	var tr = $(event.target).parent().parent().eq(0);
	var td = tr.children();
	var data = 
		{'ucode' : td.eq(6).text(),
		 'prole' : $(event.target).val()}
	
	$.ajax({
		
	});
	
}
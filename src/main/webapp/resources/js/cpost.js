//$('#btn-save').click( function() {
//		 alert('hi');
//		} );
	    $(document).ready(function(){
	        $('.del_img').click(function(){
	            $(this).parent().hide();
	         
	            return false;
	        });
	    });
	    
	    var dropFile = function(event) {
	    	   event.preventDefault();
	    	}
	    

$(document).ready(function (e){
  $("input[type='file']").change(function(e){

    //div 내용 비워주기
	  $('#preview').empty();
	
	  
    var files = e.target.files;
    var arr =Array.prototype.slice.call(files);

    preview(arr);
    
  });//file change

  
  function preview(arr){
    arr.forEach(function(f){
    	
    	var fileName = f.name;
        
        if(fileName.length > 10){
          fileName = fileName.substring(0,15)+"...";
        }
        
      //div에 이미지 추가
      var str = '<td>';
      str += '<span class="text-nowrap" style="font-size:0.5em">'+fileName+'</span>';
      str += '<i class="fa fa-times-circle mt-2" onclick="removetd()"></i><br>';
      
      if(f.type.match('image.*')){
        var reader = new FileReader(); 
        reader.onload = function (e) { 
         // str += '<button type="button" class="delBtn" value="'+f.name+'" style="background: red">x</button><br>';
          str += '<img src="'+e.target.result+'" title="'+f.name+'" width=100 height=100 />';
          str += '</td>';
          $(str).appendTo('#preview');
        } 
        reader.readAsDataURL(f);
      }else{
        str += '<img src="resources/maincss/img/suugit/file_altimg.svg" title="'+f.name+'" width=100 height=100 />';
        $(str).appendTo('#preview');
      }
    }); 
  }
});

function removetd() {
	$(event.target).value = "";
	$(event.target).closest('td').remove();

}





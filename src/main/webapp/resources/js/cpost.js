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
      str += '<span>'+fileName+'</span><br>';
      
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
        str += '<img src="/resources/img/fileImg.png" title="'+f.name+'" width=100 height=100 />';
        $(str).appendTo('#preview');
      }
    }); 
  }
});




var filesUpload = document.getElementById("atchm_file");
var  fileList = document.getElementById("file_list"); 
var fileCount =0;

function fn_FilesUpload(files){

    var id = 0;
    var div
    var fileinfo;
    var max = 3;
    var files_length = files.length;
    var tempCount = fileCount;
    
    tempCount += files_length;
    if( max >= tempCount ) {
       for (var i=0; i<files_length; i++) { 

    	   filesUpload.name ='file_'+fileCount;
    	   console.log(fileCount);
    	   console.log(filesUpload);

    
           file =  files[i]; 
           console.log(file);
           fileInfo = "<td>"
                        + file.name+"</td>"; 
           fileInfo += "<td>"
                         + file.size +" bytes </td>"; 
           fileInfo += "<td>"
                         + file.type+"</td>"; 
           fileInfo += "<td><button>삭제</button></td>"; 
     
           li.innerHTML = fileInfo; 
           fileList.appendto('#egovComFileList');
           this.fileCount += 1;
         }
       }else {
       alert("첨부 파일 갯수가 많습니다.  : "+fileCount);   
       tempCount -= fileLength;
       }; 
   }
   
  filesUpload.onchange = function () { 
     fn_FilesUpload(this.files); 
  }; 






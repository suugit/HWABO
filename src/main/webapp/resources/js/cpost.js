$('#btn-save').click( function() {
		 alert('hi');
		} );
/*
	$('#atchm_file').click(function(){
		$('#addDiv').append('<div class="inputArea">')
		$('#addDiv').append('<label for="ofile1">이미지</label>')
		$('#addDiv').append('<input type="file" id="ofile1" name="ofile1">')
		$('#addDiv').append('<div class="select_img"><img src="" /></div>')
	});*/

	  function readURL(input) {
	        if (input.files && input.files[0]) {
	            var reader = new FileReader();
	            reader.onload = function(e) {
	                $('#foo').attr('src', e.target.result);
	            }
	            reader.readAsDataURL(input.files[0]);
	        }
	    }

	  /*  $("#atchm_img").change(function() {
	        readURL(this);
	        $(this).parent().show();
	    });
	    
	    $("#atchm_img").change(function(){
	    	$(this).show();
	    	   if(this.files && this.files[0]) {
	    	    var reader = new FileReader;
	    	    reader.onload = function(data) {
	    	     $(".select_img img").attr("src", data.target.result).width(100);   
	    	    }
	    	    reader.readAsDataURL(this.files[0]);
	    	   }
	    	  });
	    
	    
	    $(document).ready(function(){
	        $('.del_img').click(function(){
	            $(this).parent().hide();
	         
	            return false;
	        });
	    });
	    
	    var dropFile = function(event) {
	    	   event.preventDefault();
	    	}
	    */
	  
	    	
	   $(document).ready(function(){  123123
		   $('#atchm_img').on("change",()=>)
	   })



$(document).ready(function () {           

  $("#user_category").change(function(event) {
  	console.log(event);

  	window.location = "results/" + event.target.value;

    // var state = $('select#category_id :selected').val();
    // if(state == "") state="0";
    // jQuery.getJSON('/user/results/' + state, function(data){
    //     $("#category_textbox").val(data.message);
    // })
    return false;
  });

});


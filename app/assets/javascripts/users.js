$(document).ready(function() {           
  $("#user_category").change(function(event) {
  	console.log(event);
    
    window.location.assign("/users/results/" + event.target.value);

  });
});

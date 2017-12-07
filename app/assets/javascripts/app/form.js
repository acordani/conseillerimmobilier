$(document).ready(function() {
	$("#experience_currently_work").change(function() {

	    if ( $("#experience_currently_work").val() == "1"){

	    $("#ends").toggle();
	    }
	    

	    $("#sale_phase").change(function() {
	    	if ( $("#sale_phase").val() == "Vendu"){
	    		$("#price").hide();
	    	}
	    })


	});

	$("#sale_phase").change(function() {
    	if ( $("#sale_phase").val() == "Vendu"){
    		$("#price").hide();
    	} else {$("#price").show()}
    });

    $(".competence-choice").click(function(){
		$(this).toggleClass("active");
	});
});
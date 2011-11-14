// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// ============ Switch divs for sorting questions ===========
var ids=new Array('all_questions', 'recent_questions', 'approved_questions','int_questions','ftv_questions','qt_questions','ref_questions','ma_questions','sit_questions');

function switchid(id){	
	hideallids();
	showdiv(id);
}

function hideallids(){
	//loop through the array and hide each element by id
	for (var i=0;i<ids.length;i++){
		hidediv(ids[i]);
	}		  
}

function hidediv(id) {
	//safe function to hide an element with a specified id
	if (document.getElementById) { // DOM3 = IE5, NS6
		document.getElementById(id).style.display = 'none';
	}
	else {
		if (document.layers) { // Netscape 4
			document.id.display = 'none';
		}
		else { // IE 4
			document.all.id.style.display = 'none';
		}
	}
}

function showdiv(id) {
	//safe function to show an element with a specified id
		  
	if (document.getElementById) { // DOM3 = IE5, NS6
		document.getElementById(id).style.display = 'block';
	}
	else {
		if (document.layers) { // Netscape 4
			document.id.display = 'block';
		}
		else { // IE 4
			document.all.id.style.display = 'block';
		}
	}
}



// ============ End div switch stuff ========================



// jQuery plugins code
	$(function() {
		$(".datepicker").datepicker();
		$( "#accordion" ).accordion({ autoHeight: false, active: true, collapsible: true });
	});
	
	
// Flash fade
	$(function() {
	   $("#flash_notice").fadeIn('normal', function() {
	      $(this).delay(3700).fadeOut();
	   });
		 $("#flash_error").fadeIn('normal', function() {
	      $(this).delay(3700).fadeOut();
	   });
		 $("#flash_alert").fadeIn('normal', function() {
	      $(this).delay(3700).fadeOut();
	   });
	});





// TokenInput code (TODO: CHANGE)
	// $(function() {
	//   $("#item_category_tokens").tokenInput("/categories.json", {
	//     crossDomain: false,
	//     prePopulate: $("#item_category_tokens").data("pre"),
	// 		theme: 'facebook'
	//   });
	// 
	// 	$("#item_color_tokens").tokenInput("/colors.json", {
	//     crossDomain: false,
	//     prePopulate: $("#item_color_tokens").data("pre"),
	// 		theme: 'facebook'
	//   });
	// });


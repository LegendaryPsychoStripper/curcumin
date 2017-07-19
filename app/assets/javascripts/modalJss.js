
function show_modal(modal){
	var $html = $(document.documentElement);
	var modal_name = "#" . modal;
	var $modal = $(modal_name);
    $html.css('overflow', 'hidden');
    $modal.show().css('overflow', 'auto');
	document.getElementById(modal).style.display="block";
	
	
	
	
	
}


function hide_modal(modal){
	var $html = $(document.documentElement);
	var modal_name = "#" . modal;
	var $modal = $(modal_name);
	$html.css('overflow', '');
	$modal.hide();

	var modalclose = modal + '_close';
	document.getElementById(modal).style.display="none";
	
	
}


 
var slideIndex=1;
var idx=1;
document.getElementById("section_eight").style.backgroundImage = slides[0];

showSlides(slideIndex);
showBeneficii(idx);
function plusSlides(n){
	showSlides(slideIndex += n);
}
function currentSlide(n){
	showSlides(slideIndex = n);
}
function showSlides(n){
	var i;
	var slides = ["url('assets/pexels-photo-88636.jpg')", "url('assets/pexels-photo-219833.jpg')", "url('assets/pexels-photo.jpg')"];
	var titles = ["title1", "title2", "title3"];
	var texts = ["text1", "text2", "text3"];
	if(n > slides.length){
		slideIndex = 1;
	}
	if(n < 1){
		slideIndex = slides.length;
	}
	for(i=0;i<slides.length;i++){
		document.getElementById(titles[i]).style.display = "none";
		document.getElementById(texts[i]).style.display = "none";
	}
	document.getElementById(titles[slideIndex-1]).style.display = "inline-block";
	document.getElementById(texts[slideIndex-1]).style.display = "inline-block";
	document.getElementById("section_eight").style.backgroundImage = slides[slideIndex-1];
	
}



function plusBeneficii(n){
	showBeneficii(idx += n);
}
function currentBeneficii(n){
	showBeneficii(idx = n);
}
function showBeneficii(n){
	var i;
	var titlesBeneficii = ["beneficii_1", "beneficii_2", "beneficii_3"];
	if(n > titlesBeneficii.length){
		idx = 1;
	}
	if(n < 1){
		idx = titlesBeneficii.length;
	}
	
	for(i=0;i<titlesBeneficii.length;i++){
		//document.getElementById(titlesBeneficii[i]).style.display = "none";
		//$("#beneficii_1").animate({opacity: '0'});
		
		$("#beneficii_" + i).fadeOut(300);
		document.getElementById(titlesBeneficii[i]).style.display = "none";
	}
	$("#beneficii_" + idx).fadeIn(300);
    
	
}
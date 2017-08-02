function js_Load(){
document.body.style.display='inline';
}

$("navigation").on("swipeleft",function(){
  $(this).hide();
});

$("navigation").on("swiperight",function(){
  $(this).hide();
});
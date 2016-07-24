// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require masonry/jquery.masonry
//= require turbolinks
//= require_tree .
$(function(){
	$(".button").hover(function() {
		if($("#c").is(":checked")){
			$(".button").addClass("button2")
		}
		else
		{
			$(".button").removeClass("button2")
		}
	});

	$('#error_explanation').css("display","none").append("<div class='cls'><p style='text-align:center;margin: 5px;'>x</p></div>").slideDown(300);
		$('.cls').css({"float":"right","color":"#aaa","font-size":"16px","font-weight":"bold","cursor":"pointer","height":"30px","width":"30px","border-radius":"100%","text-align":"center"}).addClass("button2");
	$('.cls').click(
		function()
		{ 
			$("#error_explanation").slideUp(300);
		});
});

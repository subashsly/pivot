// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .
//= require_self
$(document).ready(function(){
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

$(document).ready(function(){
$(window).scroll(startCounter);
function startCounter() {
    if ($(window).scrollTop() > 450) {
        $(window).off("scroll", startCounter);
        $('.Count').each(function () {
            var $this = $(this);
            jQuery({ Counter: 0 }).animate({ Counter: $this.text() }, {
                duration: 1500,
                easing: 'swing',
                step: function () {
                    $this.text(Math.ceil(this.Counter));
                }
            });
        });
    }
}
});

var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-34160351-1']);
_gaq.push(['_trackPageview']);
(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();



// form validation
$(document).ready(function() {
		$('#contact_name').on('input', function() {
			// Name can't be blank
$('#contact_name').on('input', function() {
	var input=$(this);
	var is_name=input.val();
	if(is_name){
		input.removeClass("invalid").addClass("valid");
		$("#contact_name").css('border', '2px solid green');
	}else{
		input.removeClass("valid").addClass("invalid");
		$("#contact_name").css('border', '2px solid red');
	}
});
});

	
	$("#contact_submit").click(function(event){
		var form_data=$("#contact_form").serializeArray();
		var error_free=true;
		
		for (var input in form_data){
			var element=$("#contact_"+form_data[input]['name']);
			var valid=element.hasClass("valid");
			if (valid){
				element.css('border', '2px solid green');
			}else{
				element.css('border', '2px solid red');
				error_free = false;
			}
		}
		var message=$("#contact_course").val();
		if (message == null) {
			$("#contact_course").css('border', '2px solid red');
				error_free = false;
		}else{
			$("#contact_course").css('border', '2px solid green');
		}
		if (error_free == false){
			event.preventDefault(); 
			alert("Please fill all the fields");
		}else{
		}
	});


	
   


	$('#contact_message').keyup(function(event) {
		var input=$(this);
		var message=$(this).val();
		console.log(message);
		if(message){
			input.removeClass("invalid").addClass("valid");
			$("#contact_message").css('border', '2px solid green');
		}else{
			input.removeClass("valid").addClass("invalid");
			$("#contact_message").css('border', '2px solid red');
		}	
	});
		$('#contact_course').change(function(event) {
			var input=$(this);
			var message=$(this).val();
			$("#contact_course").css('border', '2px solid green');
			console.log(message);
			if(message){
				input.removeClass("invalid").addClass("valid");
			}else{
				input.removeClass("valid").addClass("invalid");}	
		});
	

	$('#contact_phone').keyup(function(event) {
	var input=$(this);
	var message=$(this).val();
	console.log(message);
	var re=/^\d{10}$/;
	var is_phone = re.test(message);
	if(is_phone){
		input.removeClass("invalid").addClass("valid");
		$("#contact_phone").css('border', '2px solid green');
	}else{
		input.removeClass("valid").addClass("invalid");
		$("#contact_phone").css('border', '2px solid red');
	}	
});

	$('#contact_email').on('input', function() {
		var input=$(this);
		var re = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
		var is_email=re.test(input.val());
		if(is_email){
			input.removeClass("invalid").addClass("valid");
			$("#contact_email").css('border', '2px solid green');
		}else{
			input.removeClass("valid").addClass("invalid");
			$("#contact_email").css('border', '2px solid red');
		}
	});
});

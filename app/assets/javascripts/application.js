// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(function() {
    $('.slide_wrap section').hide();
    $('.slide_wrap section:first').show();
    $('.slide_thumbs ul li a:first').addClass('active');

    $('.slide_thumbs ul li a').click(function() {
        if ($(this).hasClass('active') == true) {
            return false;
        }
        else {
            $('.slide_thumbs ul li a').removeClass('active');
            $(this).addClass('active');

            $('.slide_wrap section').fadeOut(800);
            var contentToLoad = $(this).attr('href');
            $(contentToLoad).fadeIn(1200);
             $(contentToLoad).promise().done(function(){
             	}); // will be called when all the animations on the queue finish

            return false;
        }
    });
});


$(function() {
$("h5#clone").click(function(){
 
      $('.snippet_form:first').clone().insertAfter(".snippet_form:last");
 
    });
});


setTimeout(function() {
    $('p.notice').fadeOut('slow');
}, 2000); // <



    $(document).ready(function(){
    $('p.post_heading').click(function(){
        $(this).prev('.ace_editor').slideToggle("slow");
    });
    
    $('.post_entry.code .ace_editor').click(function(){
        $(this).slideToggle("slow");
    });
});




   $(document).ready(function(){
    $('.toggle').click(function(){
        $(this).prev('.selection').slideToggle("slow");
    });
    
    $('.selection').click(function(){
        $(this).slideToggle("slow");
    });
});

$(document).ready(function(){
   $(".ace_editor .ace-solarized-light .ace_nobold").css({ 'height': "400px" });
   });
//$(document).ready(function(){
//var editor = ace.edit("editor");
//editor.setTheme("ace/theme/twilight");

//$("textarea#post_content").hide();
//$("#form_ID").submit(function(){
//$("textarea#post_content").val(editor.getSession().getValue());
//});
//});
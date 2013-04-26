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
}, 2000); 


// <
$(document).ready(function(){
    $('p.post_heading').click(function(){
        $(this).prev('.ace_editor').slideToggle("slow");
    });
    
    $('.post_entry.code .ace_editor').click(function(){
        $(this).slideToggle("slow");
    });
});

$(document).ready(function(){
    $('.post_heading').click(function(){
        $(this).prev('.selection').slideToggle("slow");
    });
    
    $('.selection').click(function(){
        $(this).slideToggle("slow");
    });
});

$(document).ready(function(){
    $(".toggler").click(function(e){
        e.preventDefault();
 
        $(this).find('ul').slideToggle(1);
        $(this).toggleClass("active");
        return false;
    });
});

$(document).ready(function(){
    $('.post_heading').click(function(){
        $(this).next('.post_entry.code').slideToggle("slow");
        $(this).toggleClass('active');
    });
    $('.post_heading.close').click(function(){
        $(this).slideToggle("slow");
    });
});


$(document).ready(function(){
    $('.more_about').click(function(){
        $(this).next('section#about').slideToggle("slow");
        $(this).toggleClass('open');
    });
    $('.more_about.close').click(function(){
        $(this).slideToggle("slow");
    });
});




$(document).ready(function(){
   $(".ace_editor .ace-solarized-light .ace_nobold").css({ 'height': "400px" });
   });

$(document).ready(function(){
$('<p class="post_heading long"> CSS </p>', { id: 'holdy' }).prependTo('.post_content.css');
$('<p class="post_heading long"> HTML </p>', { id: 'holdy' }).prependTo('.post_content.html');
$('<p class="post_heading long"> HAML </p>', { id: 'holdy' }).prependTo('.post_content.haml');
$('<p class="post_heading long"> SCSS </p>', { id: 'holdy' }).prependTo('.post_content.scss');
$('<p class="post_heading long"> JAVASCRIPT </p>', { id: 'holdy' }).prependTo('.post_content.javascript');
$('<p class="post_heading long"> RUBY </p>', { id: 'holdy' }).prependTo('.post_content.ruby');
 });


$(document).ready(function(){

    $(".search input#search").click(function(){
 $('.search input[type="image"]').addClass("working").fadeIn(300);

      });
});


$('.search input#search').on('blur', function(){
   $(this).next('input').removeClass('main').addClass('working');
}).on('focus', function(){
  $(this).next('input').removeClass('input-desc').addClass('input-desc-hover');
});




$(function(){
$("#list_view").click(function(){
    $(this).addClass("flip");
    $(".content_wrap.show_page").fadeOut("fast", function() {
        $(this).delay(130).removeClass("resized_grid").addClass("resized_list").delay(530).fadeIn("slow");
    $("#grid").removeClass("flip");
    // working 
    $("content_wrap.show_page.resized_gridsection section.batches > .snippet:nth-child(3n+3)").addClass('last');

});
  }); 
    });


$(function(){
$("#grid").click(function(){
    $(this).addClass("flip");
    $(".content_wrap.show_page").fadeOut("fast", function() {
        $(this).delay(130).removeClass("resized_list").addClass("resized_grid").delay(530).fadeIn("slow");
    $("#list_view").removeClass("flip");
    // 
    
});
  }); 
    });



    



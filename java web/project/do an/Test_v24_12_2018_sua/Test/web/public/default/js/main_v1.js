$(document).on('scroll', function() {
  if ($(document).scrollTop() > 150) {
	  $('.menu').addClass('navbar-fixed-top');							
  } else {
	  $('.menu').removeClass('navbar-fixed-top');						
  }
});

(function($) {
$.fn.menumaker = function(options) {  
 var cssmenu = $(this), settings = $.extend({
   format: "dropdown",
   sticky: false
 }, options);
 return this.each(function() {
   cssmenu.find('li ul').parent().addClass('has-sub');
   
multiTg = function() {
	
     cssmenu.find(".has-sub").prepend('<span class="submenu-button"></span>');
     cssmenu.find('.submenu-button').on('click', function() {
       $(this).toggleClass('submenu-opened');
       if ($(this).siblings('ul').hasClass('open')) {
         $(this).siblings('ul').removeClass('open').slideToggle();
       }
       else {
         $(this).siblings('ul').addClass('open').slideToggle();
       }
     });
   };
   if (settings.format === 'multitoggle') multiTg();
   else cssmenu.addClass('dropdown');
 
resizeFix = function() {
cssmenu.find('ul').show();
cssmenu.find('.has-sub ul').hide();
cssmenu.find('.next_has ul').show();
cssmenu.find('.next_has ul ul').hide();
   };
   resizeFix();
   return $(window).on('resize', resizeFix);
 });
  };
})(jQuery);

(function($){
$(document).ready(function(){
$("#cssmenu").menumaker({
   format: "multitoggle"
});
});
})(jQuery);



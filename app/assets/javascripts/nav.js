$(document).ready(function($){

  $(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
      $('.navbar-brand').addClass('scrolled') 
      $('.navbar').addClass('navbar-white');
    } else {
      $('.navbar-brand').removeClass('scrolled') 
      $('.navbar').removeClass('navbar-white');

    } 
});




  // var offset = 100,
  // $navbar = $('.navbar'),
  // $navbarbrand = $('.navbar-brand');

  // $(window).scroll(function(){
  //   ( $(this).scrollTop() > offset ) ? $navbarbrand.addClass('scrolled') & $navbar.addClass('navbar-white') : $navbarbrand.removeClass('scrolled') & $navbar.removeClass('navbar-white');
    
 });


// });
$(document).ready(function() {
  $('.header-hamburger>img').on('click', function() {
    $(".sidebar-bg").show();
    $('#sidebar').show();
    $('body').css({overflow: 'hidden'}); 
  });
  $('.sidebar-close').on('click', function() {
    $(".sidebar-bg").hide();
    $('#sidebar').hide();
    $('body').css({overflow: ''});
  });
});
let flag=0;
let prev;
prev=$('.faq-category-list').eq(0).children().eq(1);
$(document).ready(function(){
  $(".faq-list-radio").click(function(){
    var nextSpan = $(this).next("span");
    
      if(nextSpan.hasClass('faq-list-radio-white')){
        nextSpan.removeClass('faq-list-radio-white');
        nextSpan.addClass('faq-list-radio-blue');
        // if(flag!=0){
        //   $(prev).removeClass('faq-list-radio-blue');
        //   $(prev).addClass('faq-list-radio-white');
        // }
        
        $(prev).removeClass('faq-list-radio-blue');
        $(prev).addClass('faq-list-radio-white');
        flag++;
        prev=nextSpan;
      }
      // } else if(nextSpan.hasClass('faq-list-radio-blue')){
      //   nextSpan.removeClass('faq-list-radio-blue');
      //   nextSpan.addClass('faq-list-radio-white');
        
      //   $(prev).removeClass('faq-list-radio-blue');
      //   $(prev).addClass('faq-list-radio-white');
      //   flag=0;
      //   prev=nextSpan;
        
      // }
  })
})
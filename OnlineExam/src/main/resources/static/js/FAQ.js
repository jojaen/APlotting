$(".que_1").click(function() {
  $(this).next(".que_2").stop().slideToggle(300);
  $(this).toggleClass('on').siblings().removeClass('on');
});

$(document).ready(function(){
  
  $(".faq_1").show();
  $('.faq_2').show();
  $('.faq_3').show();
  $('.faq_4').show();
  $('.faq_5').show();
  
$("input[name='faqSelect']").change(function(){
  if($("input[name='faqSelect']:checked").val() == '전체'){
    $('.faq_1').show();
    $('.faq_2').show();
    $('.faq_3').show();
    $('.faq_4').show();
    $('.faq_5').show();
  }	
  else if($("input[name='faqSelect']:checked").val() == '기부자들'){
    $('.faq_1').show();
    $('.faq_2').hide();
    $('.faq_3').hide();
    $('.faq_4').hide();
    $('.faq_5').hide();
  }
  else if($("input[name='faqSelect']:checked").val() == '후원금'){
    $('.faq_1').hide();
    $('.faq_2').show();
    $('.faq_3').hide();
    $('.faq_4').hide();
    $('.faq_5').hide();
  }
  else if($("input[name='faqSelect']:checked").val() == '기부금영수증'){
    $('.faq_1').hide();
    $('.faq_2').hide();
    $('.faq_3').show();
    $('.faq_4').hide();
    $('.faq_5').hide();
  }
  else if($("input[name='faqSelect']:checked").val() == '후원중단'){
    $('.faq_1').hide();
    $('.faq_2').hide();
    $('.faq_3').hide();
    $('.faq_4').show();
    $('.faq_5').hide();
  }
  else if($("input[name='faqSelect']:checked").val() == '어린이양육'){
    $('.faq_1').hide();
    $('.faq_2').hide();
    $('.faq_3').hide();
    $('.faq_4').hide();
    $('.faq_5').show();
  }
});
  
});
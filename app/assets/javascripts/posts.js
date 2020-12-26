$(function(){
  $(document).on('keyup','#post_content',function(){
    let count = $(this).val().length;
    let $submit = $('.submit_btn');
    if( count >= 1 && count <= 140 ){
      $submit.css('background-color','#1fa2f2');
      $submit.removeClass('no_click');
    } else {
      $submit.css('background-color','#9bd1f9');
      $submit.addClass('no_click');
    };
    let calc_letters = 140 - count ;
    $('.count_letters').text(`残り${calc_letters}文字`);
    if(count >= 140){
      $('.count_letters').css('color','#e0255e');
    }else{
      $('.count_letters').css('color','#999999');
    };
  });
});

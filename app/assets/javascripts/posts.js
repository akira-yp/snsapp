$(function(){
    $(document).on('keyup','#post_content',function(){
    let count = $(this).val().length;
    let $submit = $('.submit_btn');
    $('.count_letters').text(count);
    if( count >= 1 && count <= 140 ){
      $submit.css('background-color','#1fa2f2');
      $submit.removeClass('no_click');
    } else {
      $submit.css('background-color','#9bd1f9');
      $submit.addClass('no_click');
    };
  });
});

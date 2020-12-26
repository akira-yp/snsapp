$(function(){
  $('#post_content').keyup(function(){
    var count = $(this).val().length;
    if( count >= 0 || count <= 140 ){
      $('.submit_btn').css('background-color':'#ffffff')
    }else{
      $('.submit_btn').css('background-color':'#9bd1f9')
    };
  });
});

pointer-events: none;

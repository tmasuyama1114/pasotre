//ボタンを押すごとに画面が切り替わる関数
$(function () {
  $(".btn-next").on("click", function (e) {
    e.preventDefault();
    $(this).closest("div").css("display", "none");
    id = $(this).attr("href");
    $(id).addClass("fit").fadeIn("slow").show();
  });

  $(".btn-last").on("click", function (e) {
    $(this).closest("div").css("display", "none");
    alert("Completed Today's Training !!");
  });

});

// 説明文をポップアップ表示させる関数
$(function(){
  $('.help-tooltip-trigger').on('click',function(){
    $(this).next().slideToggle('fast');
  });
});

// // フラッシュメッセージを時間差で消す関数
// $(function(){
//   setTimeout("$('.flash-message').fadeOut('slow')", 2000);
// });
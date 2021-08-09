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

$(function(){
  setTimeout("$('.flash-message').fadeOut('slow')", 2000);
});
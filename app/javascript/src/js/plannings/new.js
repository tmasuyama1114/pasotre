//ボタンを押すごとに画面が切り替わる関数
$(function () {
  $(".btn-next").on("click", function (e) {
    e.preventDefault();
    $(this).closest("div").css("display", "none");
    id = $(this).attr("href");
    console.log(id);
    $(id).addClass("fit").fadeIn("slow").show();
  });
});
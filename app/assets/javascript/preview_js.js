//画像プレビュー
$( document ).on('turbolinks:load',function() {
    function readURL(input) {
      if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
    $('#js_imgPrev').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
      }
    }
    $("#js_presentImg").change(function(){
      readURL(this);
    });
});
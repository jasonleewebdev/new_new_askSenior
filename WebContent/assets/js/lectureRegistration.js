function PreviewImage01() {
  var preview = new FileReader();
  preview.onload = function (e) {
    document.getElementById("user_image01").src = e.target.result;
  };

  preview.readAsDataURL(document.getElementById("img_main01").files[0]);
}
function PreviewImage02() {
  var preview = new FileReader();
  preview.onload = function (e) {
    document.getElementById("user_image02").src = e.target.result;
  };

  preview.readAsDataURL(document.getElementById("img_main02").files[0]);
}

function PreviewImage03() {
  var preview = new FileReader();
  preview.onload = function (e) {
    document.getElementById("user_image03").src = e.target.result;
  };

  preview.readAsDataURL(document.getElementById("img_main03").files[0]);
}

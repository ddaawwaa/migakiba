
document.addEventListener('DOMContentLoaded', function(){

  var btn = document.getElementById("user-name");
  var userMenu = document.getElementById("user-menu");
  
  function switchVisibilty(){
    if (userMenu.style.visibility == "visible"){
      userMenu.style.visibility = "hidden";
    }else{
      userMenu.style.visibility = "visible";
    }
  }
  
  btn.addEventListener('click', switchVisibilty, false);

},false);


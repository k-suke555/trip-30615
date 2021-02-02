window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("area-lists")
  const pullDownParents = document.getElementById("area-show-lists")

  pullDownButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:#bfbfbf;")
  })

  pullDownButton.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:#FFBEDA;")
  })

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    }
  })


})
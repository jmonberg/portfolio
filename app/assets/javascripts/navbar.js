$(document.ready(function(){

  $('.menu li a').click(function(e) {
    var $this = $(this);
    if (!$this.hasClass('active')) {
      $this.addClass('active');
    }
    e.preventDefault();
  });

});




var menu = document.querySelector('.menu');
var anchors = menu.getElementsByTagName('a');

for (var i = 0; i < anchors.length; i += 1) {
  anchors[i].addEventListener('click', function() { clickHandler(anchors[i]) }, false);
}

function clickHandler(anchor) {
  var hasClass = anchor.getAttribute('class');
  if (hasClass !== 'active') {
    anchor.setAttribute('class', 'active');
  }
}

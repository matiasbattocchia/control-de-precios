$(document).on('page:load', (function(){ if ($('#prices')) poll() }()));

function request() {
  priceId = $('.price:first').data('id');
  $.getScript('/list.js?id=' + priceId);
  poll();
}

function poll() {
  setTimeout(request, 3000);
}


$(document).on('page:load', if ($('#prices')) poll());

function request() {
  priceId = $('.price:first').data('id');
  $.getScript('/prices.js?id=' + priceId);
  poll();
}

function poll() {
  setTimeout(request, 3000);
}


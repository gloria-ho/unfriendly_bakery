'use strict';

$('#img_modal').on('show.bs.modal', function (event) {
  let button = $(event.relatedTarget)
  let item = button.data('info')
  let modal = $(this)
  $('#modal-img').attr("src", item)
})

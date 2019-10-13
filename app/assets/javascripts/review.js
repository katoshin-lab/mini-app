$(function() {

  function buildHTML(review) {
    var html = `<div class="content__reviews__review">
                  <div class="content__reviews__review--text">
                    ${review.text}
                  </div>
                  <div class="content__reviews__review--name">
                    ${review.name}
                  </div>
                </div>`
    return html;
  }
  

  $("#new_review").on('submit', function(e) {
    e.preventDefault();
    var formdata = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formdata,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data) {
      var html = buildHTML(data);
      $('.content__reviews').append(html)
      $('#review_text').val("")
    })
    .fail(function() {
      alert('文字を入力してください！');
    })
    .always(function() {
      $(".content__form__box__input--submit").removeAttr("disabled");
    })
  })
})
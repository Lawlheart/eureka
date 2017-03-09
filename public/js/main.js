(function($) {


$('body')

.on('click', '.close-forms', function(e) {
  $('.form-container').remove();
})
.on('click', '#edit-mode-button', function(e) {
  $('.edit-mode').toggleClass('hidden');
})

})(jQuery);


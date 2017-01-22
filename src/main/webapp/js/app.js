/*jshint devel:true */

// Overlay
$('.btn-overlay').on('click', function () {
    $('.overlay').css('height', '0%');
    $($(this).attr('href')).css('height', '100%');
});

$('.btn-overlay-close').on('click', function () {
    $('.overlay').css('height', '0%');
});

// oAuth Popup
$('.btn-fb').magnificPopup({
    type: 'inline',
    midClick: true,
    alignTop: false
});

/*jshint devel:true */

$(function () {
    // ----------------------------------------
    // Overlay
    $('.btn-overlay').on('click', function () {
        $('.overlay').css('height', '0%');
        $($(this).attr('href')).css('height', '100%');
    });

    $('.btn-overlay-close').on('click', function () {
        $('.overlay').css('height', '0%');
    });

    // ----------------------------------------
    // oAuth Popup
    $('.btn-fb, .btn-reg').magnificPopup({
        type: 'inline',
        midClick: true,
        alignTop: false
    });

    // ----------------------------------------
    // New Registration Popup
    $('#btn-reg-close').on('click', function () {
        $.magnificPopup.close();
    });

    if (window.location.pathname.includes("transfer/index")) {
        if (window.location.href.includes("newreg=true")) {
            $('.btn-reg').click();
        }
    }

    // ----------------------------------------
    // Estimate
    var updateEstimate = function () {
        var amount = $('#amount').val();
        var selected = $('input[type=radio][name=debitcurr]:checked');
        var debitcurr = $(selected).attr('data-to-code');
        var rate = $(selected).attr('data-rate');
        var cost = amount * rate;

        $('#cost-estimate').text(cost + ' ' + debitcurr);
        $('#cost').val(cost);
    };

    $('#amount').on('input', updateEstimate);
    $('input[type=radio][name=debitcurr]').on('change', updateEstimate);

    // ----------------------------------------
    // Wait Screen
    $('.btn-wait').magnificPopup({
        type: 'inline',
        alignTop: false,
        closeBtnInside: false,
        closeOnContentClick: false
    });

    if (window.location.pathname.includes("transfer/pleasewait")) {
        $('.btn-wait').click();

        setTimeout(function () {
            window.location.href = "/transfer/accountconfirm";
        }, 4000);
    }
});

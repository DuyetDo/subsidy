function ticket_down() {
    $('#ticket-zone').removeClass('ticket-toggle');
    setTimeout(function() {
        $('#table-zone').removeClass('table-half');
    }, 500);
}

function overlay_toggle() {
    $('#overlay-bg').fadeIn();
    setTimeout(function() {
        $('.overlay').addClass('toggle-zoom');
    }, 500);
}

function overlay_close() {
    $('.overlay').removeClass('toggle-zoom');
    setTimeout(function() {
        $('#overlay-bg').fadeOut();
    }, 200);
}


$(document).ready(function() {

    // layout

    $('#main-table').css('width', $('#main-blk').width() - 40);

    $('#main-menu li').click(function() {
        $(this).addClass('active');
        $('#main-menu li').not(this).removeClass('active');
    });

    $('.submenu li').click(function() {
        $(this).addClass('sub-active');
        $('.submenu li').not(this).removeClass('sub-active');
    });

    $('.menu-grp-tt').click(function() {
        var this_menu_grp = $(this).parent();
        this_menu_grp.toggleClass('active');
        $('.menu-grp').not(this_menu_grp).removeClass('active');
    });

    $('.open-ticket').click(function() {
        $('#table-zone').addClass('table-half');
        setTimeout(function() {
            $('#ticket-zone').addClass('ticket-toggle');
        }, 300);
        $('#main-content').css('min-height', $('#ticket-zone').height());
    });

    

    // btn overlay

    $('.btn-overlay').click(function() {
        overlay_toggle();
    });
    $('#overlay-close').click(function() {
        overlay_close();
    });

    // login

    $('#login').fadeIn('slow');
    setTimeout(function() {
        $('#login').addClass('login-toggle');
    }, 500);




});

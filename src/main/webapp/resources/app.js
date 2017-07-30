MAPP = {};
MAPP.ajaxLoading = false;
MAPP.getWS = function(url, settings) {
    if (MAPP.ajaxLoading) return;
    var chain = $.ajax({
        'url' : MAPP.baseUrl + url,
        'type' : 'GET',
        'dataType' : 'json',
        'cache' : false,
        'beforeSend' : function() {
            MAPP.ajaxLoading = true;
            $.blockUI({ message: '<h1> Loading...</h1>' });
            if (typeof settings.beforeSend != 'undefined') {
                settings.beforeSend();
            }
        }
    });
    if (typeof settings.onDone != 'undefined') {
        chain = chain.done(settings.onDone);
    }
    if (typeof settings.onFail != 'undefined') {
        chain = chain.fail(settings.onFail);
    }
    if (typeof settings.onFinally != 'undefined') {
        chain.always(function() {
            MAPP.ajaxLoading = false;
            $.unblockUI();
            settings.onFinally();
        });
    } else {
        chain.always(function() {
            $.unblockUI();
            MAPP.ajaxLoading = false;
        });
    }
};

MAPP.getWSNoLoading = function(url, settings) {
    if (MAPP.ajaxLoading) return;
    var chain = $.ajax({
        'url' : MAPP.baseUrl + url,
        'type' : 'GET',
        'dataType' : 'json',
        'cache' : false,
        'beforeSend' : function() {
            MAPP.ajaxLoading = true;
            if (typeof settings.beforeSend != 'undefined') {
                settings.beforeSend();
            }
        }
    });
    if (typeof settings.onDone != 'undefined') {
        chain = chain.done(settings.onDone);
    }
    if (typeof settings.onFail != 'undefined') {
        chain = chain.fail(settings.onFail);
    }
    if (typeof settings.onFinally != 'undefined') {
        chain.always(function() {
            MAPP.ajaxLoading = false;
            settings.onFinally();
        });
    } else {
        chain.always(function() {
            MAPP.ajaxLoading = false;
        });
    }
};
MAPP.postWSAction = function(url, settings) {
    if (MAPP.ajaxLoading) return;
    var chain = $.ajax({
        'url' : url,
        'type' : 'POST',
        'dataType' : 'json',
        'cache' : false,
        'data' : settings.data,
        'beforeSend' : function() {
            MAPP.ajaxLoading = true;
            $.blockUI({ message: '<h1> Loading...</h1>' });
            if (typeof settings.beforeSend != 'undefined') {
                settings.beforeSend();
            }
        }
    });
    if (typeof settings.onDone != 'undefined') {
        chain = chain.done(settings.onDone);
    }
    if (typeof settings.onFail != 'undefined') {
        chain = chain.fail(settings.onFail);
    }
    if (typeof settings.onFinally != 'undefined') {
        chain.always(function() {
            MAPP.ajaxLoading = false;
            $.unblockUI();
            settings.onFinally();
        });
    } else {
        chain.always(function() {
            $.unblockUI();
            MAPP.ajaxLoading = false;
        });
    }
};
MAPP.postWS = function(url, settings) {
    if (MAPP.ajaxLoading) return;
    var chain = $.ajax({
        'url' : MAPP.baseUrl + url,
        'type' : 'POST',
        'dataType' : 'json',
        'cache' : false,
        'data' : settings.data,
        'beforeSend' : function() {
            MAPP.ajaxLoading = true;
            $.blockUI({ message: '<h1> Loading...</h1>' });
            if (typeof settings.beforeSend != 'undefined') {
                settings.beforeSend();
            }
        }
    });
    if (typeof settings.onDone != 'undefined') {
        chain = chain.done(settings.onDone);
    }
    if (typeof settings.onFail != 'undefined') {
        chain = chain.fail(settings.onFail);
    }
    if (typeof settings.onFinally != 'undefined') {
        chain.always(function() {
            MAPP.ajaxLoading = false;
            $.unblockUI();
            settings.onFinally();
        });
    } else {
        chain.always(function() {
            $.unblockUI();
            MAPP.ajaxLoading = false;
        });
    }
};

MAPP.postWSNoLoading = function(url, settings) {
    if (MAPP.ajaxLoading) return;
    var chain = $.ajax({
        'url' : MAPP.baseUrl + url,
        'type' : 'POST',
        'dataType' : 'json',
        'cache' : false,
        'data' : settings.data,
        'beforeSend' : function() {
            MAPP.ajaxLoading = true;
            if (typeof settings.beforeSend != 'undefined') {
                settings.beforeSend();
            }
        }
    });
    if (typeof settings.onDone != 'undefined') {
        chain = chain.done(settings.onDone);
    }
    if (typeof settings.onFail != 'undefined') {
        chain = chain.fail(settings.onFail);
    }
    if (typeof settings.onFinally != 'undefined') {
        chain.always(function() {
            MAPP.ajaxLoading = false;
            settings.onFinally();
        });
    } else {
        chain.always(function() {
            MAPP.ajaxLoading = false;
        });
    }
};

MAPP.alertSuccess = function(message) {
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "positionClass": "toast-top-full-width",
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "1500",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "slideDown",
        "hideMethod": "slideUp"
    }
    toastr.success(message);
};

MAPP.alertError = function(message) {
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "positionClass": "toast-top-full-width",
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "1500",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "slideDown",
        "hideMethod": "slideUp"
    }
    toastr.error(message);
};

MAPP.popupSuccess = function(message) {
    swal("Thành công!", message, "success");
};

MAPP.popupError = function (message) {
    swal({
        title: "Lỗi!",
        text: message,
        type: "warning",
        confirmButtonText: 'OK'
    });
};

MAPP.confirm = function(message, callback) {
    swal({
            title: "Bạn có chắc chắn?",
            text: message,
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: '#F73939',
            confirmButtonText: 'OK, đồng ý!',
            cancelButtonText: 'Bỏ qua',
            closeOnConfirm: true
        },
        callback
    );
};

MAPP.formatNumber = function(number) {
    return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
};

MAPP.removeComma = function(numberWithComma) {
    return numberWithComma.toString().replace(/,/g, '');
};

MAPP.h = function(str) {
    return String(str).replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');
};

$(document).ready(function() {
    /**
     - mInteger: chỉ cho phép nhập số nguyên, không cho nhập dấu chấm
     - mNumber: tự động thêm dấu phẩy, không cho pho nhập text, 1 dấu chấm, sau dấu chấm chỉ nhập 2 số, không 2 dấu chấm liên tiếp
     */
    $('.mNumber').on('input', function() {
        var value = $(this).val();  // Dạng có dấu phẩy
        var len = value.length;
        var lenFix;
        var strCheck = '0123456789.';
        //Chỉ cho phép nhập số và dấu .
        if (strCheck.indexOf(value[len-1]) == -1)
        {
            $(this).val(value.slice(0,-1));
        }

        //Kiểm tra dấu .
        if (value[len-1]=='.'){
            if (value[len-2]=='.'||value[len-3]=='.'){
                $(this).val(value.slice(0,-1));
            }
        }
        if (value[len-4]=='.'){
            $(this).val(value.slice(0,-1));
        }

        //Chỉ cho phép nhập thêm hai số thập phân sau dấu .
        value = $(this).val();
        if (value.length>=lenFix +2){
            $(this).val(value.slice(0,-1));
        }

        value = $(this).val();
        value = MAPP.removeComma(value);    // Dạng không dấu phẩy
        $(this).val(MAPP.formatNumber(value));
    });

    $('.mInteger').on('input', function() {
        var value = $(this).val();  // Dạng có dấu phẩy
        var len = value.length;
        var lenFix;
        var strCheck = '0123456789';
        //Chỉ cho phép nhập số và dấu .
        if (strCheck.indexOf(value[len-1]) == -1)
        {
            $(this).val(value.slice(0,-1));
        }
    });
});



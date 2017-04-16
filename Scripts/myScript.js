$(document).ready(function () {

    var $close = $(".close");
    var $code = $("#code");
    var $pass = $("#password");
    var $order = $("#order");
    var $edit = $("#edit");
    var $back = $(".back");

    //$back.on("click", function () {
    //    $pass.trigger("click");
    //})

    $close.on("click", function () {
        $(this).parent().hide();
    });

    $code.on("click", function () {
        $(".boxCode").fadeIn();
        $(".boxPass").hide();
    });
    $pass.on("click", function () {
        $(".boxPass").fadeIn();
        $(".boxCode").hide();
        $(".boxNew").hide();
        $(".boxEdit").hide();
    });
    $order.on("click", function () {
        $(".boxNew").fadeIn();
        $(".boxPass").hide();
        $(".boxEdit").hide();
    });
    $edit.on("click", function () {
        $(".boxEdit").fadeIn();
        $(".boxPass").hide();
        $(".boxNew").hide();
    });


});
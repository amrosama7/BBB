﻿$(document).ready(function () {

    var $close = $(".close");
    var $code = $("#code");
    var $pass = $("#password");
    var $order = $("#order");
    var $edit = $("#edit");
    var $back = $(".back");
    var $search = $("#search");
    var $shadow = $(".shadow");

    //$back.on("click", function () {
    //    $pass.trigger("click");
    //})

    $close.on("click", function () {
        $(this).parent().hide();
        $shadow.hide();

    });

    $code.on("click", function () {
        $(".boxCode").fadeIn();
        $shadow.fadeIn();
    });
    $pass.on("click", function () {
        $(".boxCode").hide();
        $(".boxNew").hide();
        $shadow.fadeIn();
        $(".boxPass").fadeIn();
    });
    $order.on("click", function () {
        $(".boxNew").fadeIn();
        $shadow.fadeIn();
    });
    $edit.on("click", function () {
        $(".boxNew").hide();
        $shadow.fadeIn();
    });

    $search.on("click", function () {
        $(".boxNew").hide();
        $(".boxSearch").fadeIn();
        $shadow.fadeIn();
    });
    $shadow.on("click", function () {
        $shadow.hide();
        $(".boxCode").hide();
        $(".boxNew").hide();
        $(".boxSearch").hide();
        $(".boxPass").hide();
    });



});
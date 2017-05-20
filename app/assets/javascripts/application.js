// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require tether
//= require bootstrap-sprockets
//= require geocomplete
//= require gmaps/google
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker
//= require bootstrap-datepicker/locales/bootstrap-datepicker.ua.js
//= require_tree .


$(document).ready(function(){
  $(function() {

    $( "#departure" ).change(function() {
      $.get($("#routes_search").attr("action"), $("#routes_search").serialize(), null, "script");
      return false;
    })

    $( "#datepicker" ).change(function() {
      $.get($("#routes_search").attr("action"), $("#routes_search").serialize(), null, "script");
      return false;
    })

    $('#datepicker').datepicker({
      language: "uk",
      format: "yy-mm-dd",
      autoclose: true,
      todayHighlight: true,
      orientation: "bottom right",
      startDate: "dateToday"
    });

    $("#route_location").geocomplete({
      map: "#map",
      location: $("#route_location").text(),
      mapOptions: {
          zoom: 10,
          scrollwheel: true
      },
      detailsAttribute: "data-geo",
      blur: true,
      geocodeAfterResult: true
    });
  });
})

// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function(){

  $(".references_toggle").hide();
  $(".show_hide").show();
  $(".hide_references").hide();

  $('.show_references').click(function(){
    $(".references_toggle").slideToggle();
    $(".show_references").hide();
    $(".hide_references").show();
  });

  $('.hide_references').click(function(){
    $(".references_toggle").slideToggle();
    $(".show_references").show();
    $(".hide_references").hide();
  });

});

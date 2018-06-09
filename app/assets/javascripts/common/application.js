// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require jquery-ui
//= require foundation
//= require turbolinks
//= require_directory .

$(document).on('turbolinks:load', function() {
    $(function(){ $(document).foundation(); });

    $(function(){
        if($(window).width() < 960){
            $('div.content').removeClass('showContent').addClass('hideContent');
            $(".show-more a").text("Show more >>");
        }
    })

    $(".show-more a").on("click", function() {
        var $this = $(this); 
        var $content = $this.parent().prev("div.content");
        var linkText = $this.text().toUpperCase();    
    
        if(linkText === "SHOW MORE >>"){
            linkText = "Show less <<";
            $content.switchClass("hideContent", "showContent", 400);
        } else {
            linkText = "Show more >>";
            $content.switchClass("showContent", "hideContent", 400);
        };
    
        $this.text(linkText);
    })

    $(".sticky-header").sticky({topSpacing:0, zIndex:1000});

});
    



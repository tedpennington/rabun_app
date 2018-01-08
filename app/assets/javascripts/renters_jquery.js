console.log("renters.js loaded");

// Wrapped inside here because JQuery wasn't loaded yet.
document.addEventListener("DOMContentLoaded", function(event) { 
  // And wrapped in *here* because Jquery wasn't working except on refresh.
  document.addEventListener("turbolinks:load", function() {
    // When a row is clicked, go to the link
    $("tr[data-link]").click(function() {
      console.log("a row was clicked");
      window.location = $(this).data("link")
    });
  })
  
});

console.log("renters.js loaded");

// Wrapped inside here because JQuery wasn't loaded yet.
document.addEventListener("DOMContentLoaded", function(event) { 
  $("tr[data-link]").click(function() {
    console.log("a row was clicked");
    window.location = $(this).data("link")
  });
});

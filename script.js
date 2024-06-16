// script.js

document.addEventListener("DOMContentLoaded", function() {
    const form = document.querySelector("form");
    form.addEventListener("submit", function(event) {
        event.preventDefault();
        alert("Message sent! We'll get back to you soon.");
        form.reset();
    });
});

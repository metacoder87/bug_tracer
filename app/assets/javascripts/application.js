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
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require_tree .
document.addEventListener("DOMContentLoaded", function () {
    const cookieConsentBanner = document.getElementById('cookie-consent-banner');
    const acceptCookiesButton = document.getElementById('accept-cookies');
    const learnMoreLink = document.getElementById('learn-more');
    const cookieModal = document.getElementById('cookie-modal');
    const closeModal = document.getElementById('close-modal');

    // Show banner if no consent cookie
    if (!getCookie('cookieConsent')) {
        cookieConsentBanner.style.display = 'block';
    }

    // Accept button: set cookie and hide banner
    acceptCookiesButton.addEventListener('click', function () {
        setCookie('cookieConsent', 'true', 365);
        cookieConsentBanner.style.display = 'none';
    });

    // Learn more: show modal
    learnMoreLink.addEventListener('click', function (event) {
        event.preventDefault();
        cookieModal.classList.remove('hidden');
    });

    // Close modal
    closeModal.addEventListener('click', function () {
        cookieModal.classList.add('hidden');
    });

    // Optional: Close modal on outside click
    cookieModal.addEventListener('click', function (event) {
        if (event.target === cookieModal) {
            cookieModal.classList.add('hidden');
        }
    });

    // Optional: Close modal with Escape key
    document.addEventListener('keydown', function (event) {
        if (event.key === 'Escape' && !cookieModal.classList.contains('hidden')) {
            cookieModal.classList.add('hidden');
        }
    });

    function setCookie(name, value, days) {
        const date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        const expires = "expires=" + date.toUTCString();
        document.cookie = `${name}=${value};${expires};path=/;Secure;HttpOnly`;
    }

    function getCookie(name) {
        const cookieName = name + "=";
        const decodedCookie = decodeURIComponent(document.cookie);
        const cookieArray = decodedCookie.split(';');
        for (let i = 0; i < cookieArray.length; i++) {
            let cookie = cookieArray[i];
            while (cookie.charAt(0) === ' ') {
                cookie = cookie.substring(1);
            }
            if (cookie.indexOf(cookieName) === 0) {
                return cookie.substring(cookieName.length, cookie.length);
            }
        }
        return "";
    }
});
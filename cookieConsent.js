document.addEventListener("DOMContentLoaded", function() {
    var consentBanner = document.getElementById("cookie-consent-banner");
    var consentButton = document.getElementById("accept-cookies");

    // Affiche la bannière si le cookie de consentement n'existe pas
    if (!getCookie("cookieConsent")) {
        consentBanner.style.display = "block";
    }

    // Accepter les cookies
    consentButton.addEventListener("click", function() {
        setCookie("cookieConsent", "true", 365); // Cookie valable 1 an
        consentBanner.style.display = "none";
    });

    // Fonction pour définir un cookie
    function setCookie(name, value, days) {
        var expires = "";
        if (days) {
            var date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = "; expires=" + date.toUTCString();
        }
        document.cookie = name + "=" + (value || "") + expires + "; path=/";
    }

    // Fonction pour récupérer un cookie
    function getCookie(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') c = c.substring(1, c.length);
            if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
        }
        return null;
    }
});

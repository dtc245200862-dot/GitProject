
document.addEventListener("DOMContentLoaded", function () {

    const menuIcon = document.querySelector(".menu-icon");
    const navLinks = document.querySelector(".nav-links");

    menuIcon.addEventListener("click", function () {

        navLinks.classList.toggle("active");

        const menuIsOpen = navLinks.classList.contains("active");

        menuIcon.setAttribute("aria-expanded", menuIsOpen);

        if (menuIsOpen) {
            menuIcon.textContent = "✕";
            menuIcon.setAttribute("aria-label", "Đóng menu");
        } else {
            menuIcon.textContent = "☰";
            menuIcon.setAttribute("aria-label", "Mở menu");
        }

    });

});
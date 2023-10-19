
document.addEventListener("DOMContentLoaded", function () {
    const isLoggedIn = localStorage.getItem("isLoggedIn");
    const buttonTour = document.getElementById("buttonTour");
    const avtUser = document.getElementById("icon-user");

    if (isLoggedIn === "true") {
        buttonTour.style.display = "none"; // Ẩn nút "Đặt Tour"
        avtUser.style.display = "block";   // Hiển thị avatar người dùng
    } else {
        buttonTour.style.display = "block"; // Hiển thị nút "Đặt Tour"
        avtUser.style.display = "none";     // Ẩn avatar người dùng
    }
});




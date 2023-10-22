
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



    const myinfor = document.getElementById("myInfor");
    const myTour = document.getElementById("myTour");
    const logOut = document.getElementById("log_out");


logOut.addEventListener("click",function () {
    window.location.href = "login.html";




});
const inforDiv = document.getElementById("infor");
myinfor.addEventListener("click",function (event) {
    event.preventDefault();

    inforDiv.style.position = "fixed";
    // Điều chỉnh vị trí, top, left, và z-index để đặt nó ở vị trí mong muốn
    inforDiv.style.top = "100px";
    inforDiv.style.left = "190px";
    inforDiv.style.zIndex = "1000";
    inforDiv.style.display="block"
    document.addEventListener("click", function (event) {
        // Kiểm tra xem sự kiện click có xảy ra bên ngoài div hay không
        if (!inforDiv.contains(event.target) && event.target !== myinfor) {
            // Nếu click bên ngoài div, ẩn div đi
            inforDiv.style.display = "none";
        }
    });

    });
// Xử lý sự kiện click trên phần nền (document)

const daySelect = document.getElementById("day");
const monthSelect = document.getElementById("month");
const yearSelect = document.getElementById("year");

// Tạo danh sách ngày, tháng và năm bằng JavaScript
for (let i = 1; i <= 31; i++) {
    daySelect.options[daySelect.options.length] = new Option(i, i);
}

for (let i = 1; i <= 12; i++) {
    monthSelect.options[monthSelect.options.length] = new Option(i, i);
}

const currentYear = new Date().getFullYear();
for (let i = currentYear; i >= 1900; i--) {
    yearSelect.options[yearSelect.options.length] = new Option(i, i);
}
function showCustomDialog() {
    const dialog = document.getElementById("custom-dialog");
    dialog.classList.remove("hidden");

    // Làm cho tất cả các phần tử có class 'save' và 'blur-background' trở nên mờ

    const dateElements = document.querySelectorAll(".date");
    const nameElements = document.querySelectorAll(".name");

    const emailElements = document.querySelectorAll(".email");

    const phoneElements = document.querySelectorAll(".phone");

    const userElements = document.querySelectorAll(".username");
    for (const element of dateElements) {
        element.classList.add("blur-background");
    }

    for (const element of nameElements) {
        element.classList.add("blur-background");
    }
    for (const element of phoneElements) {
        element.classList.add("blur-background");
    }
    for (const element of userElements) {
        element.classList.add("blur-background");
    }
    for (const element of emailElements) {
        element.classList.add("blur-background");
    }

    setTimeout(function () {
        dialog.classList.add("hidden");
        // Xóa độ mờ cho tất cả các phần tử sau khi ẩn hộp thoại
        for (const element of dateElements) {
            element.classList.remove("blur-background");
        }
        for (const element of nameElements) {
            element.classList.remove("blur-background");
        }
        for (const element of emailElements) {
            element.classList.remove("blur-background");
        }
        for (const element of userElements) {
            element.classList.remove("blur-background");
        }
        for (const element of phoneElements) {
            element.classList.remove("blur-background");
        }
    }, 2000); // Ẩn hộp thoại sau 2 giây (2000 ms)
}







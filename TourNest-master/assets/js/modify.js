
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
myInfor.addEventListener("click", function () {
    window.location.href ="infor.html";

})




//////////// chinh phan dat tour

    const buttonDatTour = document.querySelectorAll(".packages-btn");
    buttonDatTour.forEach(function (button) {
        button.addEventListener("click",function () {
            Swal.fire({
                title: 'Thông báo',
                text: 'Đã thêm vào giỏ hàng',
                icon: 'success',
                confirmButtonText: 'Xác nhận'
            });
        })
    });
////////////////////////// button tim kiem
// Lấy tham chiếu đến nút "Tìm Kiếm" bằng id
const searchButton = document.getElementById("searchButton");

// Lấy tham chiếu đến phần "pack" bằng id
const packSection = document.getElementById("pack");

// Gán sự kiện click cho nút "Tìm Kiếm"
searchButton.addEventListener("click", function() {
    // Trượt xuống phần "pack"
    packSection.scrollIntoView({ behavior: "smooth" });
});








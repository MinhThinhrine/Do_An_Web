
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

    document.getElementById("logout").addEventListener("click", function () {
    window.location.href = "login.jsp";
});
    document.getElementById("myInfor").addEventListener("click", function () {
    window.location.href = "infor.jsp";
});

    document.getElementById("myTour").addEventListener("click", function () {
        window.location.href = "shopcart.jsp";
    });

    document.getElementById("bill").addEventListener("click", function () {
    window.location.href = "bill.jsp";
});



//////////// chinh phan dat tour

    const buttonDatTour = document.querySelectorAll(".packages-btn");
    buttonDatTour.forEach(function (button) {
        button.addEventListener("click",function () {
            Swal.fire({
                title: 'Thông báo',
                text: 'Đã thêm vào Vali',
                icon: 'success',
                confirmButtonText: 'Đóng',
                customClass: {
                    popup: 'custom-swal'
                }
            });
        })
    });











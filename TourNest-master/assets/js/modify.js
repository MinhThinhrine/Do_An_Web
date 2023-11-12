
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
myinfor.addEventListener("click", function () {
    window.location.href ="infor.html";

})
myTour.addEventListener("click", function (){
    window.location.href="shopcart.html"
})




//////////// chinh phan dat tour

    const buttonDatTour = document.querySelectorAll(".packages-btn");
    buttonDatTour.forEach(function (button) {
        button.addEventListener("click",function () {
            Swal.fire({
                title: 'Thông báo',
                text: 'Đã thêm vào Vali',
                icon: 'success',
                confirmButtonText: 'Xác nhận'
            });
        })
    });


document.addEventListener("DOMContentLoaded", function() {
    let id = document.querySelectorAll("id")
    for (let i = 1; i <= 200; i++) {
        // Tạo một đối tượng div
        let divElement = document.getElementById(i.toString());

        // Tạo một đối tượng p
        let pElement = document.createElement("p");
        pElement.textContent = "CHI TIẾT";
        pElement.style.fontSize = "30px";
        pElement.style.color = "rgba(0, 128, 255, 0.75)";
        pElement.style.fontFamily = "'Times New Roman'";
        pElement.classList.add("overlay-text");

        // Thêm thẻ p vào thẻ div
        divElement.appendChild(pElement);
    }
});








function enableEdit() {

    const phone = document.getElementById("phone");
    const address = document.getElementById("address");
    const date = document.getElementById("date");

    // Tạo các input elements và gán giá trị từ phần text ban đầu
    const phoneInput = document.createElement("input");
    phoneInput.style.width = "200px";
    phoneInput.style.height = "40px";
    phoneInput.style.border = "1px solid #ccc";
    phoneInput.style.borderRadius = "5px";
    phoneInput.style.padding = "10px";
    phoneInput.style.fontSize = "16px";
    phoneInput.style.marginBottom = "10px";

    phoneInput.value = phone.textContent.trim();

    const dateInput = document.createElement('input');
    dateInput.type = 'date';
    dateInput.type = 'date';
    dateInput.style.width = '200px';
    dateInput.style.height = '40px';
    dateInput.style.border = '1px solid #ccc';
    dateInput.style.borderRadius = '5px';
    dateInput.style.padding = '10px';
    dateInput.style.fontSize = '16px';
    dateInput.style.marginBottom = '10px';

    dateInput.value = date.textContent.trim();

    const addressInput = document.createElement("input");
    addressInput.style.width = "400px";
    addressInput.style.height = "40px";
    addressInput.style.border = "1px solid #ccc";
    addressInput.style.borderRadius = "5px";
    addressInput.style.padding = "10px";
    addressInput.style.fontSize = "16px";

    addressInput.value = address.textContent.trim();
    // Thay thế phần text ban đầu bằng input elements
    phone.innerHTML = '';
    phone.appendChild(phoneInput);

    date.innerHTML = '';
    date.appendChild(dateInput);

    address.innerHTML = '';
    address.appendChild(addressInput);
}

function togglePasswordChange() {
    const navlinkuser = document.querySelector(".nav-link.user");
    const navlinkpassword = document.querySelector(".nav-link.change-password");
    const cardBody = document.getElementById("card-body");
    const customCardBody = document.getElementById("custom-card-body");
    const buttonuser = document.getElementById("buttonuser");
    const buttonforgotpassword = document.getElementById("buttonforgotpassword");

    navlinkpassword.classList.add("active");
    navlinkuser.classList.remove("active");
    cardBody.classList.add("hidden");
    customCardBody.classList.remove("hidden");
    buttonuser.classList.add("hidden");
    buttonforgotpassword.classList.remove("hidden");
}

function toggleUser() {
    const navlinkuser = document.querySelector(".nav-link.user");
    const navlinkpassword = document.querySelector(".nav-link.change-password");
    const cardBody = document.getElementById("card-body");
    const customCardBody = document.getElementById("custom-card-body");
    const buttonuser = document.getElementById("buttonuser");
    const buttonforgotpassword = document.getElementById("buttonforgotpassword");

    navlinkpassword.classList.remove("active");
    navlinkuser.classList.add("active");
    cardBody.classList.remove("hidden");
    customCardBody.classList.add("hidden");
    buttonuser.classList.remove("hidden");
    buttonforgotpassword.classList.add("hidden");

}

let phoneInputValue;
let addressInputValue;
let dateInputvalue;

function done() {
    Swal.fire({
        title: 'Hoàn tất',
        html: 'Đã hoàn tất thanh toán.<br>Chúng tôi sẽ liên hệ bạn sớm nhất.',
        icon: 'success',
        confirmButtonText: 'Đóng'
    });
    window.location.href = "bill.jsp";
}

function link() {
    const loginButton = document.getElementById("btn");
    loginButton.addEventListener("click", function () {
        window.location.href = "login.jsp";
    });
}

var btn = document.getElementById("changebtn");

var passInput = document.getElementById('newpass1');
var confirm = document.getElementById('newpass2');

passInput.addEventListener("input", function () {
    const pass = passInput.value;
    if (pass.length >= 6) {
        confirm.addEventListener("input", function () {
            const conf = confirm.value;
            if (conf === pass) {
                btn.classList.remove("btn-light");
                btn.classList.add("btn-success");

            }
        })
    }
})




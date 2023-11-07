
    //khoa nut đăng nhập
    document.getElementById("btn").disabled=true;
    document.getElementById("btn").style.backgroundColor = "#bbbbbb";
    document.getElementById("btn").style.cursor ="none";
    ///
    const validateEmail = (email) => {
    return email.match(
    /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
    );
};
    const validate = () => {
    const $result = $('#result');
    const email = $('#email').val();
    $result.text('');

    if(validateEmail(email) ){
    $result.text(email + ' hợp lệ.');
    $result.css('color', 'green');

    document.getElementById("btn").disabled = false;
    document.getElementById("btn").style.backgroundColor = "#00d8d5";
    document.getElementById("btn").style.cursor ="pointer";



} else{
    $result.text(email + ' không hợp lệ.');
    $result.css('color', 'red');

    document.getElementById("btn").disabled = true;
    document.getElementById("btn").style.backgroundColor = "#bbbbbb";
    document.getElementById("btn").style.cursor ="none";
}
    return false;
}
    $('#email').on('input', validate);
    document.addEventListener("DOMContentLoaded", function () {
        const loginButton = document.getElementById("btn");
        let user = String(document.getElementById("email"));
        let pass = String(document.getElementById("pass"));
        var userAd = "admin@gmail.com";
        var passAd = "admin123";

        loginButton.addEventListener("click", function () {
                // Thực hiện kiểm tra đăng nhập ở đây

            // Nếu đăng nhập thành công, bạn có thể lưu trạng thái đăng nhập vào localStorage.
            if (user==userAd&&pass==passAd) {


                // Ví dụ:
                localStorage.setItem("isLoggedIn", "true");
                window.location.href = "index.html";
            }

        });
    });


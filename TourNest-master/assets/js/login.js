
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

    const button = document.getElementById('btn');
    button.addEventListener('click', function() {
    window.location.href = 'index.html';
});

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

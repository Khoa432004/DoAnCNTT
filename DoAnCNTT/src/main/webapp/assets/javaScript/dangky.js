const emailElement = document.getElementById('email');
const passwordElememt = document.getElementById('password');
const password1Elememt = document.getElementById('re-password');
const btn_reg = document.getElementById('btn-dangky');
const btn_log = document.getElementById('btn-dangnhap');
const inputElement = document.querySelectorAll('.input-row');

/*btn_reg.addEventListener('click', function () {
    Array.from(inputElement).map((element) =>
        element.classList.remove('success', 'error')
    )

    if (checkValidate()) {
        alert('đăng ký thành công');
    }
});*/

function checkValidate() {
    let emailValue = emailElement.value;
    let passwordValue = passwordElememt.value;
    let password1Value = password1Elememt.value;
    let regex_email = /^[a-zA-Z][a-zA-Z0-9]*@[a-zA-Z0-9]*\.(com)$/;


    let check = true;


    //check email
    if (emailValue == "" || emailValue == null) {
        setError(emailElement, "Không được rỗng!");
        check = false;
    } else if (!regex_email.test(emailValue)) {
        setError(emailElement, "Email không đúng!");
        check = false;
    } else {
        setSuccess(emailElement);
    }


    //check password

    if (passwordValue == "" || passwordValue == null) {
        setError(passwordElememt, "Không được rỗng!");
        check = false;
    } else if (passwordValue.length < 8) {
        setError(passwordElememt, "Tối thiếu là 8 ký tự!");
        check = false;
    } else {
        setSuccess(passwordElememt);
    }



    //check re-password
    if (password1Value != passwordValue) {
        setError(password1Elememt, "Mật khẩu không khớp!");
        check = false;
    } else {
        setSuccess(password1Elememt);
    }
    return check;
}

function setSuccess(element) {
    let parentElement = element.parentNode;
    parentElement.classList.add('success');
    parentElement.querySelector('span').innerText = "";
}


function setError(element, message) {
    let parentElement = element.parentNode;
    parentElement.classList.add('error');
    parentElement.querySelector('span').innerText = message;
}
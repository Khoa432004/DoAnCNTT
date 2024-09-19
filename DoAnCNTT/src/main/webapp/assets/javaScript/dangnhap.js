const emailElement = document.getElementById('email');
const passwordElememt = document.getElementById('password');
const btn_log = document.getElementById('btn-dangnhap');
const inputElement = document.querySelectorAll('.input-row');
btn_log.addEventListener('click', function () {
    Array.from(inputElement).map((element) =>
        element.classList.remove('success', 'error')
    )

    if (checkValidate() && checkLogin()) {
/*        alert('đăng nhập thành công');
        window.location.href = 'trangchu.html';*/
    }
})

function checkLogin() {
/*    let emailValue = emailElement.value;
    let passwordValue = passwordElememt.value;
    const emailChecked = localStorage.getItem('email')
    const passwordChecked = localStorage.getItem('password')
    console.log(emailChecked)
    console.log(passwordChecked)
    if (emailValue == emailChecked && passwordValue == passwordChecked) {
        return true;
    }
    alert('Tài khoản hoặc mật khẩu không đúng');
    return false;*/
	return true;
}

function checkValidate() {
    let emailValue = emailElement.value;
    let passwordValue = passwordElememt.value;
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
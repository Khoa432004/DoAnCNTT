const locationElement = document.getElementById('destination');
const ngaynhanElement = document.getElementById('date-start');
const ngaytraElement = document.getElementById('date-end');
const songuoiElement = document.getElementById('people-number');
const btn_kiem = document.getElementById('find-button');


btn_kiem.addEventListener('click', function () {

    if(checkValidate()){
        if (check_location_vungTau()) {
            window.location.href = 'diemden.html';
        }
    
        if (check_location_HCM()) {
            window.location.href = 'diemden-HoChiMinh.html';
        }
    
        if (check_location_HaNoi()) {
            window.location.href = 'diemden-HaNoi.html';
        }
        if (check_location_DaNang()) {
            window.location.href = 'diemden-DaNang.html';
        }
        if (check_location_Hue()) {
            window.location.href = 'diemden-Hue.html';
        }
    }


   
})


function check_location_vungTau() {
    let locationValue = locationElement.value;
    check = false;
    if (locationValue == "vung tau" || locationValue == "Vung tau" || locationValue == "Vung Tau" || locationValue == "vung Tau" || locationValue == "vũng tàu" || locationValue == "Vũng Tàu"|| locationValue == "vt"|| locationValue == "VT"|| locationValue == "V T" || locationValue == "v t") {
        check = true;
    }
    return check;
}

function check_location_HCM() {
    let locationValue = locationElement.value;
    check = false;
    if (locationValue == "hcm" || locationValue == "Hồ Chí Minh" || locationValue == "Ho Chi Minh" || locationValue == "hochiminh" || locationValue == "ho chi minh" || locationValue == "hồ chí minh") {
        check = true;
    }
    return check;
}


function check_location_HaNoi() {
    let locationValue = locationElement.value;
    check = false;
    if (locationValue == "hn" || locationValue == "Hà Nội" || locationValue == "ha noi" || locationValue == "hanoi" || locationValue == "hà nội" || locationValue == "Hà noi" || locationValue == "hà Nội" || locationValue == "HANOI"|| locationValue == "hn"|| locationValue == "H N"|| locationValue == "h n") {
        check = true;
    }
    return check;
}


function check_location_DaNang() {
    let locationValue = locationElement.value;
    check = false;
    if (locationValue == "DN" || locationValue == "dn" || locationValue == "da nang" || locationValue == "danang" || locationValue == "đà nẵng" || locationValue == "Đà Nẵng" || locationValue == "DANANG" || locationValue == "DA NANG" || locationValue == "DANANG" || locationValue == "ĐÀ NẴNG" || locationValue == "DANANG" || locationValue == "Da Nẵng") {
        check = true;
    }
    return check;
}

function check_location_Hue() {
    let locationValue = locationElement.value;
    check = false;
    if (locationValue == "H" || locationValue == "h" || locationValue == "hue" || locationValue == "huế" || locationValue == "Huế" || locationValue == "HUẾ" || locationValue == "HuE" || locationValue == "HUe" || locationValue == "HUế" || locationValue == "HuẾ" || locationValue == "hUE" || locationValue == "huE") {
        check = true;
    }
    return check;
}

function checkValidate(){

    let check = true;
    //check địa điểm
    let diadiemValue = locationElement.value;
    if(diadiemValue==""){
        locationElement.focus();
        check = false;
    }


    // check ngay nhan

    let ngaynhanValue = ngaynhanElement.value;
    if(ngaynhanValue==""){
        ngaynhanElement.focus();
        check = false;
    }

        // check ngay nhan

        let ngaytraValue = ngaytraElement.value;
        if(ngaytraValue==""){
            ngaytraElement.focus();
            check = false;
        }


        // check số người

        let songuoiValue = songuoiElement.value;
        if(songuoiValue==""){
            songuoiElement.focus();
            check = false;
        }

        return check;

}

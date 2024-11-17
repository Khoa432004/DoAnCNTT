const table = document.getElementById('table');
const hoten = localStorage.getItem('hoten');
const ngaynhan = localStorage.getItem('ngaynhan');
const ngaytra = localStorage.getItem('ngaytra');
const songaythue = localStorage.getItem('songaythue');
const nguoilon = localStorage.getItem('nguoilon');
const treem = localStorage.getItem('treem');
const money = localStorage.getItem('money');
const table1 = document.getElementById('table-book');
const btn_thanhtoan = document.getElementById('btn-thanhtoan');
const tentheElement = document.getElementById('tenthe');
const sotheElement = document.getElementById('sothe');
const mabaomatElement = document.getElementById('mabaomat');

/*
btn_thanhtoan.addEventListener('click',function(){
    if(checkValidate()){
        window.location.href = 'khachsandadat.jsp';
    }
   
})
*/


const tongtien = parseInt(songaythue)*parseInt(money);

document.addEventListener('DOMContentLoaded', function () {
    nhapVaoBang();
 
});



function generateRandomNumber() {
    // Tạo một số ngẫu nhiên có 6 chữ số
    let randomNumber = Math.floor(100000 + Math.random() * 900000);
    return randomNumber;
}

let mahoadon = generateRandomNumber();

localStorage.setItem('mahoadon',mahoadon);




function nhapVaoBang(){
    // tạo hàng mới
/*    let row1 = table.insertRow();
    let row2 = table.insertRow();
    let row3 = table.insertRow();
    let row4 = table.insertRow();
    let row5 = table.insertRow();
    let row6 = table.insertRow();
    let row7 = table.insertRow();
    let row8 = table.insertRow();
    let row9 = table.insertRow();
    let row10 = table.insertRow();
    


    // tạo cột 
    let cell_mahoadon = row1.insertCell(0);
    let cell_hoten = row2.insertCell(0);
    let cell_phone = row3.insertCell(0);
    let cell_ngaynhan = row4.insertCell(0);
    let cell_ngaytra = row5.insertCell(0);
    let cell_songaythue = row6.insertCell(0);
    let cell_nguolon = row7.insertCell(0);
    let cell_treem = row8.insertCell(0);
    let cell_giaphong = row9.insertCell(0);
    let cell_tongtien = row10.insertCell(0);


    // nhập vào cột
    cell_mahoadon.innerText = mahoadon;
    cell_hoten.innerText= hoten;
    cell_phone.innerText= phone;
    cell_ngaynhan.innerText= ngaynhan;
    cell_ngaytra.innerText= ngaytra;
    cell_songaythue.innerText = songaythue +" Ngày";
    cell_nguolon.innerText = nguoilon +" Người";
    cell_treem.innerText = treem +" Người";
    cell_giaphong.innerText = money+ " VND";
    cell_tongtien.innerText = tongtien+" VND"*/

}

/*
function checkValidate(){
    

    //check tên thẻ
    let tentheValue = tentheElement.value;

    let check=true;

    if(tentheValue==""||tentheValue==null){
        setErorr(tentheElement,"Không được rỗng!");
        check=false;
        tentheElement.focus();

    }else{
        setSuccess(tentheElement);
    }
    

    //check so thẻ
    let sotheValue = sotheElement.value;


    if(sotheValue==""||sotheValue==null){
        setErorr(sotheElement,"Không được rỗng!");
        check=false;
        sotheElement.focus();

    }else{
        setSuccess(sotheElement);
    }
    

      //check tên thẻ
      let mabaomatValue = mabaomatElement.value;

  
      if(mabaomatValue==""||mabaomatValue==null){
          setErorr(mabaomatElement,"Không được rỗng!");
          check=false;
          mabaomatElement.focus();
  
      }else{
          setSuccess(mabaomatElement);
      }
        



return check;

}
*/

function setSuccess(element){
    let elementParent = element.parentNode;
    elementParent.querySelector('span').innerText="";
}

function setErorr(element,message){
    let elementParent = element.parentNode;
    elementParent.querySelector('span').innerText=message;
}

// Function to apply discount and update total price
function applyDiscount() {
    if (giaTriUuDai > 0 && loaiUuDai > 0) {
        let discountedPrice = tongTien;

        if (loaiUuDai === 1) { // Giảm theo %
            discountedPrice = tongTien - (tongTien * giaTriUuDai / 100);
        } else if (loaiUuDai === 2) { // Giảm theo số tiền cố định
            discountedPrice = tongTien - giaTriUuDai;
        }

        // Cập nhật giá trị tổng tiền sau khi giảm giá lên trang
        document.getElementById("tongTienSauUuDai").innerText = discountedPrice.toFixed(2);
    } else {
        document.getElementById("tongTienSauUuDai").innerText = tongTien.toFixed(2);
    }
}

// Gọi hàm để áp dụng ưu đãi sau khi trang được load
window.onload = function() {
    applyDiscount();
};
window.onload = function() {
    var xhr = new XMLHttpRequest();

    xhr.open("POST", "ApplyUuDaiServlet", true);

    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    xhr.onload = function() {
        if (xhr.status === 200) {
            console.log("Yêu cầu gửi thành công!");
        } else {
            console.log("Có lỗi khi gửi yêu cầu.");
        }
    };

    xhr.send();
};
/*
document.getElementById("btn-thanhtoan").addEventListener("click", function(event) {
    event.preventDefault();

    var maHoaDon = "<%= session.getAttribute('MaHoaDon') %>";
    var tongTienGoc = parseFloat("<%= session.getAttribute('TongTien') %>");
	 
    var giaTriUuDai = parseFloat(document.getElementById('maUuDai').selectedOptions[0].getAttribute('data-giaTri'));
    var loaiUuDai = document.getElementById('maUuDai').selectedOptions[0].getAttribute('data-loaiUuDai');

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "UpdateTongTienServlet", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onload = function() {
        if (xhr.status === 200) {
            window.location.href = "khachsandadat.jsp";  // Chuyển hướng sau khi cập nhật
        }
    };
    xhr.send(`MaHoaDon=${maHoaDon}&TongTienGoc=${tongTienGoc}&giaTriUuDai=${giaTriUuDai}&loaiUuDai=${loaiUuDai}`);
});
*/

/*
document.getElementById("btn-thanhtoan").addEventListener("click", function(event) {
    event.preventDefault();
    if (checkValidate()) {
        document.forms[0].action = "PaymentProcessingServlet";
        document.forms[0].submit();
    }
});
*/

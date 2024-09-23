const table = document.getElementById('table-book');
const hoten = localStorage.getItem('hoten');
const phone = localStorage.getItem('phone');
const ngaynhan = localStorage.getItem('ngaynhan');
const ngaytra = localStorage.getItem('ngaytra');
const songaythue = localStorage.getItem('songaythue');
const nguoilon = localStorage.getItem('nguoilon');
const treem = localStorage.getItem('treem');
const money = localStorage.getItem('money');
const mahoadon= localStorage.getItem('mahoadon');
const btn_thanhtoan = document.getElementById('btn-thanhtoan')



const tongtien = parseInt(songaythue)*parseInt(money);


document.addEventListener('DOMContentLoaded', function () {
    nhapVaoBang();
   
});



function nhapVaoBang(){
    // tạo hàng mới
/*    let row1 = table.insertRow();

    


    // tạo cột 
    let cell_mahoadon = row1.insertCell(0);
    let cell_hoten = row1.insertCell(1);
    let cell_phone = row1.insertCell(2);
    let cell_ngaynhan = row1.insertCell(3);
    let cell_ngaytra = row1.insertCell(4);
    let cell_money = row1.insertCell(5);
    let cell_Tong = row1.insertCell(6);


    // nhập vào cột
    cell_mahoadon.innerText = mahoadon;
    cell_hoten.innerText= hoten;
    cell_phone.innerText= phone;
    cell_ngaynhan.innerText= ngaynhan;
    cell_ngaytra.innerText= ngaytra;
    cell_money.innerText = money+ " VND";
    cell_Tong.innerText =  tongtien+"VND"*/

}


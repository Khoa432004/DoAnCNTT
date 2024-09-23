const table = document.getElementById('table');
const hoten = localStorage.getItem('hoten');
const phone = localStorage.getItem('phone');
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


btn_thanhtoan.addEventListener('click',function(){
    if(checkValidate()){
        window.location.href = 'khachsandadat.jsp';
    }
   
})



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


function setSuccess(element){
    let elementParent = element.parentNode;
    elementParent.querySelector('span').innerText="";
}

function setErorr(element,message){
    let elementParent = element.parentNode;
    elementParent.querySelector('span').innerText=message;
}



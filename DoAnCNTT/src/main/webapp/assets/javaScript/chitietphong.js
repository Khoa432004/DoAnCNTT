const hotenElement = document.getElementById('hoten');
const phoneElement = document.getElementById('phone');
const ngaynhanElement = document.getElementById('ngaynhan');
const ngaytraElement = document.getElementById('ngaytra');
const nguoilonElement = document.getElementById('nguoilon');
const treemElement = document.getElementById('treem');
const btn_datphong = document.querySelectorAll('.btn-datphong');



btn_datphong.forEach(function(button){

    button.addEventListener('click',function(){
        var money = this.getAttribute('data-money');
        localStorage.setItem('money',money);

        
    })


})

btn_datphong.forEach(function(button) {
    button.addEventListener('click', function() {
        setTimeout(function() {
            hotenElement.focus();
        }, 1000);
    });
});



const btn_thanhtoan = document.getElementById('thanhtoan');



btn_thanhtoan.addEventListener('click',function(){
    if(checkValidate()){
        alert('Nhập thông tin thành công, tiếp tục đến thanh toán.');
        window.location.href = 'paying.jsp';
    }

})
 


function checkValidate(){
    

    //check tên
    let hotenValue = hotenElement.value;
    let regex_hoten = /^[A-Z][a-zÀ-ỹ]*(\s[A-Z][a-zÀ-ỹ]*){1,}$/;
  



    let check=true;

    if(hotenValue==""||hotenValue==null){
        setErorr(hotenElement,"Không được rỗng!");
        check=false;
        hotenElement.focus();
    }else if(!regex_hoten.test(hotenValue)){
        setErorr(hotenElement,"Bắt đầu bằng chữ hoa, ít nhất có 2 chữ!");
        check=false;
        hotenElement.focus();
    }else{
        setSuccess(hotenElement);
        
    }





    // check phone
    let phoneValue = phoneElement.value;
    let regex_phone = /^(09|08|02)[0-9]{8}$/;
    let checkso = /^[0-9][0-9]*$/

    if(phoneValue==""){
        setErorr(phoneElement,"không được rỗng!");
        check=false;
        phoneElement.focus();
    }else if(!checkso.test(phoneValue)){
        setErorr(phoneElement,"Phải là số!");
        check=false;
        phoneElement.focus();
    }else if(!regex_phone.test(phoneValue)){
        setErorr(phoneElement,"Bắt đầu bằng 09 hoặc 08 hoặc 02, chiều dài 10 số ");
        check=false;
        phoneElement.focus();
    }else{
        setSuccess(phoneElement);
    }


        // check ngày nhận phòng

        let ngaynhanValue = ngaynhanElement.value;
        let namHienTai = new Date();
        let ngaynhanphong  = new Date(ngaynhanValue);

        if(ngaynhanValue==""){
            setErorr(ngaynhanElement,"Không được rỗng!");
            check=false;
            ngaynhanElement.focus();
        } 
        if(ngaynhanphong<=namHienTai){
            setErorr(ngaynhanElement,"Phải sau ngày hiện tại!");
            check=false;
            ngaynhanElement.focus();
        } else if(ngaynhanphong>namHienTai){
            setSuccess(ngaynhanElement);
        }
        
        
        // check trả nhận phòng

        let ngaytraValue = ngaytraElement.value;
        
        let ngaytraphong  = new Date(ngaytraValue);

        if(ngaytraValue==""){
            setErorr(ngaytraElement,"Không được rỗng!");
            check=false;
            ngaytraElement.focus();
        } 
        if(ngaytraphong<=ngaynhanphong){
            setErorr(ngaytraElement,"Phải sau ngày nhận phòng!");
            check=false;
            ngaytraElement.focus();
        } else if(ngaytraphong>ngaynhanphong){
            setSuccess(ngaytraElement);
        }


        // số ngày thuê
        miligiay = ngaytraphong-ngaynhanphong;
        songaythue= Math.floor(miligiay/(1000*60*60*24));


       
        



        //check người lớn
        let nguoilonValue=nguoilonElement.value;
        if(nguoilonValue===""){
            setErorr(nguoilonElement,"Không được rỗng!");
            check=false;
            nguoilonElement.focus();
        }else{
            setSuccess(nguoilonElement);
           
        }



        //check trẻ em
        let treemValue=treemElement.value;
        if(treemValue===""){
            setErorr(treemElement,"Không được rỗng!");
            check=false;
            treemElement.focus();
        }else{
            setSuccess(treemElement);
        }



        localStorage.setItem('hoten',hotenValue);
        localStorage.setItem('phone',phoneValue);
        localStorage.setItem('ngaynhan',ngaynhanValue);
        localStorage.setItem('ngaytra',ngaytraValue);
        localStorage.setItem('songaythue',songaythue);
        localStorage.setItem('nguoilon',nguoilonValue);
        localStorage.setItem('treem',treemValue);


        

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









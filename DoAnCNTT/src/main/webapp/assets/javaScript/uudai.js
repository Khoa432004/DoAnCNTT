/**
 * 
 */


document.addEventListener("DOMContentLoaded",function(){
	
	const btnUudaiDacBiet=document.querySelector(".btn-uudaidacbiet");
	if(btnUudaiDacBiet){
		btnUudaiDacBiet.addEventListener("click",function(){
			alert("Bạn đã chọn ưu đãi đặc biệt: Vé Ưu Đãi Đặc Biệt!");
		
		});
	}
	
	
	const btnAgodaVIP=document.querySelector(".btn-agodavip");
	if(btnAgodaVIP){
		btnAgodaVIP.addEventListener("click",function(){
			alert("Bạn đã chọn ưu đãi: Chương trình AgodaVIP!");
			
		});
	}
	const btnUuDaiQuocTe=document.querySelector(".btn-uudaiquocte");
	if(btnUuDaiQuocTe){
		btnUuDaiQuocTe.addEventListener("click",function(){
			alert("Bạn đã chọn ưu đãi: Ưu đãi Quốc tế!");
			
		});
	}
	const btnUuTrongNuoc=document.querySelector(".btn-uudaitrongnuoc");
		if(btnUuTrongNuoc){
			btnUuTrongNuoc.addEventListener("click",function(){
				alert("Bạn đã chọn ưu đãi: Ưu đãi trong nước! ");
				
			});
		}
	const btnGiam500k=document.querySelector(".btn-giam500k");
		if(btnGiam500k){
			btnGiam500k.addEventListener("click",function(){
				alert("Bạn đã chọn ưu đãi: Giảm đến 500,000 đ! ");
				
			});
		}
	const btnGiam700k=document.querySelector(".btn-giam700k");
		if(btnGiam700k){
			btnGiam700k.addEventListener("click",function(){
				alert("Bạn đã chọn ưu đãi: Giảm đến 700,000 đ! ");
				
			});
		}
		
		
		
});

function addUuDai(maCode, userId) {
    if (!userId || userId === "") {
        alert("Vui lòng đăng nhập để nhận ưu đãi.");
        return;
    }

    // Gửi yêu cầu AJAX đến servlet để thêm ưu đãi vào AccountUuDai
    const xhr = new XMLHttpRequest();
    xhr.open("POST", "AddUuDaiServlet", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            alert(xhr.responseText);
        }
    };

    // Gửi dữ liệu MaCode và UserId tới servlet
    xhr.send("maCode=" + encodeURIComponent(maCode) + "&userId=" + encodeURIComponent(userId));
}

window.onload = function() {
    fetch('GetUuDaiServlet')
        .then(response => response.text())
        .then(data => {
            document.getElementById("uudai-list").innerHTML = data;
        });
};

document.addEventListener("DOMContentLoaded", function () {
    const selectUuDai = document.getElementById("selectUuDai");
    const tongTienSauUuDai = document.getElementById("tongTienSauUuDai");
    let tongTien = parseFloat('<%= session.getAttribute("TongTien") %>');

    // Fetch danh sách ưu đãi từ server
    fetch("GetUuDaiServlet")
        .then(response => response.json())
        .then(data => {
            data.uudaiList.forEach(uudai => {
                const option = document.createElement("option");
                option.value = uudai.maUuDai;
                option.textContent = `${uudai.tenUuDai} - Giảm ${uudai.loaiUuDai === 1 ? uudai.giaTri + "%" : uudai.giaTri + " VND"}`;
                selectUuDai.appendChild(option);
            });
        });

    // Sự kiện khi chọn ưu đãi
    selectUuDai.addEventListener("change", function () {
        const selectedUuDai = selectUuDai.value;
        if (selectedUuDai) {
            fetch(`ApplyUuDaiServlet?maUuDai=${selectedUuDai}`)
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        tongTienSauUuDai.innerText = data.tongTienSauUuDai.toFixed(2) + " VND";
                    } else {
                        alert("Không thể áp dụng ưu đãi");
                    }
                });
        } else {
            // Khi không chọn ưu đãi, hiển thị tổng tiền gốc
            tongTienSauUuDai.innerText = tongTien.toFixed(2) + " VND";
        }
    });
});

document.addEventListener("DOMContentLoaded", function () {
    const maUuDaiSelect = document.getElementById("maUuDai");
    const tongTienSauUuDaiSpan = document.getElementById("tongTienSauUuDai");

    // Lấy tổng tiền sau khi áp dụng ưu đãi
    maUuDaiSelect.addEventListener("change", function () {
        const maUuDai = this.value;

        if (maUuDai) {
            fetch(`ApplyUuDaiServlet?maUuDai=${maUuDai}`)
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        tongTienSauUuDaiSpan.innerText = data.tongTienSauUuDai.toFixed(2);
                    } else {
                        alert("Không thể áp dụng ưu đãi");
                    }
                })
                .catch(error => console.error("Lỗi khi áp dụng ưu đãi:", error));
        }
    });
});


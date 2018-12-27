/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//total_items
function addToCart(str){
    var solg=1;
    if(document.getElementById("soluong")!=null){
        solg=document.getElementById("soluong").value;
    }
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("total_items").innerHTML=parseInt(document.getElementById("total_items").innerHTML)+1;
        }
    };
    xhttp.open("GET", "them_vao_gio_hang.jsp?masp=" + str+"&soluong="+solg, true);
    xhttp.send();
}

function add(str,amount,diem){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById(str).value=parseInt(document.getElementById(str).value)+1;
            amount=amount-amount*diem/100;
            var tong=document.getElementById("tongtien").innerHTML;
            tong=parseInt(tong)+amount;
            document.getElementById("tongtien").innerHTML=parseInt(tong);
        }
    };
    xhttp.open("GET", "them_vao_gio_hang.jsp?masp=" + str, true);
    xhttp.send();
}

function sub(str,amount,diem){
    if(parseInt(document.getElementById(str).value)==1){
        return;
    }
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById(str).value=document.getElementById(str).value-1;
            amount=amount-amount*diem/100;
            var tong=document.getElementById("tongtien").innerHTML;
            tong=parseInt(tong)-amount;
            document.getElementById("tongtien").innerHTML=parseInt(tong);
        }
    };
    xhttp.open("GET", "giam_vao_gio_hang.jsp?masp=" + str, true);
    xhttp.send();
}

function deleteItem(str){
    //alert(str);
    window.location.href="deleteItem.jsp?masp="+str;
}

function filterSanpham(mau){
    //alert(mau);
    var loai=document.getElementById("loai").value;
    document.getElementById("mau").value=mau;
    var kichco=document.getElementById("kichco").value;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("danhsachsanpham").innerHTML=this.responseText;
        }
    };
    xhttp.open("GET", "filter/filterSanPhamView.jsp?mau=" + mau+"&kichco="+kichco+"&loai="+loai, true);
    xhttp.send();
}

function filterSanpham1(kichco){
    //alert(kichco);
    var loai=document.getElementById("loai").value;
    var mau=document.getElementById("mau").value;
    document.getElementById("kichco").value=kichco;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("danhsachsanpham").innerHTML=this.responseText;
        }
    };
    xhttp.open("GET", "filter/filterSanPhamView.jsp?mau=" + mau+"&kichco="+kichco+"&loai="+loai, true);
    xhttp.send();
}

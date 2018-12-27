/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//total_items
function addToCart(str) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            //alert("them thanh cong");
            document.getElementById("listgiohangdemo").innerHTML = this.responseText;
            document.getElementById("soluongsanpham").innerHTML = parseInt(document.getElementById("soluongsanpham").innerHTML) + 1;
        }
    };
    xhttp.open("GET", "them_vao_gio_hang.jsp?masp=" + str, true);
    xhttp.send();
}

function addToCart1(str) {
    var soluong=document.getElementById("soluongmua").value;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            //alert("them thanh cong");           
            document.getElementById("listgiohangdemo").innerHTML = this.responseText;
            document.getElementById("soluongsanpham").innerHTML = parseInt(document.getElementById("soluongsanpham").innerHTML) + 1;
        }
    };
    xhttp.open("GET", "them_vao_gio_hang1.jsp?masp=" + str+"&soluong="+soluong, true);
    xhttp.send();
}

function deleteItem(str){
    window.location.href="deleteItem?masp="+str;
}

function exchange(value,tongthanhphan,gia){
    var tongtoanbo=document.getElementById("tongtoanbo").innerHTML;
    var tamthoi=tongtoanbo-document.getElementById(tongthanhphan).innerHTML;
    tongtoanbo=value*gia;
    var tongsoluong=document.getElementById("tongsoluong").innerHTML;
    var soluongtruoc=document.getElementById("soluong"+tongthanhphan).value;
    document.getElementById("soluong"+tongthanhphan).value=value;
    document.getElementById("tongsoluong").innerHTML=parseInt(tongsoluong-soluongtruoc)+parseInt(value);
    document.getElementById(tongthanhphan).innerHTML=parseInt(value*gia);
    document.getElementById("tongtoanbo").innerHTML=parseInt(tongtoanbo);
}

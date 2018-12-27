function changeStatus(str, ele, id) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            if (str == 1) {
                ele.value = 0;
                //ele.checked=false;
            } else {
                //ele.checked=true;
                ele.value = 1;
            }
        }
    };
    xhttp.open("GET", "ChangeStatus?status=" + str + "&id=" + id, true);
    xhttp.send();
}

function CheckUpdate(id)
{
    //alert("ok");
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            //alert("sucess");
            document.getElementById("popup").innerHTML = this.responseText;
            document.getElementById("popup").style.display = "block";
        } else {
            //alert("failure");
        }
    };
    xhttp.open("GET", "formProduct.jsp?id=" + id, true);
    xhttp.send();
    //alert("ok");
}

function ViewDonHang(id)
{
    //alert("ok");
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            //alert("sucess");
            document.getElementById("popup").innerHTML = this.responseText;
            document.getElementById("popup").style.display = "block";
        } else {
            //alert("failure");
        }
    };
    xhttp.open("GET", "formdonhang.jsp?id=" + id, true);
    xhttp.send();
    //alert("ok");
}

function ViewDetails(id)
{
    alert("" + id);
}
function closed() {
    //alert("fad");
    document.getElementById("popup").style.display = "none";
    return false;
}

function closed1() {
    //alert("fad");
    document.getElementById("insertFrom").style.display = "none";
    return false;
}

function InsertPhone() {
    //alert("fad");
    document.getElementById("insertFrom").style.display = "block";
    return true;
}
//
//function Filter(id) {
//    var xhttp = new XMLHttpRequest();
//    xhttp.onreadystatechange = function () {
//        if (this.readyState == 4 && this.status == 200) {
//            document.getElementById("demo").innerHTML = this.responseText;
//        }
//    };
//    xhttp.open("GET", "insertPhone.jsp?id="+id, true);
//    xhttp.send();
//}

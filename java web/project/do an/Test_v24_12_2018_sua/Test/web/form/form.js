//ĐÀO MINH HIỂN

function check1() {
    var sai = '<img src="img/X.png" style="width: 15px;height: 15px;">';
    var dem_sai1 = 0;
    var dem_sai2 = 0;
    //kiểm tra tên đăng nhập
    var ten_dang_nhap = document.getElementById('ten_dang_nhap').value;
    var regex_ten_dang_nhap = /^([a-zA-Z0-9_\.\_])+\@(([a-zA-Z0-9\_])+\.)+([a-zA-Z0-9]{2,4})|([0-9]{10})+$/; //^[A-z0-9_](\w|\.|_){5,32}$/i; 
    var ten_dang_nhap_dung = /([a-zA-Z0-9_\.\_])+\@(([a-zA-Z0-9\_])+\.)+([a-zA-Z0-9])|([0-9])/gi;
    var result_ten_dang_nhap = regex_ten_dang_nhap.test(ten_dang_nhap);
    if (result_ten_dang_nhap == false) {
        var mang_ten_dang_nhap_dung = ten_dang_nhap.match(ten_dang_nhap_dung);
        if (mang_ten_dang_nhap_dung != null) {
            var chuoi_ten_dang_nhap_dung = mang_ten_dang_nhap_dung.join("");
            document.getElementById('ten_dang_nhap').value = chuoi_ten_dang_nhap_dung;
        }
        document.getElementById('loi_ten_dang_nhap').innerHTML = sai + ' tên đăng nhập ' + ten_dang_nhap + ' không hợp lệ !';
        // document.getElementById('ten_dang_nhap').style.outline = '2px red solid';
        dem_sai1 = 1;
    } else {
        document.getElementById('loi_ten_dang_nhap').innerHTML = '';
        //document.getElementById('ten_dang_nhap').style.outline = '2px #00FF00 solid';
    }

    //kiểm tra mật khẩu đăng nhập
    var mat_khau_dang_nhap = document.getElementById('mat_khau_dang_nhap').value;
    var regex_mat_khau_dang_nhap = /^[A-z0-9_]{6,}$/;
    var result_mat_khau_dang_nhap = regex_mat_khau_dang_nhap.test(mat_khau_dang_nhap);
    if (result_mat_khau_dang_nhap == false) {
        document.getElementById('loi_mat_khau_dang_nhap').innerHTML = sai + ' mật khẩu có độ dài lớn hơn 6 kí tự, không chứa các kí tự đặc biệt !';
        dem_sai2 = 1;
    } else {
        document.getElementById('loi_mat_khau_dang_nhap').innerHTML = '';
    }
    if (ten_dang_nhap == null || ten_dang_nhap.trim() == "") {
        document.getElementById('loi_ten_dang_nhap').innerHTML = sai + ' tên đăng nhập không được để trống';
        document.getElementById('ten_dang_nhap').focus();
        return false;
    }
    if (mat_khau_dang_nhap == null || mat_khau_dang_nhap.trim() == "") {
        document.getElementById('mat_khau_dang_nhap').focus();
        document.getElementById('loi_mat_khau_dang_nhap').innerHTML = sai + ' mật khẩu không được để trống';
        return false;
    }
    if (dem_sai1 == 1) {
        document.getElementById('ten_dang_nhap').focus();
        return false;
    } else {
        if (dem_sai2 == 1) {
            document.getElementById('mat_khau_dang_nhap').focus();
            return false;
        } else {
            //alert('đăng nhập thành công !');
            return true;
        }
    }
} //end check1()

function kiem_tra() {
    var dung = '<img src="img/tich.png" style="width: 15px;height: 15px;">';
    var sai = '<img src="img/X.png" style="width: 15px;height: 15px;">';
    var dem_sai = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    var className = ["ho_ten", "phone", "mat_khau_1", "mat_khau_2", "email"];
    var i = 0;
    
    // //kiểm tra họ tên
    var ho_ten = document.getElementById('ho_ten').value;
    var regex_ho_ten = /^[a-zàáâãèéêếìíòóôõùúăđĩũơưăạảấầẩẫậắằẳẵặẹẻẽềềểễệỉịọỏốồổỗộớờởỡợụủứừửữựỳỵỷỹ\s]{5,50}$/i;
    var regex_ho_ten_dung = /[a-zàáâãèéêếìíòóôõùúăđĩũơưăạảấầẩẫậắằẳẵặẹẻẽềềểễệỉịọỏốồổỗộớờởỡợụủứừửữựỳỵỷỹ\s]+/gi;
    var result_ho_ten = regex_ho_ten.test(ho_ten);
    if (result_ho_ten == false) {
        var mang_ho_ten = ho_ten.match(regex_ho_ten_dung);
        if (mang_ho_ten != null) {
            var chuoi_ho_ten = mang_ho_ten.join(" ");
            document.getElementById('ho_ten').value = chuoi_ho_ten;
        }
        document.getElementById('loi_ho_ten').innerHTML = sai + ' tên ' + ho_ten + ' không hợp lệ !';
        //document.getElementById('ho_ten').focus();
        dem_sai[i] = 1;
        i++;
    } else {
        document.getElementById('loi_ho_ten').innerHTML = '';
        i++;
    }

    //kiểm tra số điện thoại
    var phone = document.getElementById('phone').value;
    var regex_phone = /^([0-9]{9,10})$/;
    var test_phone = regex_phone.test(phone);
    if (test_phone == false) {
        document.getElementById('loi_phone').innerHTML = sai + 'số điện thoại không hợp lệ !';
        //document.getElementById('phone').focus();
        dem_sai[i] = 1;
        i++;
    } else {
        document.getElementById('loi_phone').innerHTML = '';
        i++;
    }
    var nam = document.getElementById('nam');
    var nu = document.getElementById('nu');
    if ((nam.checked == false && nu.checked == false)) {
        document.getElementById('sai_gt').innerHTML = sai + ' bạn cần chọn giới tính !';
        dem_sai[i] = 1;
        i++;
    } else if ((nam.checked == true && nu.checked == true)) {
        document.getElementById('sai_gt').innerHTML = sai + ' chọn sai giới tính !';
        dem_sai[i] = 1;
        i++;
    } else {
        document.getElementById('sai_gt').innerHTML = '';
        i++;
    }
    var mat_khau_1 = document.getElementById('mat_khau_1').value;
    var regex_mat_khau_1 = /^[A-z0-9_]{6,8}$/;
    var result_mat_khau_1 = regex_mat_khau_1.test(mat_khau_1);
    if (result_mat_khau_1 == false) {
        document.getElementById('loi_mat_khau_1').innerHTML = sai + ' mật khẩu có độ dài từ 6 đến 8 kí tự, không chứa các kí tự đặc biệt !';
        //document.getElementById('mat_khau_1').focus();
        dem_sai[i] = 1;
        i++;
    } else {
        document.getElementById('loi_mat_khau_1').innerHTML = '';
        i++;
    }

    //kiểm tra độ khớp mật khẩu 
    var mat_khau_2 = document.getElementById('mat_khau_2').value;
    if (mat_khau_1 != mat_khau_2 || mat_khau_1 == '') {
        document.getElementById('sai').innerHTML = sai + "mật khẩu không đúng ! ";
        document.getElementById('dung').innerHTML = "";
        //document.getElementById('mat_khau_2').focus();	
        dem_sai[i] = 1;
        i++;
    } else {
        document.getElementById('dung').innerHTML = "  " + dung + "mật khẩu đúng !";
        document.getElementById('sai').innerHTML = "";
        i++;
    }

    //kiểm tra email
    var email = document.getElementById('email').value;
    var regex_email = /^[a-z][a-z0-9_\.]{5,32}@[a-z0-9]{2,}(\.[a-z0-9]{2,4}){1,2}$/i;
    var email_dung = /[a-z][a-z0-9_\.]{5,32}@[a-z0-9]{2,}(\.[a-z0-9]{2,4}){1,2}/gi;
    var result_email = regex_email.test(email);
    if (result_email == false) {
        var mang_email = email.match(email_dung);
        if (mang_email != null) {
            var chuoi_email = mang_email.join(" ");
            document.getElementById('email').value = chuoi_email;
        }
        document.getElementById('loi_email').innerHTML = sai + 'email ' + email + ' không hợp lệ !';
        //document.getElementById('email').focus();
        dem_sai[i] = 1;
        i++;
    } else {
        document.getElementById('loi_email').innerHTML = '';
        i++;
    }
    var address = document.getElementById('address').value;
    var regex_address = /^[a-zàáâãèéêếìíòóôõùúăđĩũơưăạảấầẩẫậắằẳẵặẹẻẽềềểễệỉịọỏốồổỗộớờởỡợụủứừửữựỳỵỷỹ0-9\s]{5,50}$/i;
    var address_dung = /[a-zàáâãèéêếìíòóôõùúăđĩũơưăạảấầẩẫậắằẳẵặẹẻẽềềểễệỉịọỏốồổỗộớờởỡợụủứừửữựỳỵỷỹ\s]{5,50}/gi;
    var result_address = regex_address.test(address);
    if (result_address == false) {
        var mang_address = address.match(address_dung);
        if (mang_address != null) {
            var chuoi_address = mang_address.join(" ");
            document.getElementById('address').value = chuoi_address;
        }
        document.getElementById('loi_address').innerHTML = sai + 'địa chỉ ' + address + ' không hợp lệ !';
        //document.getElementById('address').focus();
        dem_sai[i] = 1;
        i++;
    } else {
        document.getElementById('loi_address').innerHTML = '';
        i++;
    }
    for (x in dem_sai) {
        if (dem_sai[x] == 1) {
            document.getElementById(className[x]).focus();
            return false;
        }
    }
    document.getElementById("ho_ten").value=encodeURI(document.getElementById("ho_ten").value);
    document.getElementById("address").value=encodeURI(document.getElementById("address").value);
    return true;
    alert("abc");
} //end kiem_tra()

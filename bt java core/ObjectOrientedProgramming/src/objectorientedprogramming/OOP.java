
package objectorientedprogramming;

import java.homework.CountVowels;
import java.homework.Generics;
import java.util.ArrayList;

/**
 *
 * @author VLIT
 */
public class OOP {
    
    /** Lập trình hướng cấu trúc
     * Xây dựng chương trình theo mô hình chia để trị
     * Mỗi chương trình xử lý một công việc khác nhau
     */
    /** Lập trình hướng đối tượng(OOP)
     * OOP có 4 tính chất quan trọng: tính trừu tượng, tính kế thừa, tính đóng gói và tính đa hình
     * 1. Tính trừu tượng(Abstract)
     * 2. Tính kế thừa(Extends)
     * 3. Tính đóng gói
     * 4. Tính đa hình
     */
    /** package in java: trong java có 2 loại package: tự định nghĩa và có sẵn
     * Access Specifiers: private(4), public(1, all), protected(2, two(subclass, package)), default(3, package);
     * Modifiers: final(), abstract(), native(gọi tới nn khác), volatile, strictfp,
     * Static variables: tất cả mọi đối tượng sẽ dùng chung...
     */
    /**
     * Abstract class in Java: Không thể khởi tạo đối tượng với abstract class
     * Interface: tất cả method of interface đều là abstract method
     *          tất cả các biến của interface đều là static
     *          sinh ra để khắc phục hạn chế đơn thừa kế của java
     *      Khi 1 lớp kế thừa interface, thì nó sẽ ghi đè tất cả method của interface đó
     *          interface có thể kế thừa interface khác
     * @param args 
     */
    /**
     * Phân biệt abstract và interface
     * Chung: không có hàm khởi tạo, đều làm lớp cha cho 1 lớp khác
     * Riêng: interface chỉ kế thừa interface, có thể kế thừa nhiều interface nhưng chỉ có thể kế thừa 1 abstract
     *        các biến của interface là static or final.
     *        abstract có thể có contructor.
     * @param args 
     */
    /** HAS-A relationship
     * các đối tượng của các lớp là ...
     * @param args 
     */
    /** Generics: 
     *    Generics class là 1 lớp của java nhưng có khai báo parameter(T.
     *    Generics method là 1 phương thức của 1 lớp T và có khai báo tham số là parameter(T).
     *    Ưu điểm:
     *      - an toàn về kiểu dữ liệu(type-safety)
     *      - không cần phải ép kiểu dữ liệu(type casting is not required)
     *      - kiểm tra phát hiện lỗi sớm trong thời gian biên dịch(Compile-Time Check)
     *      - Viết 1 lần sử dụng nhiều lần
     *    Collection: là 1 mảng động, vì vậy nó khắc phục đk kích thước của mảng thông thường
     *                Nó cung cấp các phương thức và thao tác để làm vc với mảng
     *                Collection làm vc với đối tượng.
     *      ex: ArrayList<T> arrl = new ArrayList<T>();
     *    Hashtable cũng cấp các cặp mapping: key-value
    */
    /** Các lớp lồng nhau trong java: 1 lớp có thể chưa đinh nghĩa của lớp khác. 
     *      NOTE: Lớp bên trong có thể truy cập thuộc tính của lớp bên ngoài, lớp bên ngoài thì không.
     *            Phụ thuộc lớp bên ngoài.
     *  Inner Class( Lớp bên trong ): 
     *      Các loại inner class: 
     *          Regular
     *          Static(có thể truy câp trực tiếp, k cần thong qua lớp bên ngoài)
     *          Anonymous: lớp nạc danh :)). Được sd khi muốn cung cấp chức năng cho sự kiện.(EX: event actionlistioner for button.)
     *                      using for button...
     *          Method-local 
     */
    /** Ngoại lệ trong java
     * Err: lỗi mà chương trình không xử lý đk
     * Exception: có thể xử lý đk.
     *      classNotFoundException: đk ném ra khi ctr k tìm thấy lỗi
     *      IllegalAccessException: truy cập không hợp lệ
     *      RuntimeException: chỉ xẩy ra khi chạy ctr
     *      IOException: lỗi vào ra :))).
     *      SQLException: lỗi liên quan csdl
     *      ...
     * finaly: giải phóng tài nguyên
     * throw: ném ra ngoại lệ
     * throws: 1 phương thức có thể ném ra ngoại lệ nào
     * User-defined Exceptions: người dùng tự định nghĩa exceptions
     */ 
    /** NOTE
     * static: tất cả đối tượng của lớp sẽ đều đk sử dụng, thời gian sống = thời gian sống class.
     */
    public static void interfaceClass(){
        ArrayList<String> arrl = new ArrayList<String>();
        arrl.add("This's add in collection interface class");
        arrl.add("This's add in collection interface class");
        arrl.add(2, "This's add phần tử thứ n trong mảng sử dụng collection.");
        for (String a: arrl) {
            System.out.println(a);
        }
        System.out.println("Chỉ số pt: " + arrl.indexOf("This's add in collection interface class"));//trả về chỉ số phần tử
        System.out.println("This's ? " + arrl.contains("This's"));//kiểm tra xem có trong mảng hay không
        arrl.remove("This's");//xóa this's  :)
       
    }
    
    public static void main(String[] args) {
        //code here
    }
    
}

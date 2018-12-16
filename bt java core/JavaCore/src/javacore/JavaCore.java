/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javacore;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author VLIT
 */
public class JavaCore {

    /**
     * @param args the command line arguments
     */

    public static void Bai1a(int n){
        //Question 1a
        javacore.GenericClass a = new javacore.GenericClass();
        
        Integer[] a1 = {1, 2, 3, 4, 5};
        String[] a2 = {"Le", "Minh", "Tuan"};
        Double[] a3 = {1.1, 2.2, 3.3, 4.4, 5.5};

        System.out.print("Integer: ");
        a.displayValue(a1);
        System.out.print("\nString: ");
        a.displayValue(a2);
        System.out.print("\nDouble: ");
        a.displayValue(a3);
        System.out.println("");
    }
    
    public static void Bai1b(){
        //in ra thông tin sinh viên với điểm toán
        Student sv= new Student();
        sv.print();//nhập thông tin sinh viên
        sv.ShowDetails(10);//đưa ra thông tin sinh viên vừa nhập với điểm toán bằng 10
    }
    
//    public static void main(String[] args) throws IOException {
////        int n =3;
////        Bai1a(n);
//        Bai1b();
//        //bài 2
//        IODemo io = new IODemo();
//        String source="";//đưa đường dẫn file cần copy vào
//        String dest="";//đường dẫn chứa file được sau khi copy
//        io.copyFileUsingStream(source, dest);
//    }
//    
}

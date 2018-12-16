/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javacore;

import java.util.Scanner;

/**
 *
 * @author VLIT
 */
public class Student extends Person{
    private int id;
    
    public void print(){
        Scanner sc= new Scanner(System.in);
        System.out.println("Nhập thông tin sinh viên: ");
        System.out.print("id: "); this.id= sc.nextInt();
        System.out.print("name: "); this.name= sc.nextLine();
        System.out.print("age: "); this.age= sc.nextLine();
    }
    @Override
    public void ShowDetails() {
        System.out.println("Sinh viên bạn vừa nhập có thông tin sau");
        System.out.print("id: " + this.id); 
        System.out.print("name: " + this.name);
        System.out.print("age: " + this.age); 
    }
    
    public void ShowDetails(int mathMark) {
        ShowDetails();
        System.out.print("mathMark: " + mathMark);
    }
    public void ShowDetails(int mathMark, int physicalMark) {
        ShowDetails();
        System.out.print("mathMark/physicalMark: " + mathMark/physicalMark);
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objectorientedprogramming;

import java.util.Scanner;
import jdk.nashorn.internal.parser.Lexer;

/**
 *
 * @author VLIT
 */
public class Person {
    private String id;
    private String name;
    private String address;
    private int age;
    
    public Person(){this.id=""; this.name=""; this.address=""; this.age=0;}
    public Person(String _id, String _name, String _address, int _age){this.id=_id; this.name=_name; this.address=_address; this.age=_age;}
    
    public void InputDetails(){
        Scanner scan = new Scanner(System.in);
        System.out.print("Nhập id: "); this.id = scan.nextLine();
        System.out.print("Nhập tên: "); this.name = scan.nextLine();
        System.out.print("Nhập địa chỉ: "); this.address = scan.nextLine();
        System.out.print("Nhập tuổi: "); this.age = scan.nextInt();
    }
    public void DislayDetails(){
        System.out.println("Thông tin bạn vừa nhập là: \n\tid: "+this.id+"name: "+this.name+"\n\taddress: "+this.address+"\n\tage: "+this.age);
    }
    
    public String DisplayReverseName(){
        StringBuilder strName = new StringBuilder(this.name);
        strName.reverse();
        return strName.toString();
    }
}

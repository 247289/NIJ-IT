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
public class Students {
    private String ID;
    private String Name;
    private int Age;
    private String Address;

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public int getAge() {
        return Age;
    }

    public void setAge(int Age) {
        this.Age = Age;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }
    //nhập thông tin sinh viên
    public void In(){
        Scanner scan = new Scanner(System.in);
        this.ID = scan.nextLine();
        this.Name = scan.nextLine();
        this.Age = scan.nextInt();
        this.Address = scan.nextLine();
    }
    
    //hiển thị thông tin sinh viên trong mảng sinh viên
    public void Dislay(Students sv[]){
        for (int i = 0; i < sv.length; i++) {
            System.out.println(sv[i]);
        }
    }
    
}

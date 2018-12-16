/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objectorientedprogramming;

/**
 *
 * @author VLIT
 */
public class Employee {
    private int id;
    String name;
    public String address;
    protected String balance;
    static int luongcoban;//all object using
    
    public Employee() {
        this.id = 0;
        this.name = "";
        this.address = "";
        this.balance = "";
    }
    
    public Employee(int id, String name, String address, String balance) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.balance = balance;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }
    
    public void Display(){
        System.out.println("ID: " + this.id);
        System.out.println("Name: " + this.name);
        System.out.println("Address: " + this.address);
        System.out.println("Balance: " + this.balance);
        System.out.println("Luongcoban: " + luongcoban);
    }
}

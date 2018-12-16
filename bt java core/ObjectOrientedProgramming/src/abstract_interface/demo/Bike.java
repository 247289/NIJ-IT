/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package abstract_interface.demo;

/**
 *
 * @author VLIT
 */
public class Bike extends Vehicle{
    private int price;
    private String color;
    
    @Override
    public int accelarate() {
        return 30;
    }
    
    public void printDetails(){
       System.out.println("Price: " + this.price + "\nColor: " + this.color + "\nAccelarate: " + accelarate());
    }
    
}

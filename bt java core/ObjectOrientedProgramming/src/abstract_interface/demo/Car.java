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
public class Car extends Vehicle {

    private int price;
    private String color;

    public Car(int price, String color) {
        this.price = price;
        this.color = color;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Override
    public int accelarate() {
        return 30;
    }

    public void printDetails() {
        System.out.println("Price: " + this.price + "\nColor: " + this.color + "\nAccelarate: " + accelarate());
    }
    
}

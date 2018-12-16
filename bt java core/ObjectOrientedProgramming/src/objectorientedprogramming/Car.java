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
public class Car {
    private int price;
    private String color;
    private String type;
    
    public Car() {
        this.price = 0;
        this.color = "";
        this.type = "";
    }
    
    public Car(int price, String color, String type) {
        this.price = price;
        this.color = color;
        this.type = type;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
    public void DishLay(){
        System.out.println("Price: " + this.price);
        System.out.println("Color: " + this.color);
        System.out.println("Type: " + this.type);
    }
}

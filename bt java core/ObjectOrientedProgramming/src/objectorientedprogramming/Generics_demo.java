/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objectorientedprogramming;

import java.util.ArrayList;

/**
 *
 * @author VLIT
 */
public class Generics_demo {
    public ArrayList DemoArrayList(){
        ArrayList arrl = new ArrayList();
        arrl.add("Demo ArrayList");
        return arrl;
    }
    
    public void DemoGenerics(){
        ArrayList<String> arrl = new ArrayList<String>();//collection
        arrl.add("Demo Generics 0");
        arrl.add("Demo Generics 1");
        arrl.add("Demo Generics 2");
        arrl.add("Demo Generics 3");
        arrl.add("Demo Generics 4");
        
        for (int i = 0; i < arrl.size(); i++) {
            String value= arrl.get(i);
            System.out.println(value);
        }
    }
    
}

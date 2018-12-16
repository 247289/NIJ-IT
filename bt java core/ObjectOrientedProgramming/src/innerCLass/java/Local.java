/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package innerCLass.java;

/**
 *
 * @author VLIT
 */
public class Local {
    private String name = "This is local";
    public void DEMO(){
        class localDemo{
            public void demo(){
                System.out.println("This is name: " + name);
            }
        }
        localDemo localdemo = new localDemo();
        localdemo.demo();
    }
    
}

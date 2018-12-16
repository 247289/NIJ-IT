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
public class StaticCLass {
    private static String fieldToValidate;
    static class ValidateCreditCards
    {
        void validate() 
        {
            System.out.println("fieldToValidate: " + fieldToValidate);
        }
    }
}

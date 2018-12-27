/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package homework.servlet.jsp;

public class ELFC2 {
    public static boolean CheckString(String str){
        if (str.length() == 0) return true;
        return false;
    }
    
    public static int sum(int a, int b){
        return a+b;
    }
    
    public static int div(int a, int b){
        return a/b;
    }
    
    public static int mov(int a, int b){
        return a%b;
    }
    
    public static int minus(int a, int b){
        return a-b;
    }
}

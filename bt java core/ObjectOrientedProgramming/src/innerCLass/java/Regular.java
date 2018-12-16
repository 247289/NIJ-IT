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
public class Regular {
    private String user;
    private String pass;

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    class ValidateCredentials{//this is Regular inner class
        public void Validate(){
            System.out.println("User Name: " + user);
            System.out.println("Pass Word: " + pass);
        }
    }
}

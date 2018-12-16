/*
 Write a Java program to accept a string from keyboard, create methods to do following tasks:
    Check string is palindrome.
    Count number of vowels (a, e, i, o, u) in string
 */
package java.homework;

import java.util.Scanner;
import jdk.nashorn.internal.parser.Lexer;

/**
 *
 * @author VLIT
 */
public class CountVowels {
    private String palindrome;
    
    public class Count{
        public void In(){
            Scanner sc = new Scanner(System.in);
            palindrome = sc.nextLine();
        }
        public String Sum(char k){
            int count = 0;
            char[] str = palindrome.toCharArray();
            for (int i = 0; i < str.length; i++) {
                if (str[i] == k) {
                    count+=1;
                }
            }
            return "" + count;
        }
    }
}

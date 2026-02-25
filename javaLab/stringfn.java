
package javaLab;
import java.util.Scanner;

public class stringfn {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        String st;
        System.out.println("enter the string ");
        st=sc.nextLine();
        System.out.println("the letter at position 0 : "+st.charAt(0));
        System.out.println("the unicode of letter at 0 :"+st.codePointAt(0));
        System.out.println("enter a string to compare :");
        String st1=sc.nextLine();
        int cmp=st.compareToIgnoreCase(st1);
        if(cmp==0){
        System.out.println("similar string");
        }
        else{
        System.out.println("different string");

        }
        System.out.println("the length of string "+st.length());
        System.out.println("the substring of string "+st.substring(2,4));
    }

    
}

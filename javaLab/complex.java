package javaLab;
import java.util.Scanner;

public class complex {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        System.out.println("enter the real part ");
        int r1=sc.nextInt();
        System.out.println("enter the imaginary part ");
        int i1=sc.nextInt();
        System.out.println("enter the real part ");
        int r2=sc.nextInt();
        System.out.println("enter the imaginary part ");
        int i2=sc.nextInt();
        System.out.println(r1+r2+" + ("+(i1+i2)+"i)");
        
    }
    
}

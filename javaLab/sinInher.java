package javaLab;
import java.util.Scanner;


class one{
    Scanner sc=new Scanner(System.in);
    int a,b;
    void getvar(){
    System.out.println("enter two  values ");
    a=sc.nextInt();
    b=sc.nextInt();
    }
}
class two extends one{
    void display(){
        System.out.println("the area of rectangle "+(a*b));
        System.out.println("the area of triangle "+(0.5*a*b));
        System.out.println("the area of cylinder "+(2*3.14*a*b));
    }
    
}
public class sinInher {
    public static void main(String[] args){
        two t=new two();
        t.getvar();
        t.display();
    }
}

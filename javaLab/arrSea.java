package javaLab;
import java.util.Scanner;

public class arrSea {
    public static void main(String[] args){
        Scanner scan=new Scanner(System.in);
        System.out.println("enter the length of array");
        int l=scan.nextInt();
        int[] a=new int[l];
        for(int i=0;i<l;i++){
            System.out.println("enter the "+i+"th element ");
            a[i]=scan.nextInt();
        }
    
        System.out.println("enter the element to search ");
        int n=scan.nextInt();
        boolean flag=false;
        for(int i=0;i<l;i++){
            if(a[i]==n){
                flag=true;
                System.out.println("the element is present at "+i);   
            }
        }
        if(flag==false){
            System.out.println("element not found in the array ");
        }
    
    }
}

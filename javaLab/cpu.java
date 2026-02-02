package javaLab;
import java.util.Scanner;

public class cpu{
    float price;
    void cp(float price){
        this.price=price;
        System.out.println("price:"+price);
    }


    public class processor{
           int cores;
           String man;
           void proc(int cores, String man){
                this.cores=cores;
                this.man=man;
                System.out.println("No of Cores:"+ cores);
                System.out.println("Manufactures:"+ man);
           }

    }

    static class ram{
        void ra(){
            System.out.println("Memory: 512 GB");
             System.out.println("Ram Manufacture: Intel");
        }
        
    }

    public static void main(String[] args){
        
        cpu c1=new proc()
    }
}
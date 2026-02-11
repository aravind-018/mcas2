package javaLab;
import java.util.Scanner;

public class cpu{
    float price;
    cpu(float price){
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
        Scanner sc =new Scanner(System.in);
        System.out.println("enter the price of the cpu: ");
        float pr=sc.nextFloat();
        
        cpu c1=new cpu(pr);

        cpu.processor p1=c1.new processor();
        p1.proc(8,"AMD");

        cpu.ram r1=new cpu.ram();
        r1.ra();



    }
}
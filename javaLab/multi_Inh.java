package javaLab;
import java.util.Scanner;

class person{
    String name;
    int age;
    Scanner sc=new Scanner(System.in);
    void get_person(){
        System.out.println("enter name ");
        name=sc.nextLine();
        System.out.println("enter age ");
        age=sc.nextInt();
    }
    void display_pers(){
        System.out.println("Name   :"+name);
        System.out.println("Age  :"+age);
    }
}
class employee extends person{
    int empid,salary;
    void get_emp(){
        System.out.println("enter employee id ");
        empid=sc.nextInt();
        System.out.println("enter salary ");
        salary=sc.nextInt();
    }
    void display_emp(){
        System.out.println("Employee id   :"+empid);
        System.out.println("salary  :"+salary);
    }
}

class manager extends employee{
    void display(){
        System.out.println("Department  :Sales");
    }
}

public class multi_Inh { 
    public static void main(String[] args){
        manager Manager=new manager();
        Manager.get_person();
        Manager.get_emp();
        Manager.display_pers();
        Manager.display_emp();
        Manager.display();

    }   
}

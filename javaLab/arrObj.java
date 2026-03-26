package javaLab;


class student{
    int age;
    String name;
    student(String i,int a){
            name=i;
            age=a;
        }
    void display(){
        System.out.println(name+ " " +age);
    }

}
public class arrObj {
    
    public static void main(String[] args) {
       student[] obj={
        new student("Sweety", 21),
        new student("Merly", 21),
        new student("Vrinda", 22)
       };
       
       for (int i=0;i<obj.length;i++ ){
            obj[i].display();
       }
       }
        
    }


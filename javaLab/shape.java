public class shape {
    void area(int a){
        System.out.println("the area of square : "+a*a);
    }
    void area(int l,int b){
        System.out.println("the area of rectangle: "+l*b);   
    }
    void area(double l,double b){
        System.out.println("the area of rectangle: "+l*b);
    }
    public static void main(String[] args){
        shape ob1=new shape();
        ob1.area(3);
        ob1.area(2,3);
        ob1.area(2.5,3.9);

    }
}
   

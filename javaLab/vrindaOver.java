 
 class A {
    void add(){
        System.out.println("Hellooo vrinda");
    }
 }
 class B extends A {
        void add(){
            // super.add();
            System.out.println("Hellooo karthaaaa");

        } 
}
class vrindaOver {
     public static void main(String a[]){
            B bobj = new B();
            bobj.add();
        }
}

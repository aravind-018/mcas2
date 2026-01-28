package javaLab;
public class Product {
    int pcode;
    String pname;
    float price;

    public Product(int pcode, String pname, float price) {
        this.pcode = pcode;
        this.pname = pname;
        this.price = price;
    }

    public void display() {
        System.out.println("Product code: " + pcode);
        System.out.println("Product name: " + pname);
        System.out.println("Product price: " + price);
        System.out.println();
    }

    public static void main(String[] args) {
        Product p1 = new Product(1234, "Watch", 125f);
        Product p2 = new Product(1235, "Soap", 250f);
        Product p3 = new Product(1240, "Shoes", 1250f);

        p1.display();
        p2.display();
        p3.display();

        if (p1.price < p2.price) {
            if (p1.price < p3.price) {
                System.out.println("Cheapest product: " + p1.pname);
            } else {
                System.out.println("Cheapest product: " + p3.pname);
            }
        } else {
            if (p2.price < p3.price) {
                System.out.println("Cheapest product: " + p2.pname);
            } else {
                System.out.println("Cheapest product: " + p3.pname);
            }
        }
    }
}

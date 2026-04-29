class Example {

    // Method 1
    void add(int a, int b) {
        System.out.println("Sum of 2 numbers: " + (a + b));
    }

    // Method 2 (overloaded)
    void add(int a, int b, int c) {
        System.out.println("Sum of 3 numbers: " + (a + b + c));
    }

    // Method 3 (overloaded with different type)
    void add(double a, double b) {
        System.out.println("Sum of doubles: " + (a + b));
    }

    public static void main(String[] args) {
        Example obj = new Example();

        obj.add(10, 20);        // calls method 1
        obj.add(10, 20, 30);    // calls method 2
        obj.add(5.5, 2.5);      // calls method 3
    }
}
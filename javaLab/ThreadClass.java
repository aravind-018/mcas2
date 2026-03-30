import java.util.*;

class Multiple5 extends Thread {
    public void run() {
        for (int i = 1; i <= 10; i++) {
            System.out.println(i + " x 5 = " + (i * 5));
        }
    }
}

class Prime extends Thread {
    int n;

    Prime(int limit) {
        n = limit;
    }

    int isPrime(int num) {
        if (num <= 1) return 0; // 0 and 1 are not prime
        for (int i = 2; i <= num / 2; i++) {
            if (num % i == 0)
                return 0;
        }
        return 1;
    }

    public void run() {
        for (int i = 2; i <= n; i++) { // start from 2
            if (isPrime(i) == 1) {
                System.out.println("Prime: " + i);
            }
        }
    }
}

public class ThreadClass {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Multiple5 m = new Multiple5();

        System.out.print("Enter limit for generating prime: ");
        int n = sc.nextInt();

        Prime m1 = new Prime(n);

        m.start();
        m1.start();
    }
}
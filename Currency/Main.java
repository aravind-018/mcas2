import converter.Dollar;
import converter.euro.Euro;
import java.util.Scanner;

class Main {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        double usd, euro;

        System.out.println("Enter amount in USD:");
        usd = sc.nextDouble();

        System.out.println("Enter amount in EURO:");
        euro = sc.nextDouble();

        Dollar d = new Dollar();
        d.toInr(usd);

        Euro e = new Euro();
        e.toInr(euro);

        sc.close();
    }
}
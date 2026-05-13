package converter;

public class Dollar {

    public void toInr(double usd) {
        double ind = usd * 80;
        System.out.println("USD = " + usd + " INR = " + ind);
    }
}
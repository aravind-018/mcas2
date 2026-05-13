package converter.euro;

public class Euro {

    public void toInr(double euro) {
        double ind = euro * 90;
        System.out.println("EURO = " + euro + " INR = " + ind);
    }
}
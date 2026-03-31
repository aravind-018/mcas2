
import java.util.Arrays;
import java.util.Scanner;

public class strSort {
        public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.print("enter a string: ");
        String str=sc.nextLine();
        char[] charArr=str.toCharArray();
        Arrays.sort(charArr);
        str=new String(charArr);
        System.out.println("sorted string:\t"+str);
        }
    
}

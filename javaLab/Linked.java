import java.util.*;

public class Linked {
    public static void main(String[] args) {
        Set<String> set = new LinkedHashSet<String>();
        Scanner sc = new Scanner(System.in);
        String el;
        int ch;

        do {
            System.out.print(
                "\n----------------\n" +
                "1: Add\n" +
                "2: Remove\n" +
                "3: Display\n" +
                "4: Search\n" +
                "0: Exit\n" +
                "----------------\nEnter your choice: "
            );
            ch = sc.nextInt();

            switch (ch) {
                case 1:
                    System.out.print("Enter element to insert: ");
                    el = sc.next();
                    set.add(el);
                    break;

                case 2:
                    System.out.print("Enter element to remove: ");
                    el = sc.next();
                    if (set.remove(el)) {
                        System.out.println(el + " removed from the set.");
                    } else {
                        System.out.println(el + " not found in the set.");
                    }
                    break;

                case 3:
                    System.out.println("LinkedHashSet: " + set);
                    break;

                case 4:
                    System.out.print("Enter element to search: ");
                    el = sc.next();
                    boolean contains = set.contains(el);
                    System.out.println("Set contains " + el + " : " + contains);
                    break;

                case 0:
                    System.out.println("Exiting...");
                    break;

                default:
                    System.out.println("Invalid choice! Try again.");
                    break;
            }

        } while (ch != 0);

        sc.close();
    }
}
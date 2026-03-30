import java.util.*;

public class ArrayListExample {
    public static void main(String[] args) {
        ArrayList<String> list = new ArrayList<String>();
        Scanner sc = new Scanner(System.in);
        String el;
        int ch;

        do {
            System.out.print(
                "\n----------------\n" +
                "1: Add element\n" +
                "2: Size of list\n" +
                "3: Search by index\n" +
                "4: Find index of element\n" +
                "5: Check if contains element\n" +
                "6: Remove element by value\n" +
                "7: Remove element by index\n" +
                "8: Display list\n" +
                "9: Clear list\n" +
                "0: Exit\n" +
                "----------------\nEnter your choice: "
            );
            ch = sc.nextInt();

            switch (ch) {
                case 1:
                    System.out.print("Enter element to insert: ");
                    el = sc.next();
                    list.add(el);
                    break;

                case 2:
                    System.out.println("Size of the ArrayList: " + list.size());
                    break;

                case 3:
                    System.out.print("Enter index of element to search: ");
                    int index = sc.nextInt();
                    if (index >= 0 && index < list.size())
                        System.out.println("Element at index " + index + " is " + list.get(index));
                    else
                        System.out.println("Invalid index!");
                    break;

                case 4:
                    System.out.print("Enter element to find index: ");
                    el = sc.next();
                    index = list.indexOf(el);
                    if (index != -1)
                        System.out.println("Index of " + el + " is " + index);
                    else
                        System.out.println(el + " not found in the list");
                    break;

                case 5:
                    System.out.print("Enter an element: ");
                    el = sc.next();
                    boolean contains = list.contains(el);
                    System.out.println(el + " is in the list: " + contains);
                    break;

                case 6:
                    System.out.print("Enter element to remove: ");
                    el = sc.next();
                    boolean removed = list.remove(el);
                    if (removed)
                        System.out.println("After removing " + el + ", ArrayList: " + list);
                    else
                        System.out.println(el + " not found in the list");
                    break;

                case 7:
                    System.out.print("Enter index to remove element: ");
                    index = sc.nextInt();
                    if (index >= 0 && index < list.size()) {
                        list.remove(index);
                        System.out.println("After removing the element, ArrayList: " + list);
                    } else {
                        System.out.println("Invalid index!");
                    }
                    break;

                case 8:
                    System.out.println("ArrayList: " + list);
                    break;

                case 9:
                    list.clear();
                    System.out.println("ArrayList cleared.");
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
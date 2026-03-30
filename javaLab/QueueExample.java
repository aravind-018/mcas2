import java.util.*;

public class QueueExample {
    public static void main(String[] args) {
        PriorityQueue<String> q = new PriorityQueue<String>();
        Scanner sc = new Scanner(System.in);
        String el;
        int ch;

        do {
            System.out.print(
                "\n----------------\n" +
                "1: Add element\n" +
                "2: Remove element\n" +
                "3: Display queue\n" +
                "4: Head of queue\n" +
                "0: Exit\n" +
                "----------------\nEnter your choice: "
            );
            ch = sc.nextInt();

            switch (ch) {
                case 1:
                    System.out.print("Enter element to insert: ");
                    el = sc.next();
                    q.add(el);
                    break;

                case 2:
                    if (!q.isEmpty()) {
                        System.out.println("Removed element: " + q.remove());
                    } else {
                        System.out.println("Queue is empty. Nothing to remove.");
                    }
                    break;

                case 3:
                    System.out.println("Priority queue: " + q);
                    break;

                case 4:
                    if (!q.isEmpty()) {
                        System.out.println("Head of the queue: " + q.peek());
                    } else {
                        System.out.println("Queue is empty. No head element.");
                    }
                    break;

                case 0:
                    System.out.println("Exiting...");
                    break;

                default:
                    System.out.println("Wrong choice! Try again.");
                    break;
            }

        } while (ch != 0);

        sc.close();
    }
}
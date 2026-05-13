import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

class Teachers {
    String name;
    int age;
    String subject;

    // Method to get data from user
    void input(Scanner sc) {
        System.out.print("Enter Teacher Name: ");
        name = sc.nextLine();

        System.out.print("Enter Age: ");
        age = sc.nextInt();
        sc.nextLine();

        System.out.print("Enter Subject: ");
        subject = sc.nextLine();
    }

    // Display method
    void display() {
        System.out.println("Name    : " + name);
        System.out.println("Age     : " + age);
        System.out.println("Subject : " + subject);
        System.out.println("--------------------------");
    }
}

class Principal extends Teachers {

    // Bubble sort method
    void sort(ArrayList<Teachers> list) {
        int n = list.size();

        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {

                if (list.get(j).name.compareToIgnoreCase(list.get(j + 1).name) > 0) {

                    Collections.swap(list, j, j + 1);
                }
            }
        }
    }

    // Search method
    void search(ArrayList<Teachers> list, String searchName) {
        boolean found = false;

        for (Teachers t : list) {
            if (t.name.equalsIgnoreCase(searchName)) {
                System.out.println("\nTeacher Found:");
                t.display();
                found = true;
                break;
            }
        }

        if (!found) {
            System.out.println("Teacher not found.");
        }
    }

    // Overridden display method
    @Override
    void display() {
        System.out.println("Displaying Sorted Teacher List");
    }

    // Method to display sorted list
    void displaySorted(ArrayList<Teachers> list) {
        display();

        for (Teachers t : list) {
            t.display();
        }
    }
}

public class exam1 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        ArrayList<Teachers> teacherList = new ArrayList<>();

        System.out.print("Enter number of teachers: ");
        int n = sc.nextInt();
        sc.nextLine();

        // Input teacher details
        for (int i = 0; i < n; i++) {
            System.out.println("\nEnter Details of Teacher " + (i + 1));

            Teachers t = new Teachers();
            t.input(sc);

            teacherList.add(t);
        }

        Principal p = new Principal();

        // Sort teachers
        p.sort(teacherList);

        // Display sorted list
        System.out.println("\nSorted Teacher List:");
        p.displaySorted(teacherList);

        // Search teacher
        System.out.print("\nEnter teacher name to search: ");
        String searchName = sc.nextLine();

        p.search(teacherList, searchName);

        sc.close();
    }
}
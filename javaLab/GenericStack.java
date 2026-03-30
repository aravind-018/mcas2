import java.util.*;

class Stack<T> {
    ArrayList<T> A;
    int top = -1;
    int size;

    Stack(int size) {
        this.size = size;
        this.A = new ArrayList<T>(size);
    }

    void push(T X) {
        if (top + 1 == size) {
            System.out.println("Stack Overflow");
        } else {
            top = top + 1;
            if (A.size() > top)
                A.set(top, X);
            else
                A.add(X);
        }
    }

    T top() {
        if (top == -1) {
            System.out.println("Stack Underflow");
            return null;
        } else
            return A.get(top);
    }

    void pop() {
        if (top == -1) {
            System.out.println("Stack Underflow");
        } else
            top--;
    }

    boolean empty() {
        return top == -1;
    }

    @Override
    public String toString() {
        if (top == -1)
            return "Stack is empty";
        String ans = "";
        for (int i = 0; i < top; i++) {
            ans += String.valueOf(A.get(i)) + "->";
        }
        ans += String.valueOf(A.get(top));
        return ans;
    }
}

public class GenericStack {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter max size of stack: ");
        int n = sc.nextInt();

        Stack<Integer> s1 = new Stack<>(n);
        int v;
        for (int i = 0; i < n; i++) {
            System.out.print("Enter element " + (i + 1) + ": ");
            v = sc.nextInt();
            s1.push(v);
        }

        System.out.println("\nStack after pushing " + n + " elements:\n" + s1);

        s1.pop();
        System.out.println("\nStack after pop:\n" + s1);
    }
}
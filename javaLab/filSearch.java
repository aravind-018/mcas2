import java.io.File;
import java.util.Scanner;
public class filSearch {

    public static void search(File dir, String name) {
        if (dir == null || !dir.exists()) return;

        File[] files = dir.listFiles();
        if (files == null) return;

        for (File file : files) {
            if (file.getName().equalsIgnoreCase(name)) {
                System.out.println(file.getAbsolutePath());
            }

            if (file.isDirectory()) {
                search(file, name);
            }
        }
    }

    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        File startDir = new File("C:\\Users\\cacet\\OneDrive\\Desktop\\MCAs2");
        System.out.print("enter file name:"+" ");
        String target=sc.nextLine();
        search(startDir, target);

    }
}
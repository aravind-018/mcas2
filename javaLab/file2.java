import java.io.*;

public class file2 {

    public static void main(String[] args) {

        String fileName = "sample.txt";

        // 1. Writing to a file
        try {
            FileWriter writer = new FileWriter(fileName);
            writer.write("Hello, this is a file handling example in Java.\n");
            writer.write("This file is created, written, and read using Java.");
            writer.close();
            System.out.println("Data written to file successfully.\n");
        } catch (IOException e) {
            System.out.println("Error while writing to file.");
            e.printStackTrace();
        }

        // 2. Reading from a file and displaying contents
        try {
            FileReader reader = new FileReader(fileName);
            BufferedReader bufferedReader = new BufferedReader(reader);

            String line;
            System.out.println("Reading file contents:\n");

            while ((line = bufferedReader.readLine()) != null) {
                System.out.println(line);
            }

            bufferedReader.close();
        } catch (IOException e) {
            System.out.println("Error while reading the file.");
            e.printStackTrace();
        }
    }
}
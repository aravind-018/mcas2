import java.io.*;

public class fileCopy {

    public static void main(String[] args) {

        String sourceFile = "sample.txt";
        String destinationFile = "destination.txt";

        try {
            FileInputStream fis = new FileInputStream(sourceFile);
            FileOutputStream fos = new FileOutputStream(destinationFile);

            int data;

            // Read byte by byte and write to destination
            while ((data = fis.read()) != -1) {
                fos.write(data);
            }

            fis.close();
            fos.close();

            System.out.println("File copied successfully.");

        } catch (IOException e) {
            System.out.println("Error occurred during file copy.");
            e.printStackTrace();
        }
    }
}
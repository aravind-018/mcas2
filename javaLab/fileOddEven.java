import java.io.*;

public class fileOddEven {

    public static void main(String[] args) {

        String inputFile = "sample.txt";
        String oddFile = "odd.txt";
        String evenFile = "even.txt";

        try {
            BufferedReader reader = new BufferedReader(new FileReader(inputFile));
            BufferedWriter oddWriter = new BufferedWriter(new FileWriter(oddFile));
            BufferedWriter evenWriter = new BufferedWriter(new FileWriter(evenFile));

            String line;
            int lineNumber = 1;

            while ((line = reader.readLine()) != null) {

                if (lineNumber % 2 == 0) {
                    evenWriter.write(line);
                    evenWriter.newLine();
                } else {
                    oddWriter.write(line);
                    oddWriter.newLine();
                }

                lineNumber++;
            }

            reader.close();
            oddWriter.close();
            evenWriter.close();

            System.out.println("Lines separated successfully into odd.txt and even.txt");

        } catch (IOException e) {
            System.out.println("Error occurred during file processing.");
            e.printStackTrace();
        }
    }
}
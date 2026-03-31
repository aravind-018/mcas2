
import java.util.Scanner;

interface Printer{
    void printDocument();
}
interface Scaner{
    void scanDocument();
}
class MFM implements Printer,Scaner{
    public void printDocument(){
        System.out.println("printing document");
    }
    public void scanDocument(){
        System.out.println("scaning document");
    }
    
}

class inter{
    public static void main(String[] args){
        MFM m=new MFM();
        m.printDocument();
        m.scanDocument();
    }
    
}
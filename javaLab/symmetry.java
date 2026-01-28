package javaLab;
import java.util.Scanner;

public class symmetry {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        System.out.println("enter no. of row and columns ");
        int n=sc.nextInt();
        int e=0;
        int[][] mat1=new int[n][n];
        for(int i=0;i<n;i++){
            for(int j=0;j<n;j++){
                mat1[i][j]=sc.nextInt();
            }
        }
        int[][] tran=new int[n][n];
        for(int i=0;i<n;i++){
            for(int j=0;j<n;j++){
                tran[i][j]=mat1[j][i];
                System.out.print(tran[i][j]+" ");
            }
            System.out.println("");
        }
        for(int i=0;i<n;i++){
            for(int j=0;j<n;j++){
                if(tran[i][j]!=mat1[i][j]){
                   e++;
                
            }
        }
          
        }
        if(e>0){
            System.out.println("the matrix is not symmetric");
        }
        else{
            System.out.println("the matrix is symmetric");
        }




    
    }
    
}

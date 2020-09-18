import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		 Scanner p = new Scanner(System.in);
	     
	     int n2 = 0;
	     double f = 0;
	     System.out.println(" Ingrese la cantidad numero que quieras:");
	     n2=p.nextInt();
	     for (int i = 1; i<= n2; i++) {
	          System.out.print(" "+i);
	     }
	     System.out.println(" ");
		
	 Scanner sc = new Scanner(System.in);
	 
	 int n=0;
	 int n1 =0;
	 
	 
		System.out.println("Ingres un numero de la lista para saber cual es mayor  ");
		System.out.println("Ingres Ingres un numero ");
		n= sc.nextInt();
		System.out.println("Ingres Ingres un numero");
		n= sc.nextInt();

	 if (n>n1){
		 System.out.println("Este numero es el mayor"+" "+n);
	 }else {
		 if(n<n1){
		 System.out.println("Este numero es el mayor"+" "+n1);
		 }
		 } 
	
	}
	
	}


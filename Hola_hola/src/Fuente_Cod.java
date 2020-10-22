import java.util.Scanner;

public class Fuente_Cod {
	
	
	public static void main (String args[]) {
		
		Scanner p = new Scanner(System.in);
		
		
		
		System.out.println("¡Hola Mundo!");
		
		Persona Hombre =new Persona ();
		Persona Mujer =new Persona();
		
		int kil;
		double costto,kiga=60.56656,galoto, lito;
		System.out.println(" Ingrese un numero:");
	    kil=p.nextInt();
	    galoto = kil/kiga;
	    
		lito = galoto*3.78541;
		costto = galoto*12.216;
		
	    
		System.out.println("Galones por en "+ kil+" : "+galoto);
		
		System.out.println("Litros consumidos : "+lito);
		System.out.println("Precio : "+costto);
		
		
	}

}

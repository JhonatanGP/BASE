import java.util.Scanner;

public class Ejercicio14 {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int número;		
		int multiplicado = 0;
		int resultado;
		
		System.out.println("Dame un número y te diré su tabla de multiplicar");
		número = scanner.nextInt();
		
		while(multiplicado<11) {
			resultado = número * multiplicado;
			System.out.println(número + " x " + multiplicado + " = "+resultado);
			multiplicado++;  
		
			
			
		}
		scanner.close();
	}

}

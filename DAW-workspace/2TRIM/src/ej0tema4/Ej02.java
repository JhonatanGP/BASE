package ej0tema4;

public class Ej02 {

	public static void main(String[] args) {
		
		String minus = getMinus(" ¿QUE TAL ESTÁS?  ");
		System.out.println(minus);
	}

	public static String getMinus (String cad1) {
		
		return cad1.trim().toLowerCase();
	}
}
package ej0tema4;

public class Ej01 {

	public static void main(String[] args) {

		String mayus = getMayus(" ¿Que tal?  ");
		System.out.println(mayus);
	}
	
	public static String getMayus (String cad1) {
		
		return cad1.trim().toUpperCase();
	}
	
}
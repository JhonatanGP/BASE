package ej0tema4;

public class Ej03 {

	public static void main(String[] args) {
	
		System.out.println(getMayMin(" ¿Como estás? ",1));
		System.out.println(getMayMin(" ¿COMO ESTÁS? ",2));
		System.out.println(getMayMin(" ¿Como estás? ",3));

	}
	
	public static String getMayMin (String cad, Integer num) {
		
		if (num == 1) 
			cad = cad.trim().toUpperCase();
		else if  (num == 2)
			cad = cad.trim().toLowerCase();
		
		return cad;
		
	}
}

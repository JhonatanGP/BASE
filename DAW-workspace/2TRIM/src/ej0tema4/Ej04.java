package ej0tema4;

public class Ej04 {

	public static void main(String[] args) {

		System.out.println(getMayMin(" ¿Como estás? ",1));
		System.out.println(getMayMin(" ¿COMO ESTÁS? ",2));
		System.out.println(getMayMin(" ¿Como estás? ",3));

	}
	
	public static String getMayMin (String cad, Integer num) {
		
		if (num == 1) 
			cad = Ej01.getMayus(cad) ;
		else if  (num == 2)
			cad = Ej02.getMinus(cad);
		
		return cad;
	}

}

package ej19;

import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);	
		
		Alumno alumno = new Alumno();			
		System.out.println("Dime tu dni");
		String dni = scanner.nextLine();
		alumno.setDni(dni);
		
		System.out.println("Dime tu nombre");
		String nombre = scanner.nextLine();
		alumno.setNombre(nombre);
		
		System.out.println("Dime tu edad");
		Integer edad = scanner.nextInt();
		alumno.setEdad(edad);
		
		System.out.println("Dime tu nota");
		Double nota = scanner.nextDouble();
		alumno.setNota(nota);
		
		System.out.println("DNI: " + alumno.getDNI());
		System.out.println("Nombre: " + alumno.getNombre());
		System.out.println("Edad: " + alumno.getEdad());
		System.out.println("Nota: " + alumno.getNota());

		alumno.aprobar();
		System.out.println("Nueva nota: " + alumno.getNota());
		
		scanner.close();

	}

}

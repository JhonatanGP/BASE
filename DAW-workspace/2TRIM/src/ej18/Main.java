package ej18;

import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);		
		Alumno alumno = new Alumno();			
		//alumno.setDni("54999853E");
		//alumno.setNombre("Jhonatan");
		//alumno.setEdad(25);
		//alumno.setNota(10.0);
				
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
		scanner.close();
		
		Alumno alumno2 = new Alumno(dni,nombre, edad, nota);
		System.out.println("DNI: " + alumno.getDNI() + alumno.getNombre() + alumno.getEdad() + alumno.getNota() );

	}

}

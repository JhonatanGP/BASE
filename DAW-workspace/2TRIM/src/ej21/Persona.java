package ej21;

public class Persona {
	
	private String dni;
	private String nombre;
	private Integer edad;
	
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Integer getEdad() {
		return edad;
	}
	public void setEdad(Integer edad) {
		this.edad = edad;
	}
	//Este construcor es cuando tengo los 3 datos y lo sé y los pongo directamente en ese orden
	public Persona(String dni, String nombre, Integer edad) {
		this.dni = dni;
		this.nombre = nombre;
		this.edad = edad;
	}
	//Este construcor es cuando tengo solo 1 dato(dni) y los otros 2 no los sé. solo pongo dni, que es el que conozco
	public Persona(String dni) {
		this.dni = dni;
	}
}

/*
Crea una clase Persona que tenga los atributos nombre y edad privados con sus get y set. Haz
que la clase Alumno herede de ella. Borra todo lo que sea duplicado. ¿Tienes que cambiar algo
en tu programa de pruebas? 
*/
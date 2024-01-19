package ej21;

public class Alumno extends Persona{
	private String dni;
	private Double nota;
			
	public Alumno(String dni) {
		super(dni);
		this.dni = dni;
	}
	
	// Constructor con el dni,nombre, edad y nota
	public Alumno(String dni, String nombre, Integer edad, Double nota) {
		super(dni, nombre, edad);
		this.nota = nota;
	}
	
	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}
	public Double getNota() {
		return nota;
	}
	public void setNota(Double nota) {
		this.nota = nota;
	}
	public void aprobar() {
		this.nota = 5.0;
	}
	
}
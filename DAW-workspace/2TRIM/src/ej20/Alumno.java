package ej20;

public class Alumno {
	
	private String dni;
	private String nombre;
	private Integer edad;
	private Double nota;
			
	/**
	 * Constructor con el dni como parametro
	 * @param dni
	 */
	public Alumno(String d) {
	 dni = d;
	}
	
	/**
	 * Obtiene el DNI del alumno
	 * @return el dni 
	 */
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

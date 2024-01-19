package ej18;

public class Alumno {
	
	private String dni;
	private String nombre;
	private Integer edad;
	private Double nota;
	
	
	public Alumno(String dni, String nombre, Integer edad, Double nota) {
		super();
		this.dni = dni;
		this.nombre = nombre;
		this.edad = edad;
		this.nota = nota;
	}
	public Alumno() {
		super();
		this.dni = "";
		this.nombre = "";
		this.edad = 0;
		this.nota = 0.0;
	}
	/**
	 * Obtiene el DNI del alumno
	 * @return el dni
	 */
	public String getDNI() {
		return dni;
	}
	/**
	 * Actualiza el DNI del alumno
	 * @param 
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

}

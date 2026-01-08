package modelo;

public class Estudiante {
    private String nombre;
    private String email;
    private String curso;

    public Estudiante(String nombre, String email, String curso) {
        this.nombre = nombre;
        this.email = email;
        this.curso = curso;
    }

    public String getNombre() { return nombre; }
    public String getEmail() { return email; }
    public String getCurso() { return curso; }
}
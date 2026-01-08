package datos;

import java.util.ArrayList;
import java.util.List;
import modelo.Estudiante;

public class BaseDatosSimulada {
    private static List<Estudiante> listaEstudiantes = new ArrayList<>();

    public static void agregar(Estudiante est) {
        listaEstudiantes.add(est);
    }

    public static List<Estudiante> obtenerTodos() {
        return listaEstudiantes;
    }
}
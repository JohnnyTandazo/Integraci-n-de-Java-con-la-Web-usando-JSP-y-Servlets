package controlador;

import datos.BaseDatosSimulada;
import modelo.Estudiante;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegistroServlet", urlPatterns = {"/RegistroServlet"})
public class RegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion = request.getParameter("accion");

        if ("Guardar".equals(accion)) {
            String nombre = request.getParameter("nombre");
            String email = request.getParameter("email");
            String curso = request.getParameter("curso");

            Estudiante nuevo = new Estudiante(nombre, email, curso);
            BaseDatosSimulada.agregar(nuevo);

            response.sendRedirect("index.jsp");

        } else if ("Mostrar registros".equals(accion)) {
            List<Estudiante> lista = BaseDatosSimulada.obtenerTodos();
            request.setAttribute("misEstudiantes", lista);
            request.getRequestDispatcher("listar.jsp").forward(request, response);
        }
    }
}
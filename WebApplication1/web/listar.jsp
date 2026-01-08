<%@page import="java.util.List"%>
<%@page import="modelo.Estudiante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Lista de Inscritos</title>
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <body>
        <div class="contenedor-tabla">
            <h2 style="text-align: center;">🎓 Estudiantes Registrados</h2>
            
            <table border="0">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Email</th>
                        <th>Curso</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        List<Estudiante> lista = (List<Estudiante>) request.getAttribute("misEstudiantes");
                        
                        if (lista != null && !lista.isEmpty()) {
                            for (Estudiante e : lista) {
                    %>
                    <tr>
                        <td><%= e.getNombre() %></td>
                        <td><%= e.getEmail() %></td>
                        <td><%= e.getCurso() %></td>
                    </tr>
                    <% 
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="3" style="text-align: center; color: red;">No hay registros ingresados.</td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
            
            <div style="text-align: center;">
                <a href="index.jsp" class="btn-volver">⬅ Volver al Registro</a>
            </div>
        </div>
    </body>
</html>
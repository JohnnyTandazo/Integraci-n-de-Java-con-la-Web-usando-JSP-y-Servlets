<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro Curso</title>
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <body>
        <div class="contenedor">
            <h2>📝 Nuevo Estudiante</h2>
            
            <form action="RegistroServlet" method="POST">
                <label>Nombre Completo</label>
                <input type="text" name="nombre" placeholder="Ej. Juan Pérez" required>
                
                <label>Correo Electrónico</label>
                <input type="email" name="email" placeholder="juan@email.com" required>
                
                <label>Seleccionar Curso</label>
                <select name="curso">
                    <option value="Java Web">☕ Java Web</option>
                    <option value="Base de Datos">💾 Base de Datos</option>
                    <option value="Redes II">🌐 Redes II</option>
                </select>
                
                <div class="botones-container">
                    <input type="submit" name="accion" value="Guardar" class="btn-guardar">
                    <input type="submit" name="accion" value="Mostrar registros" class="btn-listar" formnovalidate>
                </div>
            </form>
        </div>
    </body>
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Formulario</title>
    <link rel="stylesheet" type="text/css" href="recursos/estilos.css"/>
    <script type="text/javascript" src="recursos/funciones.js"></script>
</head>
<body>
    <form name="form1" action="servlet" method="post" onsubmit="return validarForma(this)">
        <input type="hidden" name="oculto" value="valorOculto"/>
        <table width="200" id="enfasis-columna">
            <caption>
                Formulario registro de datos
            </caption>
            <tr>
                <td class="columna">
                    Usuario: (*)
                </td>
                <td>
                    <input class="default" type="text" name="usuario" value="Escribir usuario" onfocus="this.select()">
                </td>
            </tr>
            <tr>
                <td class="columna">
                    Password: (*)
                </td>
                <td>
                    <input class="default" type="password" name="password" onfocus="this.select()">
                </td>
            </tr>
            <tr>
                <td class="columna">
                    Tecnologias de interes: (*)
                </td>
                <td>
                    Java <input type="checkbox" name="tecnologia" value="java"/>
                    &nbsp;&nbsp;&nbsp;
                    .NET <input type="checkbox" name="tecnologia" value="net"/>
                    &nbsp;&nbsp;&nbsp;
                    PHP <input type="checkbox" name="tecnologia" value="php"/>
                </td>
            </tr>
            <tr>
                <td class="columna">
                    Genero: (*)
                </td>
                <td>
                    Hombre <input type="radio" name="genero" value="h"/>
                    &nbsp;&nbsp;&nbsp;
                    Mujer <input type="radio" name="genero" value="m"/>
                    &nbsp;&nbsp;&nbsp;
                    Otro <input type="radio" name="genero" value="o"/>
                </td>
            </tr>
            <tr>
                <td class="columna">
                    Ocupacion: (*)
                </td>
                <td>
                    <select name="ocupacion" class="default">
                        <option value="">Seleccionar</option>
                        <option value="1">Profesor</option>
                        <option value="2">Ingeniero</option>
                        <option value="3">Jubilado</option>
                        <option value="4">Otro</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="columna">
                    Musica favorita: (*)
                </td>
                <td>
                    <select name="musica" multiple class="default">
                        <option value="rock">Rock</option>
                        <option value="pop">Pop</option>
                        <option value="salsa">Salsa</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="columna">
                    Comentarios: (*)
                </td>
                <td>
                    <textarea name="comentarios" cols="30" rows="2" class="default" onfocus="this.select()">
                        Escribir...
                    </textarea>
                </td>
            </tr>
            <tr style="text-align: center">
                <td >
                    <input type="reset" value="Limpiar" class="default"/>
                </td>
                <td >
                    <input type="submit" value="Enviar" class="default"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: pacifi
  Date: 5/16/18
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Acádemico</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
    <link href="vendor/datatables-plugins/dataTables.bootstrap.css"
          rel="stylesheet">
    <link href="vendor/datatables-responsive/dataTables.responsive.css"
          rel="stylesheet">
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
</head>
<body>

<div id="wrapper">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Lista de Estudiantes
                    </div>
                    <div class="panel-body">
                        <table width="100%" class="table table-striped table-
bordered table-hover"
                               id="dataTables-estudiante">
                            <thead>
                            <tr>
                                <th>Nro.</th>
                                <th>Código</th>
                                <th>DNI</th>
                                <th>Apellido Paterno</th>
                                <th>Apellido Materno</th>
                                <th>Nombres</th>
                                <th>Email</th>
                                <th>Dirección</th>
                                <th>Edad</th>
                            </tr>
                            </thead>
                            <tbody id="listaEstudiantes">
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/metisMenu/metisMenu.min.js"></script>

<script src="dist/js/sb-admin-2.js"></script>
<script>
    $(document).ready(function () {
        $.ajax({
            url: "/academico",
            type: "GET",
            dataType: "json",
            success: function (estudiantes) {
                var str = '';
                $(estudiantes).each(function (i, estudiante) {
                    str += '<tr class="odd gradeX">' +
                        '<td>' + (i + 1) + '</td>' +
                        '<tdclass="center" > ' + estudiante.codigo + '</td>' +
                        '<td class="center" > ' + estudiante.dni +
                        '</td>' + '<td>' + estudiante.paterno + '</td>' +
                        '<td>' + estudiante.materno + '</td>' +
                        '<td>' + estudiante.nombres + '</td>' +
                        '<td>' + estudiante.email + '</td>' +
                        '<td>' + estudiante.direccion + '</td>' +
                        '<td>' + estudiante.edad + ' </td>' +
                        '</tr>';
                    console.log(estudiante.email);
                });
                $("#listaEstudiantes").html(str);

            }
        });
    });
</script>
</body>
</html>

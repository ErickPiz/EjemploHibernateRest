<%-- 
    Document    : Index
    Description : Pagina principal del proyecto la cual manda llamar a los WS
    Created on  : 19/02/2018
    Author      : Erick Piz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA_Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Blog de Píz</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <h1>Erick Píz López</h1>
                <p>Ejercicio Java Web</p>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <form action="app/crearEstado" method="GET">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Agregar Estado
                                    </div>
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <input type="text" name="txtNuevoEstado" class="form-control" placeholder="Ingresa un nuevo Estado">
                                        </div>
                                        <button type="submit" class="form-control">Agregar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-4">
                    <form action="app/crearDistrito" method="GET">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Agregar Distrito
                                    </div>
                                    <div class="panel-body">

                                        <div class="form-group">         
                                            <input type="text" name="txtDistrito" class="form-control" placeholder="Ingresa un nuevo Distrito">
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group"> 
                                                <input type="text" name="txtIdEstado" class="form-control" placeholder="Estado">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group"> 
                                                <input type="text" name="txtIdDistrito" class="form-control" placeholder="Distrito" >
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group"> 
                                                <input type="text" name="txtCasillas" class="form-control" placeholder="Casillas">
                                            </div>
                                        </div>
                                        <button type="submit" class="form-control">Agregar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <form action="app/crearEstado" method="GET">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                Reporte
                                            </div>
                                            <div class="panel-body">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>

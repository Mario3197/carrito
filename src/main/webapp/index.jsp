<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>Carrito de compras</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <div class=" h-100 d-flex justify-content-center align-items-center">
            <div>
                <h2>Solicitud de equipo medico</h2>
                <form action="guardar-info" method="post" name="formulario">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Nombre" name="nombre">
                    </div>
                    <div class="input-group mb-3">
                        <select class="form-control" name="hospital">
                            <option>Selecciona una sucursal</option>
                            <option>Hospital General</option>
                            <option>Hospital Juarez</option>
                            <option>Hospital Infantil</option>
                        </select>
                    </div>
                    <h4>Material</h4>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="gel" name="material" value="Gel antibacterial">
                        <label class="form-check-label" for="gel">
                            Gel antibacterial
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="Tapa bocas" id="tapaBocas" name="material">
                        <label class="form-check-label" for="tapaBocas">
                            Tapa bocas
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="Guantes" id="guantes" name="material">
                        <label class="form-check-label" for="guantes">
                            Guantes
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="Batas" id="batas" name="material">
                        <label class="form-check-label" for="batas">
                            Batas desechables
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="Detergentes" id="detergente" name="material">
                        <label class="form-check-label" for="detergente">
                            Detergente
                        </label>
                    </div>
                    <h4>Adicionales especificos</h4>
                    <div class="form-group">
                        <textarea class="form-control" rows="3" name ="adicionales"></textarea>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col align-self-start">
                                <button type="submit" class="btn btn-primary">Enviar</button>
                            </div>
                        </div>
                    </div>
                </form>
                <form method="get" action="guardar-info">
                    <div class="row">
                        <div class="col align-self-end">
                            <button type="submit" class="btn btn-primary">Descargar excel</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>

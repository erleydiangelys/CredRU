<%@page import="br.com.credru.model.NivelAcesso"%>
<%@page import="br.com.credru.model.Usuario"%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <link rel="stylesheet" type="text/css" href="assets/credru/css/bootstrap.min.css">
        <script src="assets/credru/jquery/jquery.min.js"></script>
        <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

        <!------ Include the above in your HEAD tag ---------->
        <title>Pagina Não Encontrada</title>

        <style type="text/css">

            body { background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAaCAYAAACpSkzOAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABZ0RVh0Q3JlYXRpb24gVGltZQAxMC8yOS8xMiKqq3kAAAAcdEVYdFNvZnR3YXJlAEFkb2JlIEZpcmV3b3JrcyBDUzVxteM2AAABHklEQVRIib2Vyw6EIAxFW5idr///Qx9sfG3pLEyJ3tAwi5EmBqRo7vHawiEEERHS6x7MTMxMVv6+z3tPMUYSkfTM/R0fEaG2bbMv+Gc4nZzn+dN4HAcREa3r+hi3bcuu68jLskhVIlW073tWaYlQ9+F9IpqmSfq+fwskhdO/AwmUTJXrOuaRQNeRkOd5lq7rXmS5InmERKoER/QMvUAPlZDHcZRhGN4CSeGY+aHMqgcks5RrHv/eeh455x5KrMq2yHQdibDO6ncG/KZWL7M8xDyS1/MIO0NJqdULLS81X6/X6aR0nqBSJcPeZnlZrzN477NKURn2Nus8sjzmEII0TfMiyxUuxphVWjpJkbx0btUnshRihVv70Bv8ItXq6Asoi/ZiCbU6YgAAAABJRU5ErkJggg==);}

            .error-template {padding: 40px 15px;text-align: center;}
            .error-actions {margin-top:15px;margin-bottom:15px;}
            .error-actions .btn { margin-right:10px; }
        </style>

    </head>

    <body>
        <div class="container">

            <div class="row">
                <div class="col-md-12">
                    <div class="error-template">
                        <h1>
                            Oops!</h1>
                        <h2>
                            404 Not Found</h2>
                        <img class="img-fluid rounded mb-4" src="assets/img/404.png" alt="">
                        <div class="error-details">
                            <h5>Foi mal mano, pagina não encontrada!</h5>
                        </div>
                        <div class="error-actions">
                            <%
                                Usuario u = (Usuario) session.getAttribute("usuario");
                                if (u != null) {
                                    if (u.getNivelAcesso() == NivelAcesso.ADMINISTRADOR) {
                            %>
                            <a href="Administrador?comando=Inicio" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>Voltar para o inicio </a>
                            <%
                                }
                                if (u.getNivelAcesso() == NivelAcesso.COMPRADOR) {
                            %>
                            <a href="Comprador?comando=Inicio" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>Voltar para o inicio </a>
                            <%
                                }
                                if (u.getNivelAcesso() == NivelAcesso.ESCANEADOR) {
                            %>
                            <a href="Escaneador?comando=Inicio" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>Voltar para o inicio </a>
                            <%
                                }
                                if (u.getNivelAcesso() == NivelAcesso.NUTRICIONISTA) {
                            %>
                            <a href="Nutricionista?comando=Inicio" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>Voltar para o inicio </a>
                            <%
                                }
                            } else {
                            %>
                            <a href="Visitante?comando=Inicio" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>Voltar para o inicio </a>
                            <%
                                }
                            %>
                            <a href="index.jsp" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>
                                Voltar para o inicio </a>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CRED RU - ADM - AlterarUsuario </title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/bootstrap.min.css">

        <!-- Custom styles for this template -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/index.css">

    </head>

    <body>

        <jsp:include page="../include/header.jsp" />

        <!-- Page Content -->
        <div class="container">
            <br><br>




            <div class="container">

                <hr>


                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <header class="card-header">

                                <center><h4 class="card-title mt-2">Atualuzar Usuario</h4></center>
                            </header>
                            <article class="card-body">
                                <form>
                                    <div class="form-row">
                                        <div class="col form-group">
                                            <label> Nome </label>   
                                            <input type="text" class="form-control" placeholder="">
                                        </div> <!-- form-group end.// -->
                                        <div class="col form-group">
                                            <label>Nome de Usuario</label>
                                            <input type="text" class="form-control" placeholder=" ">
                                        </div> <!-- form-group end.// -->
                                    </div> <!-- form-row end.// -->

                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Status</label>
                                            <select id="inputState" class="form-control">
                                                <option>Ativo</option>
                                                <option selected="">Inativo</option>
                                            </select>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>Nivel de Acesso</label>
                                            <select id="inputState" class="form-control">
                                                <option>Professor</option>
                                                <option>Isento</option>
                                                <option selected="">Aluno</option>
                                                <option>Autorizada</option>
                                            </select>
                                        </div> <!-- form-group end.// -->
                                    </div> <!-- form-row.// -->


                                    <div class="form-group">
                                        <label>Altere sua Senha</label>
                                        <input class="form-control" type="password">
                                    </div> <!-- form-group end.// -->  

                                    <div class="form-group">
                                        <label>Confirme sua Senha</label>
                                        <input class="form-control" type="password">
                                    </div> <!-- form-group end.// -->  

                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-block"> Atualizar  </button>
                                    </div> <!-- form-group// -->      

                                </form>
                            </article> <!-- card-body end .// -->

                        </div> <!-- card.// -->
                    </div> <!-- col.//-->

                </div> <!-- row.//-->


            </div> 
            <!--container end.//-->


        </div>
        <!-- /.container -->

        <br><br>
        <jsp:include page="../include/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="assets/credru/jquery/jquery.min.js"></script>

        <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

    </body>

</html>

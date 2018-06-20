<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CRED RU - NUTRI ADM - CadastrarRefeição </title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/bootstrap.min.css">

        <!-- Custom styles for this template -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/index.css">

    </head>

    <body>

        <!-- Menu começa aqui-->
        <jsp:include page="../include/header.jsp" />
        <!-- menu acaba aqui -->

        <!-- Page Content -->
        <div class="container">
            <br><br>



            <div class="container">

                <hr>


                <div class="row justify-content-center">
                    <div class="col-md-8 mb-5" >
                        <div class="card">
                            <header class="card-header">

                                <center><h4 class="card-title mt-2">Cadastrar Nova Refeição</h4></center>
                            </header>
                            <article class="card-body">
                                <form>
                                    <br><br>

                                    <div class="form-row">
                                        <div class="col form-group col-md-12">
                                            <label>Nome</label>   
                                            <input type="text" class="form-control" placeholder="">
                                        </div> <!-- form-group end.// -->
                                    </div>

                                    <div class="form-row">
                                        <div class="col form-group col-md-6">
                                            <label>Descrição</label>
                                            <input type="text" class="form-control" placeholder=" ">
                                        </div> <!-- form-group end.// -->



                                        <div class="form-row">
                                            <div class="col form-group">
                                                <label>Valor Nutricional</label>
                                                <input type="text" class="form-control" placeholder=" ">
                                            </div> <!-- form-group end.// -->
                                        </div> <!-- form-row end.// -->

                                    </div>
                                    <!-- codigo novo aqui -->






                                    <!-- fim codigo novo-->
                                    <br><br>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-block"> Registrar  </button>
                                    </div> <!-- form-group// -->    
                                    <br>

                                </form>
                            </article>
                        </div> <!-- form-row end.// -->




                        <!-- card-body end .// -->

                    </div> <!-- card.// -->
                </div> <!-- col.//-->

            </div> <!-- row.//-->


        </div> 
        <!--container end.//-->

        <!-- Footer -->
        <jsp:include page="../include/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="assets/credru/jquery/jquery.min.js"></script>

        <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

    </body>


</html>

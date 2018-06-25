<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CRED RU - NUTRI ADM</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/bootstrap.min.css">

        <!-- Custom styles for this template -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/index.css">

    </head>

    <body>


        <jsp:include page="../include/header.jsp" />
        <!-- menu acaba aqui -->

        <!-- Page Content -->
        <div class="container">
            <br><br>




            <!-- Marketing Icons Section -->
            <div class="row">


                <div class="col-lg-12 mb-3">
                    <div class="card h-100">
                        <h4 class="card-header">Painel de Controle</h4>
                        <div class="card-body">

                            <!-- menu operações-->

                            <div class="container-2">
                                <div id="page-wrapper">   
                                    <div class="row">
                                        <div class="col-md-12">

                                        </div>
                                    </div> 
                                    <br><br>                                         
                                    <div class="row" >
                                        
                                        <div class="col-lg-2 col-sm-6">
                                            <div class="circle-tile">
                                                <a href="#">
                                                    <div class="circle-tile-heading dark-blue">
                                                        <i class="fa fa-graduation-cap fa-fw fa-3x"></i>
                                                    </div>
                                                </a>
                                                <div class="circle-tile-content dark-blue">
                                                    <div class="circle-tile-description text-faded">
                                                        Perfil
                                                    </div>
                                                    <div class="circle-tile-number text-faded">
                                                        <span id="sparklineA"></span>
                                                    </div>
                                                    <a href="Nutricionista?comando=Perfil" class="circle-tile-footer">Fazer isso! <i class="fa fa-chevron-circle-right"></i></a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-lg-2 col-sm-6">
                                            <div class="circle-tile">
                                                <a href="#">
                                                    <div class="circle-tile-heading dark-blue">
                                                        <i class="fa fa-graduation-cap fa-fw fa-3x"></i>
                                                    </div>
                                                </a>
                                                <div class="circle-tile-content dark-blue">
                                                    <div class="circle-tile-description text-faded">
                                                        Cadastrar Alimento
                                                    </div>
                                                    <div class="circle-tile-number text-faded">

                                                        <span id="sparklineA"></span>
                                                    </div>
                                                    <a href="Nutricionista?comando=CadastrarAlimento" class="circle-tile-footer">Fazer isso! <i class="fa fa-chevron-circle-right"></i></a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-lg-2 col-sm-6">
                                            <div class="circle-tile">
                                                <a href="#">
                                                    <div class="circle-tile-heading green">
                                                        <i class="fa fa-check fa-fw fa-3x"></i>
                                                    </div>
                                                </a>
                                                <div class="circle-tile-content green">
                                                    <div class="circle-tile-description text-faded">
                                                        Cadastrar Refeição
                                                    </div>
                                                    <div class="circle-tile-number text-faded">

                                                    </div>
                                                    <a href="Nutricionista?comando=CadastrarRefeicao" class="circle-tile-footer">Fazer isso! <i class="fa fa-chevron-circle-right"></i></a>
                                                </div>
                                            </div>
                                        </div>


                                    </div><!-- page-wrapper END-->

                                    <br><br><br><br><br><br>
                                </div><!-- container-1 END-->

                                <!-- fim menu oprações-->


                            </div>

                        </div>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->

        </div>

        <jsp:include page="../include/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="assets/credru/jquery/jquery.min.js"></script>

        <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

    </body>

</html>

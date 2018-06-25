<%@page import="br.com.credru.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario u = (Usuario) session.getAttribute("usuario");
%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CRED RU - ADM</title>

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
                                                    <a href="Administrador?comando=Perfil" class="circle-tile-footer">Fazer isso! <i class="fa fa-chevron-circle-right"></i></a>
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
                                                        Cadastrar Usuario
                                                    </div>
                                                    <div class="circle-tile-number text-faded">

                                                        <span id="sparklineA"></span>
                                                    </div>
                                                    <a href="Administrador?comando=CadastrarUsuario" class="circle-tile-footer">Fazer isso! <i class="fa fa-chevron-circle-right"></i></a>
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
                                                        Vender Creditos
                                                    </div>
                                                    <div class="circle-tile-number text-faded">

                                                    </div>
                                                    <a href="Administrador?comando=VenderCredito" class="circle-tile-footer">Fazer isso! <i class="fa fa-chevron-circle-right"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-sm-6">
                                            <div class="circle-tile">
                                                <a href="#">
                                                    <div class="circle-tile-heading orange">
                                                        <i class="fa fa-line-chart fa-fw fa-3x"></i>
                                                    </div>
                                                </a>
                                                <div class="circle-tile-content orange">
                                                    <div class="circle-tile-description text-faded">
                                                        Cadastrar RU
                                                    </div>
                                                    <div class="circle-tile-number text-faded">

                                                    </div>
                                                    <a href="Administrador?comando=CadastrarRU" class="circle-tile-footer">Fazer isso! <i class="fa fa-chevron-circle-right"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-sm-6">
                                            <div class="circle-tile">
                                                <a href="#">
                                                    <div class="circle-tile-heading blue">
                                                        <i class="fa fa-question fa-fw fa-4x"></i>
                                                    </div>
                                                </a>
                                                <div class="circle-tile-content blue">
                                                    <div class="circle-tile-description text-faded">
                                                        Alterar Usuario
                                                    </div>
                                                    <div class="circle-tile-number text-faded">

                                                        <span id="sparklineB"></span>
                                                    </div>
                                                    <a href="Administrador?comando=AlterarUsuario" class="circle-tile-footer">Fazer isso! <i class="fa fa-chevron-circle-right"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-sm-6">
                                            <div class="circle-tile">
                                                <a href="#">
                                                    <div class="circle-tile-heading red">
                                                        <i class="fa fa-university fa-fw fa-3x"></i>
                                                    </div>
                                                </a>
                                                <div class="circle-tile-content red">
                                                    <div class="circle-tile-description text-faded">
                                                        Relatorio
                                                    </div>
                                                    <div class="circle-tile-number text-faded">

                                                        <span id="sparklineC"></span>
                                                    </div>
                                                    <a href="Administrador?comando=ExibirRelatorio" class="circle-tile-footer">Fazer isso! <i class="fa fa-chevron-circle-right"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-sm-6">
                                            <div class="circle-tile">
                                                <a href="#">
                                                    <div class="circle-tile-heading purple">
                                                        <i class="fa fa-comments fa-fw fa-3x"></i>
                                                    </div>
                                                </a>
                                                <div class="circle-tile-content purple">
                                                    <div class="circle-tile-description text-faded">
                                                        Alterar Preços
                                                    </div>
                                                    <div class="circle-tile-number text-faded">

                                                        <span id="sparklineD"></span>
                                                    </div>
                                                    <a href="Administrador?comando=AlterarPreco" class="circle-tile-footer">Fazer isso! <i class="fa fa-chevron-circle-right"></i></a>
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

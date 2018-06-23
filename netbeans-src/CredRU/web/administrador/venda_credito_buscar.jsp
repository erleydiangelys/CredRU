<%@page import="br.com.credru.controller.Cadastrar"%>
<%@page import="br.com.credru.model.TipoTransacao"%>
<%@page import="br.com.credru.model.LocalDate"%>
<%@page import="br.com.credru.model.LocalTime"%>
<%@page import="java.util.Calendar"%>
<%@page import="br.com.credru.model.Transacao"%>
<%@page import="br.com.credru.controller.Visualizar"%>
<%@page import="br.com.credru.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CRED RU - ADM - TICKETS </title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/bootstrap.min.css">

        <!-- Custom styles for this template -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/index.css">

    </head>

    <body>

        <jsp:include page="../include/header.jsp" />


        <div class="container">
            <br><br>
            <div class="row">
                <div class="col-lg-11 mb-3">
                    <div class="card h-100">
                        <center><h4 class="card-header">Venda de Creditos</h4></center>
                        <div class="card-body">

                            <!-- menu operações-->
                            <br> <br>

                            <div class="col-md-12" >
                                <div class="card">
                                    <header class="card-header">
                                        <center><h5 class="card-title mt-1">Buscar Usuário</h5></center>
                                    </header>
                                    
                                    <%
                                    
                                        if(request.getParameter("userName") != null){
                                            Usuario u = Visualizar.getUsuario(request.getParameter("userName"));
                                            
                                            if(u == null){
                                                %>
                                                <div class="alert alert-danger">
                                                <strong>Usuário não encontrado!</strong> Tente Novamente.
                                                </div>
                                                <%
                                            }
                                            else{
                                                response.sendRedirect("Administrador?comando=VenderCredito&userComprador=" + u.getUserName());
                                            }
                                        }
                                    
                                    %>
                                    
                                    <article class="card-body">
                                        <form action="Administrador?comando=VenderCredito" method="post">
                                            <!-- função de vender -->
                                            <center>
                                                <div>
                                                    <br>

                                                    <b>Nome de usuario:</b> <input type="text" name="userName" placeholder="ex: ze123" required="">

                                                    <button type="submit" class="btn btn-primary btn-sm mb-2">Buscar</button>

                                                    <br> 
                                                </div>
                                            </center>
                                            <!-- função vender -->
                                        </form>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br> 
                    <br> 
                    <br>
                </div>
                <br>
            </div>
        </div>


        <jsp:include page="../include/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="assets/credru/jquery/jquery.min.js"></script>

        <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

    </body>

</html>

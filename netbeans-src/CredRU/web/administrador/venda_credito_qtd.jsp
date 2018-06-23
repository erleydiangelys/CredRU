<%-- 
    Document   : venda_credito_qtd
    Created on : 22/06/2018, 17:48:24
    Author     : Soriano
--%>

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
        <%
            if (request.getParameter("userComprador") != null) {
                Usuario u = Visualizar.getUsuario(request.getParameter("userComprador"));
                request.removeAttribute("userComprador");
                float total_a_pagar_1 = u.getPerfil().getValor() * 5;
                float total_a_pagar_2 = u.getPerfil().getValor() * 10;

        %>
        <div class="container">
            <br><br>

            <div class="row">
                <div class="col-lg-11 mb-3">
                    <div class="card h-100">
                        <center><h4 class="card-header">Venda de Tickets</h4></center>
                        <div class="card-body">

                            <!-- menu operações-->
                            <br> <br>



                            <%                                        
                                
                                float valorPargar = 0;
                                int qtdCreditos = 0;
                                if (request.getParameter("op1") != null || request.getParameter("op2") != null) {
                                    valorPargar = total_a_pagar_1;
                                    qtdCreditos = 5;

                                    if (request.getParameter("op1") != null) {
                                        valorPargar = total_a_pagar_1;
                                        qtdCreditos = 5;
                                    } else {
                                        valorPargar = total_a_pagar_2;
                                        qtdCreditos = 10;
                                    }

                                    Transacao tr = new Transacao();

                                    tr.setQtdCreditos(qtdCreditos);
                                    tr.setTipo(TipoTransacao.COMPRA);
                                    tr.setUser(u);

                                    tr.setValor(valorPargar);

                                    if (Cadastrar.cadastrarTransacao(tr)) {

                            %>

                            <div class="alert alert-success">
                                <strong>Venda Concluída!</strong>
                            </div>
                            <a href="Administrador?comando=VenderCredito"><p>Efetuar uma nova venda!</p></a>
                            </div></div></div></div></div>

                            <%                                                        
                                }else{
                            %>

                            <div class="alert alert-danger">
                                <strong>Aconteceu algum erro ao realizar a venda!</strong> Tente Novamente.
                            </div>
                            <a href="Administrador?comando=VenderCredito"><p>Efetuar uma nova venda!</p></a>
                            </div></div></div></div></div>

                            <%
                                }
                            } else {
                            %>
                            <div class="col-md-12" >
                                <div class="card">
                                    <header class="card-header">
                                        <center><h5 class="card-title mt-1">Escolha a quantidade</h5></center>
                                    </header>

                                    <article class="card-body">
                                        <form action="Administrador?comando=VenderCredito&userComprador=<%= u.getUserName()%>" method="post">

                                            <!-- função de vender -->
                                            <center>
                                                <div>
                                                    <br>
                                                    <b>Nome do usuario:</b> <input type="text" name="userComprador" value="<%= u.getUserName()%>" disabled="" required="">
                                                    <br>
                                                    <b>5 créditos: R$ <%= total_a_pagar_1%></b> <button type="submit" name="op1" class="btn btn-primary btn-sm mb-2">Comprar</button>
                                                    <br>
                                                    <b>10 créditos: R$ <%= total_a_pagar_2%></b> <button type="submit" name="op2" class="btn btn-primary btn-sm mb-2">Comprar</button>

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

                <%
                    }
                %>


            </div>
        </div>
        <%
            } else {

            }
        %>

        <jsp:include page="../include/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="assets/credru/jquery/jquery.min.js"></script>

        <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

    </body>

</html>


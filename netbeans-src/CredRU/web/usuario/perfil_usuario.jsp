<%@page import="br.com.credru.model.TipoTransacao"%>
<%@page import="java.util.List"%>
<%@page import="br.com.credru.controller.Visualizar"%>
<%@page import="br.com.credru.model.Transacao"%>
<%@page import="br.com.credru.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CRED RU - PERFIL </title>

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
                <%
                    Usuario user = (Usuario) session.getAttribute("usuario");
                %>

                <div class="col-lg-12">
                    <div class="card h-100">
                        <center><h4 class="card-header">Ola, <%= user.getNome() %>!</h4></center>
                        <div class="card-body">

                            <!-- menu operações-->
                            <div class="centralidar" style="margin-left: 25%;">
                                <br> <br> <br>
                                <div class="container">

                                    <div class="row userMain">
                                        <div class="col-md-8">
                                            <div class="userBlock">
                                                <div class="backgrounImg">
                                                    <img src="assets/img/fundoTicket.png">
                                                </div>
                                                <div class="userImg">
                                                    <img src="assets/img/icon.png">
                                                </div>
                                                <div class="userDescription">
                                                    <hr>
                                                    <h5>Usuário @<%= user.getUserName()%></h5>
                                                    <br>

                                                    <div class="followrs">
                                                        <span class="number"><%= user.getCredito() %></span>
                                                        <span>Créditos</span>
                                                    </div>



                                                    <hr>
                                                    <br>

                                                    <h4> Historico de Movimentações </h4>

                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">Data</th>
                                                                <th scope="col">Horário</th>
                                                                <th scope="col">Quantidade</th>
                                                                <th scope="col">Preço(R$)</th>
                                                                <th scope="col">Tipo</th>

                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                List<Transacao> minhasTransacoes = Visualizar.getTransacao(user);
                                                                for(Transacao t : minhasTransacoes){
                                                                    %>
                                                                    <tr>
                                                                        <th scope="row"><%= t.getData().toString() %></th>
                                                                        <th scope="row"><%= t.getHora().toString() %></th>
                                                                        <td><%= t.getQtdCreditos() %> Créditos</td>
                                                                        <td><%= t.getValor() %></td>
                                                                        <td>
                                                                            <%
                                                                                if(TipoTransacao.getCodigo(t.getTipo()) == TipoTransacao.getCodigo(TipoTransacao.COMPRA)){
                                                                                    %>
                                                                                    Compra
                                                                                    <%
                                                                                }
                                                                                else{
                                                                                    %>
                                                                                    Débito
                                                                                    <%
                                                                                }
                                                                            %>
                                                                        </td>
                                                                    </tr>
                                                                    <%
                                                                }
                                                            %>
                                                        </tbody>
                                                    </table>


                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>

                            <!-- fim menu oprações-->

                            <br>                                
                        </div>

                    </div>
                </div>
            </div>

            <!-- /.row -->
            <br><br><br><br>
        </div>
        <!-- /.container -->

        <jsp:include page="../include/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="assets/credru/jquery/jquery.min.js"></script>

        <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

    </body>

</html>

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

        <div class="modal" id="modalConfirm" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>Modal body text goes here.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Save changes</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Page Content -->
        <div class="container">
            <br><br>

            <div class="row">


                <div class="col-lg-11 mb-3">
                    <div class="card h-100">
                        <center><h4 class="card-header">Venda de Tickets</h4></center>
                        <div class="card-body">


                            <%
                                if (request.getParameter("userName") != null && request.getParameter("qtdCreditos") != null) {
                                    String userName = request.getParameter("userName");
                                    String opQtd = request.getParameter("qtdCreditos");
                                    int qtdCreditos = 0;

                                    if (opQtd.equals("valor1")) {
                                        qtdCreditos = 5;
                                    } else {
                                        if (opQtd.equals("valor2")) {
                                            qtdCreditos = 10;
                                        } else {
                                            out.print("Opção de quantidade de creditos invalida!");
                                        }
                                    }

                                    if (qtdCreditos != 0) {
                                        Usuario u = Visualizar.getUsuario(userName);

                                        if (u != null) {
                                            out.print("Criando transacao");
                                            
                                            float quantidadeAPagar = u.getPerfil().getValor() * qtdCreditos;
                                                    
                                            out.print("Valor a pagar: " + quantidadeAPagar);
                                            
                                            Transacao tr = new Transacao();

                                            Calendar cc = Calendar.getInstance();
                                            LocalTime hora = new LocalTime();
                                            LocalDate data = new LocalDate();

                                            hora.setHora(cc.get(Calendar.HOUR_OF_DAY));
                                            hora.setMinuto(cc.get(Calendar.MINUTE));
                                            hora.setSegundo(cc.get(Calendar.MINUTE));

                                            data.setAno(cc.get(Calendar.YEAR));
                                            data.setDia(cc.get(Calendar.DAY_OF_WEEK));
                                            data.setMes(cc.get(Calendar.MONTH));
                                            data.setSemana(cc.get(Calendar.WEEK_OF_MONTH));

                                            tr.setData(data);
                                            tr.setHora(hora);

                                            tr.setQtdCreditos(qtdCreditos);
                                            tr.setTipo(TipoTransacao.COMPRA);
                                            tr.setUser(u);

                                            tr.setValor(quantidadeAPagar);
                                            
                                            Cadastrar.cadastrarTransacao(tr);
                                        } else {
                                            out.print("Usuáio não encontrado!");
                                        }
                                    } else {
                                        out.print("qtTick 0");
                                    }
                                }
                            %>

                            <!-- menu operações-->
                            <br> <br> <br>



                            <div class="col-md-12" >
                                <div class="card">
                                    <header class="card-header">

                                        <center><h5 class="card-title mt-1">Adicione os tickets</h5></center>
                                    </header>
                                    <article class="card-body">
                                        <form action="Administrador?comando=VenderCredito" method="post">
                                            <!-- função de vender -->
                                            <center>
                                                <div>
                                                    <br>

                                                    <b>Nome de usuario:</b> <input type="text" name="userName" placeholder="ex: ze123" required="">

                                                    &nbsp;&nbsp;

                                                    <b>Selecionar Quantidade:</b>

                                                    <select name="qtdCreditos">
                                                        <option value="valor1">   5 Creditos   </option>
                                                        <option value="valor2">   10 Creditos   </option>
                                                    </select>

                                                    &nbsp;&nbsp;

                                                    <button type="submit" data-toggle="modal" data-target="modalConfirm" class="btn btn-primary btn-sm mb-2"> Vender</button>
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

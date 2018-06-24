<%-- 
    Document   : escanear_debitar
    Created on : 24/06/2018, 11:47:29
    Author     : Soriano
--%>

<%@page import="br.com.credru.controller.Alterar"%>
<%@page import="br.com.credru.model.Restaurante"%>
<%@page import="java.util.Calendar"%>
<%@page import="br.com.credru.model.LocalDate"%>
<%@page import="java.util.List"%>
<%@page import="br.com.credru.controller.Cadastrar"%>
<%@page import="br.com.credru.model.TipoTransacao"%>
<%@page import="br.com.credru.model.Transacao"%>
<%@page import="br.com.credru.model.Perfil"%>
<%@page import="br.com.credru.model.TipoPerfil"%>
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

        <title>CRED RU - ESCANEADOR </title>

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
                        <center><h4 class="card-header">Debitar Créditos</h4></center>
                        <div class="card-body">

                            <!-- menu operações-->
                            <br> <br>

                            <div class="col-md-12" >
                                <div class="card">
                                    <header class="card-header">
                                        <center><h5 class="card-title mt-1">Status do debito</h5></center>
                                    </header>

                                    <%
                                        Restaurante rest = Visualizar.getRestaurante(request.getParameter("restaurante"));
                                        
                                        if(request.getParameter("comprador") != null){
                                            Usuario user = Visualizar.getUsuario(request.getParameter("comprador"));
                                            
                                            if(user != null){
                                                Perfil perfil = user.getPerfil();
                                                float valorDoCredito = perfil.getValor();
                                                
                                                if(valorDoCredito == 0){
                                                    LocalDate dataHoje = new LocalDate();
                                                            
                                                    List<Transacao> transacoesDoUsuario = user.getTransacoes();
                                                    
                                                    int debitosDoDia = 0;
                                                    for(Transacao temp : transacoesDoUsuario){
                                                        
                                                        LocalDate dataDaTransacao = temp.getData();
                                                                                                                
                                                        if(dataDaTransacao.toString().equals(dataHoje.toString()) &&
                                                                TipoTransacao.getCodigo(temp.getTipo()) == TipoTransacao.getCodigo(TipoTransacao.DEBITO)){
                                                            debitosDoDia++;
                                                        }

                                                    }
                                                    
                                                    if(debitosDoDia >= rest.getHorarios().size()){
                                                        %>
                                                        <div class="alert alert-danger">
                                                            <strong>O usuário <%= user.getNome() %> já realizou o máximo de refeições do dia para o restaurante informado!</strong>
                                                            <a href="Escaneador?comando=Escanear">Voltar</a>
                                                        </div>
                                                        <%
                                                    }
                                                    else{
                                                        Transacao tr = new Transacao();
                                                        tr.setRestaurante(rest);
                                                        tr.setQtdCreditos(1);
                                                        tr.setTipo(TipoTransacao.DEBITO);
                                                        tr.setUser(user);
                                                        tr.setValor(0);

                                                        if(Cadastrar.cadastrarTransacao(tr)){

                                                           %>
                                                            <div class="alert alert-success">
                                                                <strong>Transação criada!</strong> Acesso liberado.
                                                                <a href="Escaneador?comando=Escanear">Voltar</a>
                                                            </div>
                                                            <%
                                                        }
                                                        else{
                                                            %>
                                                            <div class="alert alert-danger">
                                                                <strong>Erro ao criar transação!</strong> Acesso negado.
                                                                <a href="Escaneador?comando=Escanear">Voltar</a>
                                                            </div>
                                                            <%
                                                        }
                                                    }
                                                        
                                                }
                                                else{
                                                    int qtdCreditosDoUsuario = user.getCredito();
                                                    if(qtdCreditosDoUsuario > 0){
                                                        Transacao tr = new Transacao();
                                                        tr.setRestaurante(rest);
                                                        tr.setQtdCreditos(1);
                                                        tr.setTipo(TipoTransacao.DEBITO);
                                                        tr.setUser(user);
                                                        tr.setValor(user.getPerfil().getValor());

                                                        if(Cadastrar.cadastrarTransacao(tr)){
                                                            Usuario temp = new Usuario();
                                                            temp.setAtivo(user.isAtivo());
                                                            temp.setCredito(user.getCredito()-1);
                                                            temp.setNivelAcesso(user.getNivelAcesso());
                                                            temp.setNome(user.getNome());
                                                            temp.setPerfil(user.getPerfil());
                                                            temp.setSenha(user.getSenha());
                                                            temp.setTransacoes(user.getTransacoes());
                                                            temp.setUserName(user.getUserName());

                                                            Alterar.alterarUsuario(user, temp);

                                                           %>
                                                            <div class="alert alert-success">
                                                                <strong>Transação criada!</strong> Acesso liberado.
                                                                <a href="Escaneador?comando=Escanear">Voltar</a>
                                                            </div>
                                                            <%
                                                        }
                                                        else{
                                                            %>
                                                            <div class="alert alert-danger">
                                                                <strong>Erro ao criar transação!</strong> Acesso negado.
                                                                <a href="Escaneador?comando=Escanear">Voltar</a>
                                                            </div>
                                                            <%
                                                        }
                                                    }
                                                    else{
                                                        %>
                                                        <div class="alert alert-danger">
                                                            <strong>O usuário <%= user.getNome() %> não possui créditos suficiente!</strong>
                                                            <a href="Escaneador?comando=Escanear">Voltar</a>
                                                        </div>
                                                        <%
                                                    }
                                                }
                                                
                                            }
                                            else{
                                                %>
                                                <div class="alert alert-danger">
                                                    <strong>Usuário não encontrado!</strong> Tente Novamente.
                                                    <a href="Escaneador?comando=Escanear">Voltar</a>
                                                </div>
                                                <%
                                            }
                                        }
                                        else{
                                            %>
                                            <div class="alert alert-danger">
                                                <strong>Usuário não definido</strong>Tente Novamente.
                                                <a href="Escaneador?comando=Escanear">Voltar</a>
                                            </div>
                                            <%
                                        }
                                    %>
                                    
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

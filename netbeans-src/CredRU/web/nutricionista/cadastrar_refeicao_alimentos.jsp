<%-- 
    Document   : cadastrar_refeicao_alimentos
    Created on : 23/06/2018, 11:01:56
    Author     : Soriano
--%>

<%@page import="br.com.credru.controller.Cadastrar"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.credru.model.LocalDate"%>
<%@page import="java.util.Map"%>
<%@page import="br.com.credru.model.Refeicao"%>
<%@page import="br.com.credru.model.Alimento"%>
<%@page import="java.util.Calendar"%>
<%@page import="br.com.credru.model.Horario"%>
<%@page import="br.com.credru.model.Restaurante"%>
<%@page import="java.util.List"%>
<%@page import="br.com.credru.controller.Visualizar"%>
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
            
            <%
                Restaurante restaurante = Visualizar.getRestaurante(request.getParameter("restaurante"));
                List<Horario> horarios = restaurante.getHorarios();
                System.out.println(horarios.size());
            %>


            <div class="container">

                <hr>


                <div class="row justify-content-center">
                    <div class="col-md-8 mb-5" >
                        <div class="card">
                            
                            <header class="card-header">
                                <center><h4 class="card-title mt-2"><%= restaurante.getNome() %> - Cadastrar Nova Refeição</h4></center>
                            </header>
                            
                            <%
                                response.setContentType("text/html;charset=UTF-8");
                                request.setCharacterEncoding("UTF-8");
                                
                                if(request.getParameter("horario") != null &&
                                        request.getParameter("alimento") != null &&
                                        request.getParameter("data") != null){
                                    
                                    String dataString = request.getParameter("data");
                                    String hora = request.getParameter("horario");
                                    String[] alimentosEscolhidos = request.getParameterValues("alimento");
                                    
                                    //2018-06-13
                                    int ano = Integer.parseInt(dataString.substring(0, 4));
                                    int mes = Integer.parseInt(dataString.substring(5, 7));
                                    int dia = Integer.parseInt(dataString.substring(8, 10));
                                    
                                    LocalDate data = new LocalDate();
                                    data.setAno(ano);
                                    data.setMes(mes);
                                    data.setDia(dia);
                                    
                                    //Procurando o horario
                                    Horario horario = horarios.get(0);
                                    for(Horario h : horarios){
                                        if(h.getDescricao().equals(hora)){
                                            horario = h;
                                        }
                                    }
                                    
                                    //Procurando os alimentos
                                    List<Alimento> alimentosDaRefeicao = new ArrayList<>();
                                    List<Alimento> alimentosCadastrados = Visualizar.getAlimento();
                                    
                                    for (Alimento aC : alimentosCadastrados) {
                                        for(String aE : alimentosEscolhidos){
                                            
                                            if(aC.getNome().equals(aE)){
                                                alimentosDaRefeicao.add(aC);
                                            }
                                            
                                        }
                                    }
                                    
                                    //Criando a refeicao
                                    Refeicao ref = new Refeicao();
                                    ref.setData(data);
                                    ref.setHorario(horario);
                                    ref.setAlimentos(alimentosDaRefeicao);
                                    ref.setRestaurante(restaurante);
                                    
                                    //Map<String, List<Refeicao>> refeicoes = restaurante.getRefeicoes();
                                    //List<Refeicao> refeicoesCadastradas = refeicoes.get(data.toString());
                                    //refeicoesCadastradas.add(ref);
                                    //refeicoes.put(data.toString(), refeicoesCadastradas);
                                    
                                    if(Cadastrar.cadastrarRefeicao(ref)){
                                        %>
                                        <div class="alert alert-success">
                                            <strong>Refeição cadastrada com sucesso!</strong>
                                        </div>
                                        <%
                                    }
                                    else{
                                        %>
                                        <div class="alert alert-warning">
                                            <strong>Erro ao cadastrar refeicão</strong>
                                        </div>
                                        <%
                                    }
                                }
                            %>
                            
                            <article class="card-body">
                                <form action="Nutricionista?comando=CadastrarRefeicao&restaurante=<%= restaurante.getNome() %>" method="post" accept-charset="UTF-8" >
                                    <br><br>
                                            
                                    
                                    <div class="form-row">
                                        <div class="col form-group">
                                            <label>Horario</label>   
                                            <select name="horario" required="">
                                                <%
                                                    for(Horario h : horarios){
                                                        %>
                                                        <option value="<%= h.getDescricao()%>"><%= h.getDescricao()%></option>
                                                        <%
                                                    }
                                                %>
                                            </select>
                                        </div> <!-- form-group end.// -->
                                    </div>
                                            
                                    <div class="form-row">
                                        <div class="col form-group">
                                            <label>Data</label>
                                            <%
                                                Calendar cc = Calendar.getInstance();
                                                String dataMin = "";
                                                dataMin += cc.get(Calendar.YEAR) + "-";
                                                
                                                if((cc.get(Calendar.MONTH) +1) < 10){
                                                    dataMin += "0" + (cc.get(Calendar.MONTH) + 1) + "-";
                                                }else{
                                                    dataMin += cc.get(Calendar.MONTH) + 1 + "-";
                                                }
                                                
                                                if((cc.get(Calendar.DAY_OF_MONTH)) < 10){
                                                    dataMin += "0" + cc.get(Calendar.DAY_OF_MONTH);
                                                } else{
                                                    dataMin += cc.get(Calendar.DAY_OF_MONTH);        
                                                }
                                            %>
                                            <input name="data" type="date" min="<%= dataMin %>" value="<%= dataMin %>" class="form-control" required="">
                                        </div> <!-- form-group end.// -->

                                    </div>
                                            


                                    <div class="form-row">
                                        <div class="col form-group">
                                            <label>Alimentos</label>
                                            <br>
                                            <%
                                                List<Alimento> alimentos = Visualizar.getAlimento();
                                                for(Alimento a : alimentos){
                                                    %>
                                                    <input type="checkbox" name="alimento" value="<%= a.getNome() %>"><label><%= a.getNome() %></label>
                                                    <%
                                                }
                                            %>
                                        </div> <!-- form-group end.// -->
                                    </div> <!-- form-row end.// -->



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

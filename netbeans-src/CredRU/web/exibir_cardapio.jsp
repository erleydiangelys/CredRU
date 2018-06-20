<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="br.com.credru.controller.Cadastrar"%>
<%@page import="br.com.credru.model.Categoria"%>
<%@page import="br.com.credru.model.Alimento"%>
<%@page import="br.com.credru.model.Horario"%>
<%@page import="br.com.credru.model.Restaurante"%>
<%@page import="br.com.credru.model.Refeicao"%>
<%@page import="java.util.List"%>
<%@page import="br.com.credru.controller.Visualizar"%>
<%@page import="java.util.Calendar"%>
<%@page import="br.com.credru.model.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CRED RU - Cardápio</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/bootstrap.min.css">

        <!-- Custom styles for this template -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/index.css">

    </head>

    <body>

        <jsp:include page="include/header.jsp" />

        <%
            /*
            //Só pra teste
            Restaurante temp = new Restaurante();
            temp.setNome("Russas");
            
            Map<String, List<Refeicao>> mm = new HashMap<>();
            
            List<Refeicao> refei = new ArrayList<>();
            List<Alimento> alim = new ArrayList<>();
            
            Alimento aa = new Alimento();
            aa.setNome("Laranja");
            aa.setCategoria(Categoria.SUCO);
            alim.add(aa);
            
            Calendar cadas = Calendar.getInstance();
            LocalDate dd = new LocalDate(cadas.get(Calendar.DAY_OF_MONTH), cadas.get(Calendar.WEEK_OF_MONTH), cadas.get(Calendar.MONTH), cadas.get(Calendar.YEAR));
            
            Refeicao rr = new Refeicao();
            Horario hhh = new Horario();
            hhh.setDescricao("Almoço");
            
            rr.setHorario(hhh);
            rr.setAlimentos(alim);
            rr.setData(dd);
            refei.add(rr);
            
            
            mm.put(dd.toString(), refei);
            temp.setRefeicoes(mm);
            Cadastrar.cadastrarRestaurante(temp);
            */
        %>
        
        
        <%
            List<Restaurante> restaurantes = Visualizar.getRestaurante();
            Restaurante restVisualizar = null;

            LocalDate dataOntem;
            LocalDate dataAtual;
            LocalDate dataAmanha;

            String linkOntem = "";
            String linkAmanha = "";

            if (request.getParameter("data") == null) {
                //Nenhuma data foi escolhida para ser exibida, entao o cardapio que será
                //Exibido será da data de hoje

                Calendar cc = Calendar.getInstance();
                dataAtual = new LocalDate(cc.get(Calendar.DAY_OF_MONTH), cc.get(Calendar.WEEK_OF_MONTH), cc.get(Calendar.MONTH), cc.get(Calendar.YEAR));

                cc.add(Calendar.DAY_OF_MONTH, -1);
                dataOntem = new LocalDate(cc.get(Calendar.DAY_OF_MONTH), cc.get(Calendar.WEEK_OF_MONTH), cc.get(Calendar.MONTH), cc.get(Calendar.YEAR));

                //Montando o LINK de Ontem
                if (dataOntem.getDia() < 10) {
                    linkOntem += "0" + dataOntem.getDia();
                } else {
                    linkOntem += dataOntem.getDia();
                }

                if (dataOntem.getMes() < 10) {
                    linkOntem += "/0" + dataOntem.getMes();
                } else {
                    linkOntem += "/" + dataOntem.getMes();
                }

                linkOntem += "/" + dataOntem.getAno();

                cc.add(Calendar.DAY_OF_MONTH, +2);
                dataAmanha = new LocalDate(cc.get(Calendar.DAY_OF_MONTH), cc.get(Calendar.WEEK_OF_MONTH), cc.get(Calendar.MONTH), cc.get(Calendar.YEAR));

                //Montando o LINK de Amanha
                if (dataAmanha.getDia() < 10) {
                    linkAmanha += "0" + dataAmanha.getDia();
                } else {
                    linkAmanha += dataAmanha.getDia();
                }

                if (dataAmanha.getMes() < 10) {
                    linkAmanha += "/0" + dataAmanha.getMes();
                } else {
                    linkAmanha += "/" + dataAmanha.getMes();
                }

                linkAmanha += "/" + dataAmanha.getAno();
            } else {
                String dataDefinida = request.getParameter("data");
                // Formato da data: 12/02/2019
                // dia/mes/ano

                int dia = Integer.parseInt(dataDefinida.substring(0, 2));
                int mes = Integer.parseInt(dataDefinida.substring(3, 5));
                int ano = Integer.parseInt(dataDefinida.substring(6, 10));

                Calendar cc = Calendar.getInstance();
                cc.set(ano, mes, dia); //Setando a data passada pelo usuário

                dataAtual = new LocalDate(cc.get(Calendar.DAY_OF_MONTH), cc.get(Calendar.WEEK_OF_MONTH), cc.get(Calendar.MONTH), cc.get(Calendar.YEAR));

                cc.add(Calendar.DAY_OF_MONTH, -1);
                dataOntem = new LocalDate(cc.get(Calendar.DAY_OF_MONTH), cc.get(Calendar.WEEK_OF_MONTH), cc.get(Calendar.MONTH), cc.get(Calendar.YEAR));

                //Montando o LINK de Ontem
                if (dataOntem.getDia() < 10) {
                    linkOntem += "0" + dataOntem.getDia();
                } else {
                    linkOntem += dataOntem.getDia();
                }

                if (dataOntem.getMes() < 10) {
                    linkOntem += "/0" + dataOntem.getMes();
                } else {
                    linkOntem += "/" + dataOntem.getMes();
                }

                linkOntem += "/" + dataOntem.getAno();

                cc.add(Calendar.DAY_OF_MONTH, +2);
                dataAmanha = new LocalDate(cc.get(Calendar.DAY_OF_MONTH), cc.get(Calendar.WEEK_OF_MONTH), cc.get(Calendar.MONTH), cc.get(Calendar.YEAR));

                //Montando o LINK de Amanha
                if (dataAmanha.getDia() < 10) {
                    linkAmanha += "0" + dataAmanha.getDia();
                } else {
                    linkAmanha += dataAmanha.getDia();
                }

                if (dataAmanha.getMes() < 10) {
                    linkAmanha += "/0" + dataAmanha.getMes();
                } else {
                    linkAmanha += "/" + dataAmanha.getMes();
                }

                linkAmanha += "/" + dataAmanha.getAno();
            }

        %>

        <%
            if(restaurantes.size() > 0){
                //Pegando restaurante requisitado
                if(request.getParameter("restaurante") != null){
                    for(int i = 0; i < restaurantes.size(); i++){
                        
                        if(restaurantes.get(i).getNome() == request.getParameter("restaurante")){
                            restVisualizar = restaurantes.get(i);
                            break;
                        }
                    }
                }
                else{
                    //Peguando o primeiro restaurante cadastrado
                    restVisualizar = restaurantes.get(0);
                }
                
                if(restVisualizar != null){
                %>
        
                <h2>Restaurante Universitário de <%= restVisualizar.getNome()%></h2>
                <a href="Visitante?comando=Cardapio&data=<%= linkOntem%>">Ontem: <%= dataOntem.toString()%></a>
                Hoje: <%= dataAtual.toString()%>
                <a href="Visitante?comando=Cardapio&data=<%= linkAmanha%>">Amanhã: <%= dataAmanha.toString()%></a>
        
                <%
                
                    List<Refeicao> refeicoes = restVisualizar.getRefeicoes().get(dataAtual.toString());
                
                    if(refeicoes != null){
                        //Exibir refeicoes do dia
                        
                            for(Refeicao r : refeicoes){
                                %>
                                <h3><%= r.getHorario().getDescricao() %></h3>

                                <table>
                                    <%

                                    for(Alimento a : r.getAlimentos()){
                                        %>
                                        <tr>  
                                            <th><%= Categoria.getDescricao(a.getCategoria()) %></th>
                                            <td><%= a.getNome() %></td>
                                        </tr>
                                        <%
                                    }

                                    %>
                                </table>
                                <%
                            }

                        %>

                        <%
                    }
                    else{
                        //Não existe refeiçoes cadastradas para o dia atual
                        %>
                        <p>
                        Não há cardápio cadastrado para este dia. 
                        A publicação poderá ser feita posteriormente ou 
                        pode não haver expediente no restaurante universitário neste dia.
                        </p>
                        <%
                    }
                }
                else{
                    %>
                    <p>O Restaurante Informado não existe</p>
                    <%
                }
            }
            else{
                %>
                <p>Nenhum restaurante cadastrado!</p>
                <%
            }
            
        %>

        
        

        <jsp:include page="include/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="assets/credru/jquery/jquery.min.js"></script>

        <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

    </body>

</html>

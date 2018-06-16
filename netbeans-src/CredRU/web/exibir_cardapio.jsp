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
            List<Restaurante> restaurantes = Visualizar.getRestaurante();
            
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
                
                if(dataOntem.getDia() < 10){
                    linkOntem += "0" + dataOntem.getDia();
                }
                else{
                    linkOntem += dataOntem.getDia();
                }
                
                cc.add(Calendar.DAY_OF_MONTH, +2);
                dataAmanha = new LocalDate(cc.get(Calendar.DAY_OF_MONTH), cc.get(Calendar.WEEK_OF_MONTH), cc.get(Calendar.MONTH), cc.get(Calendar.YEAR));
            }
            else{
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
                
                cc.add(Calendar.DAY_OF_MONTH, +2);
                dataAmanha = new LocalDate(cc.get(Calendar.DAY_OF_MONTH), cc.get(Calendar.WEEK_OF_MONTH), cc.get(Calendar.MONTH), cc.get(Calendar.YEAR));
            }

            
        %>

        <a href="Visitante?comando=Cardapio&data=<%= dataOntem.toString() %>">Ontem: <%= dataOntem.toString() %></a>
        Hoje: <%= dataAtual.toString() %>
        <a href="Visitante?comando=Cardapio&data=<%= dataOntem.toString() %>">Amanhã: <%= dataAmanha.toString() %></a>
        
        <table>
            <tr>
                <th></th>
                <th>Segunda</th>
                <th>Terça</th>
                <th>Quarta</th>
                <th>Quinta</th>
                <th>Sexta</th>
                <th>Sabado</th>
                <th>Domingo</th>
            </tr>


        </table>

        <jsp:include page="include/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="assets/credru/jquery/jquery.min.js"></script>

        <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

    </body>

</html>

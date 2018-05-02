<%-- 
    Document   : header
    Created on : 30/04/2018, 08:23:36
    Author     : Soriano
--%>

<%@page import="br.com.credru.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (request.getParameter("sairbtn") != null) {
        session.removeAttribute("usuario");
    }
%>

<header>
    <div class="my-header" align="rigth">
        <% if (session.getAttribute("usuario") == null) { %>
        <a href="login.jsp">Login</a>
        <a href="cadastro.jsp">Cadastro</a>
        <%} else {
            Usuario user = (Usuario) session.getAttribute("usuario");
        %>
        <p>Logado como <%= user.getNome() %></p>
        <form action="index.jsp" method="post">
            <button name="sairbtn" value="Sair">Sair</button>
        </form>
        <%}%>
    </div>
</header>

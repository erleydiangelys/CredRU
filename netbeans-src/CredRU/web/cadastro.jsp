<%-- 
    Document   : cadastro
    Created on : 26/04/2018, 10:06:41
    Author     : Soriano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if(session.getAttribute("usuario") != null){
        response.sendRedirect("index.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CredRU - Cadastro Usuário</title>
    </head>
    <body>
        <%
            if(request.getParameter("nome") != null &&
               request.getParameter("username") != null &&
               request.getParameter("senha") != null &&
               request.getParameter("cpf") != null){
                
                if(!request.getParameter("nome").isEmpty() &&
                   !request.getParameter("username").isEmpty() &&
                   !request.getParameter("senha").isEmpty() &&
                   !request.getParameter("cpf").isEmpty()){
                    
                    RequestDispatcher rq = request.getRequestDispatcher("controller/cadastro-controller.jsp");
                    rq.forward(request, response);
                    
                }
            }
        %>
        <form action="cadastro.jsp" method="post">
            <label>Nome</label>
            <input type="text" name="nome"><br>
            <label>Username</label>
            <input type="text" name="username"><br>
            <label>Senha</label>
            <input type="password" name="senha"><br>
            <label>CPF</label>
            <input type="text" name="cpf"><br>
            <label>Tipo</label>
            <select name="tipoUsuario">
                <option value="user">Usuário</option>
                <option value="admin">Administrador</option>
                <option value="nutricionista">Nutricionista</option>
            </select><br>
            <input type="submit" value="Cadastrar">
            <input type="reset" value="Apagar dados">
        </form>
    </body>
</html>

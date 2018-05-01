<%-- 
    Document   : login
    Created on : 29/04/2018, 21:38:20
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
        <title>Cred. RU</title>
    </head>
    <body>
        <form method="post" action="login.jsp">
            <label>Usuário</label>
            <input type="text" name="user" placeholder="@user">
            <label>Senha</label>
            <input type="password" name="senha" placeholder="Senha">
            <label>Tipo</label>
            <select name="tipoUsuario">
                <option value="user">Usuário</option>
                <option value="admin">Administrador</option>
                <option value="nutricionista">Nutricionista</option>
            </select>
            <input type="submit" value="Entrar">
        </form>
        <%
            if (request.getParameter("user") != null && request.getParameter("senha") != null) {
                if (!request.getParameter("user").isEmpty() && !request.getParameter("senha").isEmpty()) {
                    RequestDispatcher rq = request.getRequestDispatcher("controller/login-controller.jsp");
                    rq.forward(request, response);
                }
            }

        %>
    </body>
</html>

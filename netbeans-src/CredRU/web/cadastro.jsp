<%-- 
    Document   : cadastro
    Created on : 26/04/2018, 10:06:41
    Author     : Soriano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CredRU - Cadastro Usuário</title>
    </head>
    <body>
        <form action="cadastro.jsp" method="post">
            <label>Nome</label>
            <input type="text" name="nome">
            <label>Username</label>
            <input type="text" name="username">
            <label>Senha</label>
            <input type="password" name="senha">
            <label>CPF</label>
            <input type="text" name="cpf">
            <input type="submit" value="Cadastrar">
        </form>
    </body>
</html>

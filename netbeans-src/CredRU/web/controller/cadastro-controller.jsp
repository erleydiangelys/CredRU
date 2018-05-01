<%-- 
    Document   : cadastro-controller
    Created on : 30/04/2018, 08:55:40
    Author     : Soriano
--%>

<%@page import="br.com.credru.dao.UsuarioDAO"%>
<%@page import="br.com.credru.model.TipoComprador"%>
<%@page import="br.com.credru.model.TipoUsuario"%>
<%@page import="br.com.credru.model.Usuario"%>

<%
    TipoComprador tComp = null;
    TipoUsuario tUser = null;
    
    switch(request.getParameter("tipoUsuario")){
        case "user":{
            tComp = TipoComprador.NORMAL;
            tUser = TipoUsuario.USER;
        }
        case "admin":{
            tComp = TipoComprador.ALTORIZADO;
            tUser = TipoUsuario.ADMIN;
        }
        case "nutricionista":{
            tComp = TipoComprador.ALTORIZADO;
            tUser = TipoUsuario.NUTRICIONISTA;
        }
        default:{
            tComp = TipoComprador.NORMAL;
            tUser = TipoUsuario.USER;
        }
    }
    
    Usuario user = new Usuario(tComp, tUser);
    user.setCpf(request.getParameter("cpf"));
    user.setNome(request.getParameter("nome"));
    user.setSenha(request.getParameter("senha"));
    user.setUserName(request.getParameter("username"));
    
    UsuarioDAO.setUsuario(user);
    
    session.setAttribute("usuario", user);
    response.sendRedirect("index.jsp");
%>

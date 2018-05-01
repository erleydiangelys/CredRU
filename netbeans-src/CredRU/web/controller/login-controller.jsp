<%-- 
    Document   : login-controler
    Created on : 30/04/2018, 08:35:05
    Author     : Soriano
--%>

<%@page import="br.com.credru.dao.UsuarioDAO"%>
<%@page import="br.com.credru.controller.Validacao"%>
<%@page import="br.com.credru.model.Usuario"%>
<%
    String username = (String) request.getParameter("user");
    String senha = (String) request.getParameter("senha");
    
    Usuario user = UsuarioDAO.getUsuario(username, senha);
    
    if(user != null){
        session.setAttribute("usuario", user);
        response.sendRedirect("index.jsp");
    }
    else{
        response.sendRedirect("login.jsp");
    }
%>

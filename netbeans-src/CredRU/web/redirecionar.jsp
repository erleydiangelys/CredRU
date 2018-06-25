<%-- 
    Document   : redirecionar
    Created on : 16/06/2018, 15:09:28
    Author     : Soriano
--%>

<%@page import="br.com.credru.controller.Visualizar"%>
<%@page import="br.com.credru.model.NivelAcesso"%>
<%@page import="br.com.credru.model.Usuario"%>
<%@page import="br.com.credru.controller.Cadastrar"%>
<%@page import="br.com.credru.model.TipoPerfil"%>
<%@page import="br.com.credru.model.Perfil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%response.sendRedirect("Visitante?comando=Inicio");%>


<%
    //Só pra teste
    Perfil autorizado = new Perfil();
    autorizado.setDescricao("Autorizado");
    autorizado.setTipo(TipoPerfil.AUTORIZADO);
    autorizado.setValor(0);
    Cadastrar.cadastrarPerfil(autorizado);

    Perfil aluno = new Perfil();
    aluno.setDescricao("Aluno");
    aluno.setTipo(TipoPerfil.ALUNO);
    aluno.setValor(1.1f);
    Cadastrar.cadastrarPerfil(aluno);
    
    Perfil residente = new Perfil();
    residente.setDescricao("Aluno Residente");
    residente.setTipo(TipoPerfil.RESIDENTE);
    residente.setValor(0);
    Cadastrar.cadastrarPerfil(residente);
    
    Perfil isento = new Perfil();
    isento.setDescricao("Aluno Isento");
    isento.setTipo(TipoPerfil.ISENTO);
    isento.setValor(0);
    Cadastrar.cadastrarPerfil(isento);
    
    Perfil professor = new Perfil();
    professor.setDescricao("Professor");
    professor.setTipo(TipoPerfil.PROFESSOR);
    professor.setValor(5);
    Cadastrar.cadastrarPerfil(professor);
    
    Perfil servidor = new Perfil();
    servidor.setDescricao("Servidor");
    servidor.setTipo(TipoPerfil.SERVIDOR);
    servidor.setValor(7);
    Cadastrar.cadastrarPerfil(servidor);

    //Cadastro de Admin------------------------------------------------
    Usuario temp = new Usuario();
    temp.setAtivo(true);
    temp.setNivelAcesso(NivelAcesso.ADMINISTRADOR);
    temp.setNome("Anderson Soriano");
    temp.setUserName("admin");
    temp.setSenha("senha");
    temp.setPerfil(Visualizar.getPerfil(TipoPerfil.AUTORIZADO));

    Cadastrar.cadastarUsuario(temp);
    
    //Cadastro de Comprador------------------------------------------------
    Usuario temp2 = new Usuario();
    temp2.setAtivo(true);
    temp2.setNivelAcesso(NivelAcesso.COMPRADOR);
    temp2.setNome("Erley Diangelys");
    temp2.setUserName("compra");
    temp2.setSenha("senha");
    temp2.setPerfil(Visualizar.getPerfil(TipoPerfil.ALUNO));

    Cadastrar.cadastarUsuario(temp2);
    
    //Cadastro de Nutricionista------------------------------------------------
    Usuario temp3 = new Usuario();
    temp3.setAtivo(true);
    temp3.setNivelAcesso(NivelAcesso.NUTRICIONISTA);
    temp3.setNome("Carlos Eduardo");
    temp3.setUserName("nutri");
    temp3.setSenha("senha");
    temp3.setPerfil(Visualizar.getPerfil(TipoPerfil.AUTORIZADO));

    Cadastrar.cadastarUsuario(temp3);
    
    //Cadastro de Escaneador------------------------------------------------
    Usuario temp4 = new Usuario();
    temp4.setAtivo(true);
    temp4.setNivelAcesso(NivelAcesso.ESCANEADOR);
    temp4.setNome("Fernando Willian");
    temp4.setUserName("escan");
    temp4.setSenha("senha");
    temp4.setPerfil(Visualizar.getPerfil(TipoPerfil.AUTORIZADO));

    Cadastrar.cadastarUsuario(temp4);
%>

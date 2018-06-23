
<%@page import="br.com.credru.controller.Visualizar"%>
<%@page import="br.com.credru.controller.Cadastrar"%>
<%@page import="br.com.credru.model.TipoPerfil"%>
<%@page import="br.com.credru.model.NivelAcesso"%>
<%@page import="br.com.credru.controller.Autenticar"%>
<%@page import="br.com.credru.model.Usuario"%>
<%@page import="br.com.credru.model.Perfil" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="assets/credru/css/login.css">
        <link rel="stylesheet" type="text/css" href="assets/credru/js/login.js">
        
        <title>CRED RU - Login</title>
        
    </head>
    <body>
        
        <%
            //Só pra teste
            Perfil pp = new Perfil();
            pp.setDescricao("Autorizado");
            pp.setTipo(TipoPerfil.AUTORIZADO);
            pp.setValor(0);
            
            Cadastrar.cadastrarPerfil(pp);
            
            Usuario temp = new Usuario();
            temp.setAtivo(true);
            temp.setNivelAcesso(NivelAcesso.ADMINISTRADOR);
            temp.setNome("Anderson Soriano");
            temp.setUserName("ander");
            temp.setSenha("senha");
            temp.setPerfil(Visualizar.getPerfil(TipoPerfil.AUTORIZADO));
            
            Cadastrar.cadastarUsuario(temp);
            
        %>
        
        <div class="container">
            <div class="card card-container">
                <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
                <img id="profile-img" class="profile-img-card" src="assets/img/icon.png">
                <p id="profile-name" class="profile-name-card"></p>
                <%
                    if (request.getParameter("username") != null && request.getParameter("senha") != null) {
                        String username = request.getParameter("username");
                        String senha = request.getParameter("senha");

                        Usuario user = Autenticar.autenticar(session, username, senha);

                        if (user != null) {
                            if (user.getNivelAcesso() == NivelAcesso.ADMINISTRADOR) {
                                response.sendRedirect("Administrador?comando=Inicio");
                            }

                            if (user.getNivelAcesso() == NivelAcesso.COMPRADOR) {
                                response.sendRedirect("Comprador?comando=Inicio");
                            }

                            if (user.getNivelAcesso() == NivelAcesso.ESCANEADOR) {
                                response.sendRedirect("Escaneador?comando=Inicio");
                            }

                            if (user.getNivelAcesso() == NivelAcesso.NUTRICIONISTA) {
                                response.sendRedirect("Nutricionista?comando=Inicio");
                            }
                        } else {
                %>
                <div class="alert alert-danger">
                    <strong>Username e/ou senha podem estar errados!</strong>
                </div>
                <%
                        }
                    }
                %>
                <form class="form-signin" action="Visitante?comando=Login" method="post">
                    <span id="reauth-text" class="reauth-text"></span>
                    <input name="username" type="text" id="inputtext" class="form-control" placeholder="Usuario" required autofocus>
                    <input name="senha" type="password" id="inputPassword" class="form-control" placeholder="Senha" required>
                    
                    <br>

                    <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Entrar</button>
                    <button class="btn btn-lg btn-warning btn-block" type="button"> <a href="Visitante?comando=Inicio" > Voltar</a></button>
                </form><!-- /form -->

            </div><!-- /card-container -->
        </div><!-- /container -->
               
    </body>
</html>


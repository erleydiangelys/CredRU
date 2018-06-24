<%@page import="br.com.credru.model.NivelAcesso"%>
<%@page import="br.com.credru.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String linkInicio = "Visitante?comando=Inicio";
    
    if(session.getAttribute("usuario") != null){
        
        Usuario uu = (Usuario) session.getAttribute("usuario");
        
        if(NivelAcesso.getCodigo(uu.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.ADMINISTRADOR)){
            linkInicio = "Administrador?comando=Inicio";
        }
        
        if(NivelAcesso.getCodigo(uu.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.COMPRADOR)){
            linkInicio = "Comprador?comando=Inicio";
        }
        
        if(NivelAcesso.getCodigo(uu.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.ESCANEADOR)){
            linkInicio = "Escaneador?comando=Inicio";
        }
        
        if(NivelAcesso.getCodigo(uu.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.NUTRICIONISTA)){
            linkInicio = "Nutricionista?comando=Inicio";
        }
            
    }
    
%>

<!-- Navigation -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-info fixed-top">
    <div class="container">
        <a class="navbar-brand" href="Visitante?comando=Inicio">CRED RU</a>

        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">

                <li class="nav-item">
                    <a class="nav-link" href="<%=linkInicio%>">INICIO</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="Visitante?comando=Cardapio">CARDAPIO</a>
                </li>
                
                <%if(session.getAttribute("usuario")==null){%>
                <li class="nav-item">
                    <a class="nav-link" href="Visitante?comando=Login">LOGIN</a>
                </li>
                <%}else{%>
                <li class="nav-item">
                    <a class="nav-link" href="Visitante?comando=Sair">SAIR</a>
                </li>
                <%}%>
            </ul>
        </div>
    </div>    
</nav>

<!-- menu acaba aqui -->
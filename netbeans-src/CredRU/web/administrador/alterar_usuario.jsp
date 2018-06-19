<%@page import="br.com.credru.controller.Alterar"%>
<%@page import="br.com.credru.model.NivelAcesso"%>
<%@page import="br.com.credru.model.Usuario"%>
<%@page import="br.com.credru.model.TipoPerfil"%>
<%@page import="br.com.credru.controller.Visualizar"%>
<%@page import="br.com.credru.model.Perfil"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    boolean senhaCorrespondem = true;
    boolean codastroOk = true;
    Usuario u = null;
    
    List<Perfil> perfis = Visualizar.getPerfil();
    
    if(request.getParameter("nomeUsuario")!=null){
        u = Visualizar.getUsuario(request.getParameter("nomeUsuario"));
        
        if( request.getParameter("nomeCompleto") != null &&
            request.getParameter("status") != null &&
            request.getParameter("nivelAcesso") != null &&
            request.getParameter("senha") != null &&
            request.getParameter("senhaConfir") != null &&
            request.getParameter("perfil") != null){
            
            String nomeComp = request.getParameter("nomeCompleto");
            String nomeUser = request.getParameter("nomeUsuario");
            int status = Integer.parseInt(request.getParameter("status"));
            String nivelAcesso = request.getParameter("nivelAcesso");
            String senha = request.getParameter("senha");
            String senhaConfir = request.getParameter("senhaConfir");
            int codPerfil = Integer.parseInt(request.getParameter("perfil"));
            
            Perfil perfilEscolhido = Visualizar.getPerfil(TipoPerfil.getTipoPerfil(codPerfil));
        
            if(!senha.equals(senhaConfir)){
                senhaCorrespondem = false;
            }

            if(senhaCorrespondem){
                Usuario uu = new Usuario();

                if(status==1){
                    uu.setAtivo(true);
                }
                else{
                    uu.setAtivo(false);
                }

                uu.setNome(nomeComp);
                uu.setSenha(senha);
                uu.setUserName(nomeUser);

                if(nivelAcesso.equals("adm")){
                    uu.setNivelAcesso(NivelAcesso.ADMINISTRADOR);
                }
                if(nivelAcesso.equals("nutri")){
                    uu.setNivelAcesso(NivelAcesso.NUTRICIONISTA);
                }
                if(nivelAcesso.equals("comprador")){
                    uu.setNivelAcesso(NivelAcesso.COMPRADOR);
                }
                if(nivelAcesso.equals("escan")){
                    uu.setNivelAcesso(NivelAcesso.ESCANEADOR);
                }

                uu.setPerfil(perfilEscolhido);
                codastroOk = Alterar.alterarUsuario(u, uu);
            }
        }
    }
    else{
        
    }
%>

<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CRED RU - ADM - AlterarUsuario </title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/bootstrap.min.css">

        <!-- Custom styles for this template -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/index.css">

    </head>

    <body>

        <jsp:include page="../include/header.jsp" />

        <!-- Page Content -->
        <div class="container">
            <br><br>

            <div class="container">
                <%if(!codastroOk){%>
                <p>Erro ao cadastrar!</p>
                <%}%>
                <hr>
                
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <header class="card-header">

                                <center><h4 class="card-title mt-2">Alterar Usuario</h4></center>
                            </header>
                            <article class="card-body">
                                <form method="post" action="Administrador?comando=AlterarUsuario">
                                    <div class="form-row">
                                        <div class="col form-group">
                                            <label>Nome Completo</label>   
                                            <input <%if(request.getParameter("nomeCompleto") == null && u == null){%>disabled=""<%}else{%>value="<%= u.getNome() %>" <%}%> name="nomeCompleto" type="text" class="form-control" required="">
                                        </div> <!-- form-group end.// -->
                                        <div class="col form-group">
                                            <label>Nome de Usuario</label>
                                            <input <%if(u != null){%> value="<%= u.getUserName() %>" disabled="" <%}%> name="nomeUsuario" type="text" class="form-control" placeholder="" required="">
                                        </div> <!-- form-group end.// -->
                                    </div> <!-- form-row end.// -->


                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Status</label>
                                            <select <%if(request.getParameter("status") == null && u == null){%>disabled=""<%}%> name="status" id="inputState" class="form-control">
                                                <option <%if(u != null){ if(u.isAtivo()){%> selected="" <%}}%> value="1">Ativo</option>
                                                <option <%if(u != null){ if(!u.isAtivo()){%> selected="" <%}}%> value="0">Inativo</option>
                                            </select>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>Nivel de Acesso</label>
                                            <select <%if(request.getParameter("nivelAcesso") == null && u == null){%>disabled=""<%}%> name="nivelAcesso" id="inputState" class="form-control">
                                                <option <%if(u != null){ if( NivelAcesso.getCodigo(u.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.ADMINISTRADOR) ){%> selected="" <%}}%> value="adm">Administrador</option>
                                                <option <%if(u != null){ if( NivelAcesso.getCodigo(u.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.NUTRICIONISTA) ){%> selected="" <%}}%> value="nutri">Nutricionista</option>
                                                <option <%if(u != null){ if( NivelAcesso.getCodigo(u.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.COMPRADOR) ){%> selected="" <%}}%> value="comprador">Comprador</option>
                                                <option <%if(u != null){ if( NivelAcesso.getCodigo(u.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.ESCANEADOR) ){%> selected="" <%}}%> value="escan">Escaniador</option>
                                            </select>
                                        </div> <!-- form-group end.// -->
                                    </div> <!-- form-row.// -->
                                    
                                    <div class="form-row">
                                        <div class="col form-group">
                                            <label>Perfil</label>
                                            <select <%if(request.getParameter("perfil") == null && u == null){%>disabled=""<%}%> name="perfil" id="inputState" class="form-control">
                                                <%
                                                    for (Perfil pp : perfis) {
                                                %>
                                                <option <%if(request.getParameter("perfil") != null && u != null){ if( TipoPerfil.getCodigo(u.getPerfil().getTipo()) == Integer.parseInt(request.getParameter("perfil")) ){%> selected="" <%}}%> value="<%= TipoPerfil.getCodigo(pp.getTipo()) %>"><%= pp.getDescricao() %></option>
                                                <%
                                                    }
                                                %>
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <%if( !senhaCorrespondem ){%>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>As senha não são iguais!</label>
                                        </div>
                                    </div>
                                    <%}%>

                                    <div class="form-group">
                                        <label>Crie uma Senha</label>
                                        <input <%if(request.getParameter("senha") == null && u == null){%>disabled=""<%}%> name="senha" class="form-control" type="password" required="">
                                    </div> <!-- form-group end.// -->  

                                    <div class="form-group">
                                        <label>Confirme sua Senha</label>
                                        <input <%if(request.getParameter("senhaConfir") == null && u == null){%>disabled=""<%}%> name="senhaConfir" class="form-control" type="password" required="">
                                    </div> <!-- form-group end.// -->  

                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-block"><%if(request.getParameter("nomeUsuario") == null && u == null){%>Pesquisar<%}else{%>Atualizar<%}%></button>
                                    </div> <!-- form-group// -->      

                                </form>
                            </article> <!-- card-body end .// -->

                        </div> <!-- card.// -->
                    </div> <!-- col.//-->

                </div> <!-- row.//-->


            </div> 
            <!--container end.//-->

        </div>
        <!-- /.container -->


        <!-- fim do formulario -->
        <br><br>
        <jsp:include page="../include/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="assets/credru/jquery/jquery.min.js"></script>

        <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

    </body>

</html>

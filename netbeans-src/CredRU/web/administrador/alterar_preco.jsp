<%@page import="br.com.credru.controller.Alterar"%>
<%@page import="br.com.credru.controller.Cadastrar"%>
<%@page import="br.com.credru.model.Perfil"%>
<%@page import="br.com.credru.model.TipoPerfil"%>
<%@page import="br.com.credru.controller.Visualizar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CRED RU - ADM - AlterarTabela </title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="assets/credru/css/bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="assets/credru/css/index.css">

  </head>

  <body>

    <!-- Menu começa aqui-->
    <jsp:include page="../include/header.jsp" />
    
    <%
        
        Perfil aluno = Visualizar.getPerfil(TipoPerfil.ALUNO);
        Perfil residente = Visualizar.getPerfil(TipoPerfil.RESIDENTE);
        Perfil isento = Visualizar.getPerfil(TipoPerfil.ISENTO);
        Perfil professor = Visualizar.getPerfil(TipoPerfil.PROFESSOR);
        Perfil servidor = Visualizar.getPerfil(TipoPerfil.SERVIDOR);
        Perfil autorizado = Visualizar.getPerfil(TipoPerfil.AUTORIZADO);
        // Macho, to achando que é melhor definir isso e colocar no banco
        
        if (aluno == null){
            aluno = new Perfil();
            aluno.setDescricao("Aluno");
            aluno.setTipo(TipoPerfil.ALUNO);
            aluno.setValor(1);
            Cadastrar.cadastrarPerfil(aluno);
        }
        if ( residente == null){
            residente = new Perfil();
            residente.setDescricao("Aluno Residente");
            residente.setTipo(TipoPerfil.RESIDENTE);
            residente.setValor(0);
            Cadastrar.cadastrarPerfil(residente);
        }
        if ( isento == null){
            isento = new Perfil();
            isento.setDescricao("Aluno Isento");
            isento.setTipo(TipoPerfil.ISENTO);
            isento.setValor(0);
            Cadastrar.cadastrarPerfil(isento);
        }
        if ( professor == null){
            professor = new Perfil();
            professor.setDescricao("Professor");
            professor.setTipo(TipoPerfil.PROFESSOR);
            professor.setValor(5);
            Cadastrar.cadastrarPerfil(professor);
        }
        if ( servidor == null){
            servidor = new Perfil();
            servidor.setDescricao("Servidor");
            servidor.setTipo(TipoPerfil.SERVIDOR);
            servidor.setValor(7);
            Cadastrar.cadastrarPerfil(servidor);
        }
        if ( autorizado == null){
            autorizado = new Perfil();
            autorizado.setDescricao("Autorizado");
            autorizado.setTipo(TipoPerfil.AUTORIZADO);
            autorizado.setValor(0);
            Cadastrar.cadastrarPerfil(autorizado);
        }
        
    %>
    
    <!-- Page Content -->
    <div class="container">
      <br><br>
    

      <!-- Marketing Icons Section -->
            <div class="row">

             
                    <div class="col-lg-12 mb-3">
                      <div class="card h-100">
                        <h4 class="card-header">Painel de Controle</h4>
                          <div class="card-body">

                            <!-- menu operações-->

                                    <center><h5>Alterar preços</h5></center>
                            <center>
                                <div class="form-row">
                                    <div class="col-md-4 form-group">
                                        <label> Aluno </label>
                                        <input type="number" step="0.01" value="<%=aluno.getValor()%>" name="aluno" required="" class="form-control" placeholder=" ">
                                    </div> <!-- form-group end.// -->

                                    <div class="col-md-4 form-group">
                                        <label> Professor </label>
                                        <input type="number" step="0.01" value="<%=professor.getValor()%>" name="prof" required="" class="form-control" placeholder=" ">
                                    </div> <!-- form-group end.// -->
                          
                                    <div class="col-md-4 form-group">
                                        <label> Servidor </label>
                                        <input type="text" step="0.01" value="<%=servidor.getValor()%>" name="serv" required="" class="form-control" placeholder=" ">
                                    </div> <!-- form-group end.// -->
                                </div> <!-- form-row end.// -->
                                <br>
                                <div class="form-row">
                                    <div class="col-md-4 form-group">
                                        <label> Residente </label>
                                        <input type="number" step="0.01" value="<%=residente.getValor()%>" name="resid" required="" class="form-control" placeholder=" ">
                                    </div> <!-- form-group end.// -->

                                    <div class="col-md-4 form-group">
                                        <label> Isento </label>
                                        <input type="number" step="0.01" value="<%=isento.getValor()%>" name="isento" required="" class="form-control" placeholder=" ">
                                    </div> <!-- form-group end.// -->
                          
                                    <div class="col-md-4 form-group">
                                        <label> Autorizado </label>
                                        <input type="text" step="0.01" value="<%=autorizado.getValor()%>" name="auto" required="" class="form-control" placeholder=" ">
                                    </div> <!-- form-group end.// -->
                                </div> <!-- form-row end.// -->
                                    
                            </center>

                                    <br><br>

                                               
                                    
                                     <div class="form-group">
                                                    <button type="submit" class="btn btn-primary btn-block">Alterar</button>
                                                </div>

                            </div>

                            <!-- fim menu oprações-->
                                
                          </div>
                        
                      </div>
                    </div>
            </div>
            <!-- /.row -->    
   
    <!-- /.container -->

    <%
        if (request.getParameter("aluno") != null && request.getParameter("prof") != null &&
            request.getParameter("serv") != null && request.getParameter("resid") != null &&
            request.getParameter("isento") != null && request.getParameter("auto") != null ){
            
            
            float valAlu = Float.parseFloat(request.getParameter("aluno"));
            float valPro = Float.parseFloat(request.getParameter("prof"));
            float valSer = Float.parseFloat(request.getParameter("serv"));
            float valRes = Float.parseFloat(request.getParameter("resid"));
            float valIse = Float.parseFloat(request.getParameter("isento"));
            float valAut = Float.parseFloat(request.getParameter("auto"));
            
            
            Perfil aluno2 = new Perfil();
            aluno2.setDescricao("Aluno");
            aluno2.setTipo(TipoPerfil.ALUNO);
            aluno2.setValor(valAlu);
        
            Perfil residente2 = new Perfil();
            residente2.setDescricao("Aluno Residente");
            residente2.setTipo(TipoPerfil.RESIDENTE);
            residente2.setValor(valRes);
        
            Perfil isento2 = new Perfil();
            isento2.setDescricao("Aluno Isento");
            isento2.setTipo(TipoPerfil.ISENTO);
            isento2.setValor(valIse);
        
            Perfil professor2 = new Perfil();
            professor2.setDescricao("Professor");
            professor2.setTipo(TipoPerfil.PROFESSOR);
            professor2.setValor(valPro);
        
            Perfil servidor2 = new Perfil();
            servidor2.setDescricao("Servidor");
            servidor2.setTipo(TipoPerfil.SERVIDOR);
            servidor2.setValor(valSer);
        
            Perfil autorizado2 = new Perfil();
            autorizado2.setDescricao("Autorizado");
            autorizado2.setTipo(TipoPerfil.AUTORIZADO);
            autorizado2.setValor(valAut);
            
            
            if ( Alterar.alterarPerfil(aluno, aluno2) && Alterar.alterarPerfil(professor, professor2) &&
                 Alterar.alterarPerfil(servidor, servidor2) && Alterar.alterarPerfil(residente, residente2) &&
                 Alterar.alterarPerfil(isento, isento2) && Alterar.alterarPerfil(autorizado, autorizado2)){
                
                out.print("Todas as alterações foram realizadas!");
                
            }else{
                out.print("Alguma alteração não foi realizada!");
            }
            
        }

    %>
    <!-- Footer -->
    <br><br>
    <jsp:include page="../include/footer.jsp" />

    <!-- Bootstrap core JavaScript -->
    <script src="assets/credru/jquery/jquery.min.js"></script>

    <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

  </body>

</html>

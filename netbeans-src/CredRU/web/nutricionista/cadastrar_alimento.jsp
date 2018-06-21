<%@page import="br.com.credru.controller.Cadastrar"%>
<%@page import="br.com.credru.model.Categoria"%>
<%@page import="br.com.credru.model.Alimento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CRED RU - NUTRI ADM - CadastrarAlimento </title>

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
              
              <hr>


              <div class="row justify-content-center">
              <div class="col-md-8 mb-5" >
              <div class="card">
              <header class="card-header">
                
                <center><h4 class="card-title mt-2">Cadastrar Novo Alimento</h4></center>
              </header>
              <article class="card-body">
              <form action="Nutricionista?comando=CadastrarAlimento" method="post">
                <br><br>
                <div class="form-row">
                  <div class="col form-group col-md-12">
                    <label>Nome</label>   
                    <input type="text" name="nome" required="" class="form-control" placeholder="">
                  </div> <!-- form-group end.// -->

                  <div class="col form-group">
                    <label>Descrição</label>
                    <input type="text" name="descricao" class="form-control" placeholder=" ">
                  </div> <!-- form-group end.// -->
                </div> <!-- form-row end.// -->

                <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Tipo</label>
                            <select name="tipo" id="inputState" class="form-control">
                                <option selected="" value="0">Principal</option>
                                <option value="1">Vegetariano</option>
                                <option value="2">Salada</option>
                                <option value="3">Guardinação</option>
                                <option value="4">Acompanhamento</option>
                                <option value="5">Suco</option>
                                <option value="6">Sobremesa</option>
                                <option value="7">Bebidas</option>
                                <option value="8">Pães</option>
                                <option value="9">Frutas</option>
                                <option value="10">Especial</option>
                            </select>
                          </div>

                          <div class="col-md-3 form-group">
                            <label>Valor Calórico (cal) </label>
                            <input type="number" name="valorC" value="0" step="0.01" class="form-control" placeholder=" ">
                          </div> <!-- form-group end.// -->
                          
                          <div class="col-md-3 form-group">
                            <label> Total de gramas (g)</label>
                            <input type="number" name="valorG" value="0" class="form-control" placeholder=" ">
                          </div> <!-- form-group end.// -->
                </div> <!-- form-row end.// -->
                
                <div class="form-row">
                          <div class="col-md-4 form-group">
                            <label>Carboidratos (cal) </label>
                            <input type="number" name="calCarboidrato" value="0" step="0.01" class="form-control" placeholder=" ">
                          </div> <!-- form-group end.// -->

                          <div class="col-md-4 form-group">
                            <label>Proteínas (cal) </label>
                            <input type="number" name="calProteina" value="0" step="0.01" class="form-control" placeholder=" ">
                          </div> <!-- form-group end.// -->
                          
                          <div class="col-md-4 form-group">
                            <label> Lipídios (cal) </label>
                            <input type="number" name="calLipidio" value="0" step="0.01" class="form-control" placeholder=" ">
                          </div> <!-- form-group end.// -->
                </div> <!-- form-row end.// -->

                  <div class="form-group">
                      <button type="submit" class="btn btn-primary btn-block"> Registrar  </button>
                  </div> <!-- form-group// -->    
                <br><br>
      
              </form>
              </article> <!-- card-body end .// -->
              
              </div> <!-- card.// -->
              </div> <!-- col.//-->

              </div> <!-- row.//-->


              </div> 
              <!--container end.//-->


    </div>
    <!-- /.container -->

    <%
        if (request.getParameter("nome") != null && 
            request.getParameter("descricao") != null &&
            request.getParameter("valorC") != null &&
            request.getParameter("valorG") != null){
        
            String nome = request.getParameter("nome");
            String descricao = request.getParameter("descricao");
            int cat = Integer.parseInt(request.getParameter("tipo"));
            float valC = 0;
            float valG = 0;
            float carb = 0;
            float prot = 0;
            float lip = 0;
            if ( request.getParameter("valorC").isEmpty() == false){
                valC = Float.parseFloat(request.getParameter("valorC"));
            }
            if ( request.getParameter("valorG").isEmpty() == false){
                valG = Integer.parseInt(request.getParameter("valorG"));
            }
            if ( request.getParameter("calCarboidrato").isEmpty() == false){
                carb = Float.parseFloat(request.getParameter("calCarboidrato"));
            }
            if ( request.getParameter("calProteina").isEmpty() == false){
                prot = Float.parseFloat(request.getParameter("calProteina"));
            }
            if ( request.getParameter("calLipidio").isEmpty() == false){
                lip = Float.parseFloat(request.getParameter("calLipidio"));
            }
            
            Alimento al = new Alimento();
            al.setCategoria(Categoria.getCategoria(cat));
            al.setNome(nome);
            al.setObservacao(descricao);
            al.setGramas(valG);
            al.setValorCalorico(valC);
            al.setCarboidratos(carb);
            al.setLipidios(lip);
            al.setProteinas(prot);
            
            if( Cadastrar.cadastrarAlimento(al)){
                out.print("Cadastrado com sucesso!");
            }
            else{
                out.print("Cadastro não realizado! Esse nome já foi cadastrado");
            }
        }
    %>
    
    <!-- Footer -->
    <jsp:include page="../include/footer.jsp" />

    <!-- Bootstrap core JavaScript -->
    <script src="assets/credru/jquery/jquery.min.js"></script>

    <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

  </body>

</html>

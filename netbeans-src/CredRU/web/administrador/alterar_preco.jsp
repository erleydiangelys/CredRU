<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CRED RU - ADM - AlterarTabela </title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="../assets/credru/css/bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="../assets/credru/css/index.css">

  </head>

  <body>

    <!-- Menu começa aqui-->
    <jsp:include page="../include/header.jsp" />
    

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
                            <div>
                                <form method="post" action="">
                                    <div class="form-row">


                                      <div class="form-group col-lg-12">
                                          <center><label for="selecaoRu"><h5><b>Selecione RU</b></h5></label></center>
                                          <select class="form-control" id="selecaoRu">
                                            <option>Russas</option>
                                            <option>PICI</option>
                                            <option>PQP</option>
                                          </select>
                                        </div>
                                        
                                        </div> <!-- form-group end.// -->
                                    </div>

                                    <center><h5>Alterar preços</h5></center>
                            <center><div>
                                          
                                          Aluno: <input type="text" name="daluno">
                                          Professor: <input type="text" name="prof"> 
                                          Servidor: <input type="text" name="serv">
                                    </div></center>

                                      <br><br><br><br>


                                               
                                    
                                     <div class="form-group">
                                                    <button type="submit" class="btn btn-primary btn-block">Alterar</button>
                                                </div>

                                </form>
                            </div>

                            <!-- fim menu oprações-->
                                
                          </div>
                        
                      </div>
                    </div>
            </div>
            <!-- /.row -->

    </div>
    
   
    <!-- /.container -->

    <!-- Footer -->
    <br><br>
    <jsp:include page="../include/footer.jsp" />

    <!-- Bootstrap core JavaScript -->
    <script src="../assets/credru/jquery/jquery.min.js"></script>

    <script src="../assets/credru/js/bootstrap.bundle.min.js"></script>

  </body>

</html>

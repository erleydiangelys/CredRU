<%@page import="br.com.credru.model.Restaurante"%>
<%@page import="java.util.List"%>
<%@page import="br.com.credru.controller.Visualizar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CRED RU - NUTRI ADM - CadastrarRefeição </title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/bootstrap.min.css">

        <!-- Custom styles for this template -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/index.css">

    </head>

    <body>

        <!-- Menu começa aqui-->
        <jsp:include page="../include/header.jsp" />
        <!-- menu acaba aqui -->

        <!-- Page Content -->
        <div class="container">
            <br><br>



            <div class="container">

                <hr>


                <div class="row justify-content-center">
                    <div class="col-md-8 mb-5" >
                        <div class="card">
                            <header class="card-header">
                                <center><h4 class="card-title mt-2">Cadastrar Nova Refeição</h4></center>
                            </header>
                            <%
                                List<Restaurante> rest = Visualizar.getRestaurante();
                                if(rest == null || rest.size() == 0){
                                    %>
                                    <div class="alert alert-warning">
                                        <strong>Nenhum restaurante cadastrado!</strong> Contate o administrador para cadastrar um RU.
                                    </div>
                                    <%
                                }
                            %>
                            <article class="card-body">
                                <form action="Nutricionista?comando=CadastrarRefeicao" method="post">
                                    <br><br>

                                    <div class="form-row">
                                        <div class="col form-group col-md-12">
                                            <label>Restaurante</label>   
                                            <select required="" name="restaurante">
                                                <%
                                                    for(Restaurante r : rest){
                                                        %>
                                                        <option value="<%= r.getNome() %>"><%= r.getNome() %></option>
                                                        <%
                                                    }
                                                %>
                                            </select>
                                        </div> <!-- form-group end.// -->
                                    </div>


                                    <!-- fim codigo novo-->
                                    <br><br>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-block"> Registrar  </button>
                                    </div> <!-- form-group// -->    
                                    <br>

                                </form>
                            </article>
                        </div> <!-- form-row end.// -->




                        <!-- card-body end .// -->

                    </div> <!-- card.// -->
                </div> <!-- col.//-->

            </div> <!-- row.//-->


        </div> 
        <!--container end.//-->

        <!-- Footer -->
        <jsp:include page="../include/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="assets/credru/jquery/jquery.min.js"></script>

        <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

    </body>


</html>

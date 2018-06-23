<%@page import="br.com.credru.model.LocalTime"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="br.com.credru.model.Horario"%>
<%@page import="br.com.credru.model.Restaurante"%>
<%@page import="br.com.credru.controller.Cadastrar"%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CRED RU - ADM - CadastrarRU </title>

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
                    <div class="col-md-1O mb-5" >
                        <div class="card">
                            <header class="card-header">
                                <center><h4 class="card-title mt-2">Cadastrar Novo RU</h4></center>
                            </header>
                            <article class="card-body">
                                <form action="Administrador?comando=CadastrarRU" method="post">
                                    <br><br>
                                    <div class="form-row">
                                        <div class="col form-group col-md-12">
                                            <label>Nome</label>   
                                            <input type="text" name="nome" required="" class="form-control" placeholder="">
                                            <br>

                                            <center><h5>Horarios de funcionamento:</h5></center>	

                                        </div> <!-- form-group end.// -->





                                        <div class="col-md-4" >
                                            <div class="card">
                                                <header class="card-header">

                                                    <center><h6 class="card-title mt-2">Café</h6></center>
                                                </header>
                                                <article class="card-body">



                                                    <div class="form-row">
                                                        <div class="col form-group col-md-5">
                                                            <label>Hora Inicio</label>
                                                            <input type="time" name="cafe1" class="form-control" placeholder=" ">
                                                        </div> <!-- form-group end.// -->

                                                        <div class="col form-group col-md-5">
                                                            <label>Hora final</label>
                                                            <input type="time" name="cafe2" class="form-control" placeholder=" ">
                                                        </div> <!-- form-group end.// -->

                                                    </div>
                                                </article>
                                            </div>
                                        </div>


                                        <div class="col-md-4" >
                                            <div class="card">
                                                <header class="card-header">

                                                    <center><h6 class="card-title mt-2">Almoço</h6></center>
                                                </header>
                                                <article class="card-body">



                                                    <div class="form-row">
                                                        <div class="col form-group">
                                                            <label>Hora Inicio</label>
                                                            <input type="time" name="almoco1" required="" class="form-control" placeholder=" ">
                                                        </div> <!-- form-group end.// -->

                                                        <div class="col form-group">
                                                            <label>Hora final</label>
                                                            <input type="time" name="almoco2" required="" class="form-control" placeholder=" ">
                                                        </div> <!-- form-group end.// -->

                                                    </div>
                                                </article>
                                            </div>
                                        </div>

                                        <div class="col-md-4" >
                                            <div class="card">
                                                <header class="card-header">

                                                    <center><h6 class="card-title mt-2">Jantar</h6></center>
                                                </header>
                                                <article class="card-body">



                                                    <div class="form-row">
                                                        <div class="col form-group">
                                                            <label>Hora Inicio</label>
                                                            <input type="time" name="jantar1" required="" class="form-control" placeholder=" ">
                                                        </div> <!-- form-group end.// -->

                                                        <div class="col form-group">
                                                            <label>Hora final</label>
                                                            <input type="time" name="jantar2" required="" class="form-control" placeholder=" ">
                                                        </div> <!-- form-group end.// -->

                                                    </div>
                                                </article>
                                            </div>
                                        </div>


                                    </div>



                                    <br>


                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-block"> Registrar  </button>
                                    </div> <!-- form-group// -->    
                                    <br>
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
            if (request.getParameter("nome") != null
                    && request.getParameter("almoco1") != null && request.getParameter("almoco2") != null
                    && request.getParameter("jantar1") != null && request.getParameter("jantar2") != null) {

                String nome = request.getParameter("nome");
                String hialmoco = request.getParameter("almoco1");
                String hfalmoco = request.getParameter("almoco2");
                String hijantar = request.getParameter("jantar1");
                String hfjantar = request.getParameter("jantar2");

                System.out.print(hialmoco);
                System.out.print(hialmoco.substring(0, 2));
                System.out.print(hialmoco.substring(3, 5));
                //LocalTime tempo = 
                ArrayList<Horario> horarios = new ArrayList();

                Horario almoco = new Horario();
                almoco.setDescricao("Almoço");

                LocalTime hoIalmo = new LocalTime();
                hoIalmo.setHora(Integer.parseInt(hialmoco.substring(0, 2)));
                hoIalmo.setMinuto(Integer.parseInt(hialmoco.substring(3, 5)));
                almoco.setHoraInicio(hoIalmo);

                LocalTime hoFalmo = new LocalTime();
                hoFalmo.setHora(Integer.parseInt(hfalmoco.substring(0, 2)));
                hoFalmo.setMinuto(Integer.parseInt(hfalmoco.substring(3, 5)));
                almoco.setHoraFim(hoFalmo);

                horarios.add(almoco);

                Horario jantar = new Horario();
                jantar.setDescricao("Jantar");
                LocalTime hoIjan = new LocalTime();
                hoIjan.setHora(Integer.parseInt(hijantar.substring(0, 2)));
                hoIjan.setHora(Integer.parseInt(hijantar.substring(3, 5)));
                jantar.setHoraInicio(hoIjan);
                LocalTime hoFjan = new LocalTime();
                hoFjan.setHora(Integer.parseInt(hfjantar.substring(0, 2)));
                hoFjan.setHora(Integer.parseInt(hfjantar.substring(3, 5)));
                jantar.setHoraFim(hoFjan);

                horarios.add(jantar);
                System.out.print(request.getParameter("cafe1"));

                if (request.getParameter("cafe1").isEmpty() == false && request.getParameter("cafe2").isEmpty() == false) {
                    String hicafe = request.getParameter("cafe1");
                    String hfcafe = request.getParameter("cafe2");

                    Horario cafe = new Horario();
                    cafe.setDescricao("Café da Manhã");
                    LocalTime hoIcaf = new LocalTime();
                    hoIcaf.setHora(Integer.parseInt(hicafe.substring(0, 2)));
                    cafe.setHoraInicio(hoIcaf);
                    LocalTime hoFcaf = new LocalTime();
                    hoFcaf.setHora(Integer.parseInt(hfcafe.substring(3, 5)));
                    cafe.setHoraFim(hoFcaf);

                    horarios.add(cafe);

                }

                Restaurante res = new Restaurante();
                res.setNome(nome);
                res.setHorarios(horarios);

                if (Cadastrar.cadastrarRestaurante(res)) {
                    out.print("Cadastro realizado com sucesso!");
                } else {
                    out.print("Cadastro não realizado!, esse nome já foi cadastrado");
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
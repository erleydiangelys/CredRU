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
    <link rel="stylesheet" type="text/css" href="../assets/credru/css/bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="../assets/credru/css/index.css">

  </head>

  <body>

    <!-- Menu começa aqui-->
    <jsp:include page="../include/header.jsp" />
    
    <!-- menu acaba aqui -->

    <!-- Page Content -->
    <div class="container">
      <br><br>
      <!-- Page Heading/Breadcrumbs
      <h1 class="mt-4 mb-3">CRED RU</h1>
       -->

     <!-- <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Services</li>
      </ol>
    -->

      <!-- Image Header -->



                    <div class="container">
              
              <hr>


              <div class="row justify-content-center">
              <div class="col-md-1O mb-5" >
              <div class="card">
              <header class="card-header">
                
                <center><h4 class="card-title mt-2">Cadastrar Novo RU</h4></center>
              </header>
              <article class="card-body">
              <form>
                <br><br>
                <div class="form-row">
                  <div class="col form-group col-md-12">
                    <label>Nome</label>   
                    <input type="text" name="nome" required="" class="form-control" placeholder="">
                      <br>

                      <center><label><h5>Horarios de funcionamento:</h5></label></center>	
             
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




                

              <!--
                <div class="form-group">
                  <label>Crie uma Senha</label>
                    <input class="form-control" type="password">
                </div> <!-- form-group end.// 

                <div class="form-group">
                  <label>Confirme sua Senha</label>
                    <input class="form-control" type="password">
                </div> <!-- form-group end.//  
                -->

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
        if (request.getParameter("nome") != null &&
            request.getParameter("almoco1") != null && request.getParameter("almoco2") != null &&
            request.getParameter("jantar1") != null && request.getParameter("jantar2") != null){
        
            String nome = request.getParameter("nome");
            String hialmoco = request.getParameter("almoco1");
            String hfalmoco = request.getParameter("almoco2");
            String hijantar = request.getParameter("jantar1");
            String hfjantar = request.getParameter("jantar2");
            
            //LocalTime tempo = 
            ArrayList<Horario> horas = new ArrayList();
            
            Horario almoco = new Horario();
            almoco.setDescricao("Almoço");
            LocalTime hoIalmo = new LocalTime();
            hoIalmo.setHora(Integer.parseInt(hialmoco.substring(0, 2)));
            almoco.setHoraInicio(hoIalmo);
            LocalTime hoFalmo = new LocalTime();
            hoFalmo.setHora(Integer.parseInt(hialmoco.substring(3, 5)));
            almoco.setHoraFim(hoFalmo);
            
            horas.add(almoco);
            
            Horario jantar = new Horario();
            jantar.setDescricao("Jantar");
            LocalTime hoIjan = new LocalTime();
            hoIjan.setHora(Integer.parseInt(hijantar.substring(0, 2)));
            jantar.setHoraInicio(hoIjan);
            LocalTime hoFjan = new LocalTime();
            hoFjan.setHora(Integer.parseInt(hfjantar.substring(3, 5)));
            jantar.setHoraFim(hoFjan);
            
            horas.add(jantar);
            
            if (request.getParameter("cafe1") != null && request.getParameter("cafe2") != null){
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
            
                horas.add(cafe);
                
            }
            
            
        }
    %>
    <!-- Footer -->
    <jsp:include page="../include/footer.jsp" />

    <!-- Bootstrap core JavaScript -->
    <script src="../assets/credru/jquery/jquery.min.js"></script>

    <script src="../assets/credru/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
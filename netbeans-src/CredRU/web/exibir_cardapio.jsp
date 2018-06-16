<%@page import="java.util.Calendar"%>
<%@page import="br.com.credru.model.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CRED RU - Cardápio</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/bootstrap.min.css">

        <!-- Custom styles for this template -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/index.css">

    </head>

    <body>

        <jsp:include page="include/header.jsp" />

        <<<<<<< HEAD
        <!-- Page Content -->
        <div class="container">
            <br><br>
            <!-- Page Heading/Breadcrumbs
            <h1 class="mt-4 mb-3">CRED RU</h1>
=======
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            
            <li class="nav-item">
              <a class="nav-link" href="index.jsp">INICIO</a>
            </li>
           
            <li class="nav-item">
              <a class="nav-link" href="exibir_cardapio.jsp">CARDAPIO</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="login.jsp">LOGIN</a>
            </li>
           
            <!--
            <li class="nav-item">
              <a class="nav-link" href="contact.html">Contact</a>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Portfolio
              </a>
             
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="portfolio-1-col.html">1 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-3-col.html">3 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-4-col.html">4 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a>
              </div>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Blog
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
                <a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
                <a class="dropdown-item" href="blog-post.html">Blog Post</a>
              </div>
            </li>
           
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Other Pages
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="full-width.html">Full Width Page</a>
                <a class="dropdown-item" href="sidebar.html">Sidebar Page</a>
                <a class="dropdown-item" href="faq.html">FAQ</a>
                <a class="dropdown-item" href="404.html">404</a>
                <a class="dropdown-item" href="pricing.html">Pricing Table</a>
              </div>
>>>>>>> fe969352d9a131f66a97a0cd58eefd870bef856a
            -->

            <!-- <ol class="breadcrumb">
               <li class="breadcrumb-item">
                 <a href="index.html">Home</a>
               </li>
               <li class="breadcrumb-item active">Services</li>
             </ol>
            -->

            <!-- Image Header -->



            <!-- Marketing Icons Section -->
            <div class="row">


                <div class="col-lg-12 mb-3">
                    <div class="card h-100">
                        <h4 class="card-header">Cardapio Semanal</h4>
                        <div class="card-body">

                            <div class="container">

                                <div class="row">
                                    <div class="col">
                                        <!-- segunda-->
                                        <div class="card" style="width: 11rem;">
                                            <img class="card-img-top" src="assets/img/p_fundo.jpg" alt="Card image cap">

                                            <div class="card-body">
                                                <p class="card-text">Arroz, feijão e faroja</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Sobremesa:</b><br> Laranja</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Carne:</b><br> Assado Misto</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Suco:</b><br> Manga</p>
                                            </div>

                                        </div>
                                    </div>

                                    <!-- Terça-->
                                    <div class="col">
                                        <div class="card" style="width: 11rem;">
                                            <img class="card-img-top" src="assets/img/p_fundo.jpg" alt="Card image cap">

                                            <div class="card-body">
                                                <p class="card-text">Arroz, feijão e faroja</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Sobremesa:</b><br> Laranja</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Carne:</b><br> Assado Misto</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Suco:</b><br> Manga</p>
                                            </div>

                                        </div>
                                    </div>

                                    <!--Quarta-->
                                    <div class="col">
                                        <div class="card" style="width: 11rem;">
                                            <img class="card-img-top" src="assets/img/p_fundo.jpg" alt="Card image cap">
                                            <div class="card-body">
                                                <p class="card-text">Arroz, feijão e faroja</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Sobremesa:</b><br> Laranja</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Carne:</b><br> Assado Misto</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Suco:</b><br> Manga</p>
                                            </div>

                                        </div>
                                    </div>

                                    <!-- Quinta-->
                                    <div class="col">
                                        <div class="card" style="width: 11rem;">
                                            <img class="card-img-top" src="assets/img/p_fundo.jpg" alt="Card image cap">
                                            <div class="card-body">
                                                <p class="card-text">Arroz, feijão e faroja</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Sobremesa:</b><br> Laranja</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Carne:</b><br> Assado Misto</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Suco:</b><br> Manga</p>
                                            </div>

                                        </div>
                                    </div>

                                    <!-- Sexta-->
                                    <div class="col">
                                        <div class="card" style="width: 11rem;">
                                            <img class="card-img-top" src="assets/img/p_fundo.jpg" alt="Card image cap">

                                            <div class="card-body">
                                                <p class="card-text">Arroz, feijão e faroja</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Sobremesa:</b><br> Laranja</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Carne:</b><br> Assado Misto</p>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text"><b>Suco:</b><br> Manga</p>
                                            </div>

                                        </div>
                                    </div>


                                </div>


                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

        <%
            Calendar cc = Calendar.getInstance();

            LocalDate data = new LocalDate(cc.get(Calendar.DAY_OF_MONTH), cc.get(Calendar.MONTH), cc.get(Calendar.YEAR));
        %>

        <jsp:include page="include/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="assets/credru/jquery/jquery.min.js"></script>

        <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

    </body>

</html>

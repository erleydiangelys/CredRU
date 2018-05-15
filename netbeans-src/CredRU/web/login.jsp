<%-- 
    Document   : login
    Created on : 14/05/2018, 20:26:10
    Author     : diang
--%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login Cred</title>
  
  <link href="assets/bulma/bulma.css" rel="stylesheet" type="text/css"/>
  <link href="assets/credru/css/login.css" rel="stylesheet" type="text/css"/>

</head>
<body>
  
   <nav class="navbar is-white">
    <div class="container">
      <div class="navbar-brand">
        <a class="navbar-item brand-text" href="../">
          CredRU Admin         
        </a>
        <div class="navbar-burger burger" data-target="navMenu">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
      <div id="navMenu" class="navbar-menu">
        <div class="navbar-start">
          <a class="navbar-item" href="tela_principal.html">
            Home
          </a>
          <a class="navbar-item" href="admin.html">
            xxxx
          </a>
      </div>
    </div>
  </nav>
<!--fim do cabeçalho -->

  <section class="hero is-success is-fullheight">
    <div class="hero-body">
      <div class="container has-text-centered">
        <div class="column is-4 is-offset-4">
          <h3 class="title has-text-white">CredRU</h3>
          <p class="subtitle has-text-white">faça login para mais serviços</p>
          <div class="box">
            <figure class="avatar">
              <img src="assets/img/icon.png"/>
            </figure>
            <form>
              <div class="field">
                <div class="control">
                  <input class="input is-large" type="Username" placeholder="Username" autofocus="">
                </div>
              </div>

              <div class="field">
                <div class="control">
                  <input class="input is-large" type="password" placeholder="Senha">
                </div>
              </div>
              <div class="field">
                <label class="checkbox">
                  <input type="checkbox">
                  Lembre-me
                </label>
              </div>
              <button class="button is-block is-info is-large is-fullwidth">Login</button>
            </form>
          </div>
          <p class="has-text-white">
            <a href="../">Sign Up</a> &nbsp;·&nbsp;
            <a href="../">Forgot Password</a> &nbsp;·&nbsp;
            <a href="../">Need Help?</a>
          </p>
        </div>
      </div>
    </div>
  </section>
  <script async type="text/javascript" src="../js/bulma.js"></script>
</body>
</html>
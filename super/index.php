<?php
include_once "header-super.php";
?>

<section class="container-fluid home">
  <div class="row">

   <div class="offset-sm-2 offset-md-3 offset-lg-4 col-12 col-sm-8 col-md-6 col-lg-4 text-center">
      <div class="login-form">
    <form class="text-center" action="includes/login-super.inc.php" method="POST">
      <h4 id="Log-head" class="log-head text-center">SUPERUSER LOGIN</h4>
      <input class="inputs" value="<?php if(isset($_GET['usererr'])){echo($_GET['usererr']);}?>" type="text" name="username" placeholder="Username/Email" required/><br/>
      <input class="inputs" value="<?php if(isset($_GET['pwderr'])){echo($_GET['pwderr']);}?>" type="<?php if(isset($_GET['pwderr'])){echo('text');} else{echo('password');}?>" name="password" placeholder="Password" required/><br/>
      <button id="submit-btn"  name="submit" type="submit" >SUBMIT</button>
      </form>

    </div>

  </div>
  </div>
</section>


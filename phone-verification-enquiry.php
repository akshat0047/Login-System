<?php include_once "header.php"; ?>

<section class="container-fluid home">
  <div class="row">

   <div class="offset-sm-2 offset-md-3 offset-lg-4 col-12 col-sm-8 col-md-6 col-lg-4 text-center">
      <div class="login-form">
	  <div class="error"></div>
        <form id="frm-mobile-verification" class="text-center">
           <h4 id="Log-head" class="log-head text-center">Mobile Number Verification</h4>
           <input type="number" id="mobile" class="inputs" placeholder="Enter the 10 digit mobile"><br/>
	       <button type="button" id="submit-btn" onClick="sendOTP()">SEND OTP</button>
        </form>
       </div>
    </div>
   </div>
</section>
  
<script src="js/mobile-verification.js"></script>
<?php include_once "footer.php"; ?>
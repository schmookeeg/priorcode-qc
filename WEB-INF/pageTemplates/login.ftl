<#import "/spring.ftl" as spring />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logo</title>
<link rel="stylesheet" type="text/css" href="<@spring.url "/css/global.css" />" media="all">
<script type="text/javascript" src="<@spring.url "/javascript/jquery.min.js" />" ></script>
<script type="text/javascript" src="<@spring.url "/javascript/global.js" />"></script>
<script type="text/javascript" src="<@spring.url "/javascript/jquery.validate.min.js" />"></script>
<script type="text/javascript" src="<@spring.url "/javascript/jquery.tools.min.js" />"></script>
</head>
<body id="main_body" >
	<div id="wrapper">
		<!-- Logo and Logged-In User Links -->
		<fieldset class="global_logo_container">
			<h1>Qualcomm</h1>
		</fieldset>		6
		<!-- /Logo and Logged-In User Links -->
		
		<!-- Top Navigation -->
		<ul class="global_nav">
			<li><a href="#">TITLES</a></li>
			<li><a href="#">AGREEMENTS</a></li>
			<li><a href="#">SUPPORT</a></li>
			<li class="last"><a href="#">ADMIN</a></li>
		</ul>
		<!-- /Top Navigation -->
		
		<!-- Main Content -->
		<div id="form_container" class="login_container form_login_continue_container">
			<div class="form_block expose_target corner_8">
				
				<div class="error_messages" style="display: none;"></div>
				
				<!-- Sign In Content -->
				<fieldset class="form_login_container">				
					<fieldset class="form_block corner_6">
						<form id="form_33849" class="appnitro"  method="post" action="/siteminderagent/forms/login.fcc">
							<div class="form_description">
								<h3>This page requires Sign-in. </h3>
							</div>									
							<fieldset class="form_block_content">
								<fieldset>
									<label class="description" for="element_1">Email: </label>
									<input id="j_username" name="USER" class="txt_field" type="text" maxlength="255" value=""/>
								</fieldset>
								<fieldset>
									<label class="description" for="element_2">Password:</label>
									<input id="j_password" name="PASSWORD" class="txt_field" type="text" maxlength="255" value=""/> 
								</fieldset>
							</fieldset>
						  <input type=hidden name="target" value="${SAVED_REQUEST_URL}">
						  <input type=hidden name="SMAUTHREASON" value="0">
							<p>
								<a href="#">Forgot Password ?</a>
							</p>
							<fieldset class="login_button_container login_continue_button">
							 	<input type="hidden" name="form_id" value="33849" />
								<input type="submit" id="saveForm" value="Sign In" class="button_gen corner_4" />
							</fieldset>
						</form>	
					</fieldset>
				</fieldset>
				<!-- /Sign In Content -->	
			</div>
		</div>
		<!-- /Main Content -->
		
		
	</div>
	<script type="text/javascript">
  	$(document).ready(function() {
  	  /* Clear form datam */
  	  $("#saveForm").attr('disabled', 'disabled');
    	$("#saveForm").addClass("button_disabled");
  	  $("#element_1").val("");
  	  $("#element_2").val("");
  	  
  	  /* Button disabling/enabling */
  	  var flag_email = false;
  	  var flag_password = false;
  	  
  	  function changeButtonStatus() {
        if (flag_email && flag_password) {
          $("#saveForm").removeAttr("disabled");
          $("#saveForm").removeClass("button_disabled");
        }
        else {
          $("#saveForm").attr("disabled", "disabled");
        	$("#saveForm").addClass("button_disabled");
        }
      }

      function changeFlag(object, flag) { //Flag is a string of the variable name
        if(eval(flag) && (object.val() != "" || object.is(":checked"))) //Flag already set to true and has data
          return true;

        if(object.val() != "" || object.is(":checked")) //Data in field
          eval(flag+" = true;");
        else //Field empty
          eval(flag+" = false;");

        changeButtonStatus();
        return flag;   
      }

      $("#element_1").keyup(function() {
        changeFlag($(this), "flag_email");
      });
      $("#element_2").keyup(function() {
        changeFlag($(this), "flag_password");
      });
  	  
  	  /* Validation */
  	  $("#form_33849").validate({
  	    onfocusout: false,
        onkeyup: false,
        onclick: false,
        focusInvalid: false,
        errorLabelContainer: ".error_messages",
        errorElement: "span",
        submitHandler: function() {
          $("#saveForm").attr('disabled', 'disabled');
        	$("#saveForm").addClass("button_disabled");
          //TODO
        },
        invalidHandler: function(form, validator) {
          validator.showErrors(); // Add error class to invalid fields
          $('label').removeClass("error-label"); // Remove all previous error labels

          $('.error').each(function() { // Add 'error-label' class to labels of invalid fields
            $('label[for='+$(this).attr('id')+']').addClass("error-label");
          });

          $('label').each(function() { // Cleanup and remove 'error-label' from labels that are not associated with a field
            if ($(this).attr('for') == "")
              $(this).removeClass("error-label");
          });
          window.scrollTo(0,0);
        },
        rules: {
          element_1: {
            required: true,
            email: true
            // TODO: Remote Validation
          },
          element_2: {
            required: true,
            password: true
          }
        },
        messages: {
          element_1: {
            required: "Please enter a valid email. ",
            email: "Please enter a valid email. "
            // TODO: Remote Validation
          },
          element_2: {
            required: "Please enter a valid password. ",
            password: "Password must contain a minimum of 8 characters with 1 capital letter and 1 number. "
          }
        }
  	  });
  	  
  		/* jQuery overlay append */
  		var overlayHeight = $(document).height();
  		var overlayWidth = $(document).width();		
  		var overlayHTML = "<div class='container_fullscreen' style='height:" + overlayHeight + "px;'>&nbsp;</div>";
  		$('body').append(overlayHTML);
  	});	
  </script>
</body>
</html>
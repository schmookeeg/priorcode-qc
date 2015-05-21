<#import "/spring.ftl" as spring />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Partner Portal - Create Account</title>
<link rel="stylesheet" type="text/css" href="<@spring.url "/css/global.css" />" media="all">
<script type="text/javascript" src="<@spring.url "/javascript/jquery.min.js" />" ></script>
<script type="text/javascript" src="<@spring.url "/javascript/global.js" />"></script>
<script type="text/javascript" src="<@spring.url "/javascript/jquery.validate.min.js" />"></script>
<script type="text/javascript" src="<@spring.url "/javascript/jquery.tools.min.js" />"></script>
</head>
<body id="main_body">
	<div id="wrapper">		
		<!-- Logo and Logged-In User Links -->
		<fieldset class="global_logo_container">
			<h1>Qualcomm</h1>
			<p class="global_status_content">
				username@email.com
			</p>
			<ul class="user_links_container">
				<li><a href="#">Sign Out</a></li>
				<li class="div">|</li>
				<li><a href="myprofile.html">My Profile</a></li>
			</ul>
		</fieldset>		
		<!-- /Logo and Logged-In User Links -->
		
		<!-- Top Navigation -->
		<ul class="global_nav">
			<li class="active"><a href="titles.html">Titles</a></li>
			<li><a href="agreements.html">AGREEMENTS</a></li>
			<li class="last"><a href="admin.html">Admin</a></li>
		</ul>
		<!-- /Top Navigation -->
		
		<!-- Main Content -->
		<div id="form_container" class="create_account_container">
			<div class="form_block expose_target corner_8">
				
				<div class="form_header">
					<h3>CREATE ACCOUNT</h3>
					<span>*required field</span>
				</div>
				
				<div class="error_messages" style="display: none;"></div>
				
				<form id="form_33721" class="appnitro "  method="post" action="">
					<fieldset class="account_block">
						<h3>Account Information</h3>
						
						<fieldset>
							<label for="accountEmail">Email<span>*</span>:</label>
							<input id="accountEmail" name="accountEmail" type="text" maxlength="255" value=""/>
							<span class="field_instructions">Example: user@domain.com. Email confirmation is required to activate your account.</span>
						</fieldset>
						
						<fieldset>
							<label for="accountPassword">Password<span>*</span>:</label>
							<input id="accountPassword" name="accountPassword" class="" type="password" maxlength="255" value=""/> 
							<span class="field_instructions">Minimum of 8 case-sensitive alphanumeric characters with 1 capital letter and 1 number.</span>
						</fieldset>
						
						<fieldset>
							<label for="accountPasswordConfirm">Confirm Password<span>*</span>:</label>
							<input id="accountPasswordConfirm" name="accountPasswordConfirm" class="" type="password" maxlength="255" value=""/>
							<span class="field_instructions">Please re-enter your password.</span>
						</fieldset>
					</fieldset>
					
					<fieldset class="account_block">
						<h3>Contact Information</h3>
						
						<fieldset>
							<label for="accountUserType">User Type<span>*</span>:</label>
							<ul class="user_type_container">
								<li class="col_left"><input type="radio" name="accountUserType" id="individual_user" value="" /><label for="individual_user">Individual</label></li>
								<li class="col_right"><input type="radio" name="accountUserType" id="company_user" value="" /><label for="company_user">Company</label></li>
							</ul>
						</fieldset>
											
						<fieldset>
							<label for="accountFirstName">First Name<span>*</span>:</label>
							<input id="accountFirstName" name="accountFirstName" class="" maxlength="255" size="8" value=""/>
						</fieldset>
						
						<fieldset>
							<label for="accountLastName">Last Name<span>*</span>:</label>
							<input id="accountLastName" name="accountLastName" class="" maxlength="255" size="8" value=""/>
						</fieldset>
						
						<fieldset>
							<label for="accountNickname">Nickname:</label>					
							<input id="accountNickname" name="accountNickname" class="" type="text" maxlength="255" value=""/><a href="javascript: void(0);" title="Nickname information" class="icon_question">?</a>
						</fieldset>
						
						<fieldset>
							<label for="accountCompanyName">Company Name<span>*</span>:</label>					
							<input id="accountCompanyName" name="accountCompanyName" class="" type="text" maxlength="240" value=""/> 
							<span class="field_instructions">This will be shown to end users if you don't enter a Company Display Name. (Max. 240 Characters)</span>
						</fieldset>
						
						<fieldset>
							<label for="accountCompanyDisplayName">Company Display Name:</label>					
							<input id="accountCompanyDisplayName" name="accountCompanyDisplayName" class="" type="text" maxlength="255" value=""/><a href="javascript: void(0);" title="Company Display Name information" class="icon_question">?</a>
							<span class="field_instructions">This will be shown to end users if you enter. (Max. 240 Characters)</span>
						</fieldset>
						
						<fieldset>
							<label for="accountCompanyWebsite">Company Website:</label>					
							<input id="accountCompanyWebsite" name="accountCompanyWebsite" class="" type="text" maxlength="255" value="http://"/> 
							<span class="field_instructions">This will be shown to end users if you enter.</span>
						</fieldset>
						
						<fieldset>												
							<label for="accountCountry">Country<span>*</span>:</label>
							<select class="" id="accountCountry" name="accountCountry"> 
								<option value="" selected="selected">Select</option>
								<option value="Afghanistan" >Afghanistan</option>
								<option value="Albania" >Albania</option>
								<option value="Algeria" >Algeria</option>
								<option value="Andorra" >Andorra</option>
								<option value="Antigua and Barbuda" >Antigua and Barbuda</option>
								<option value="Argentina" >Argentina</option>
								<option value="Armenia" >Armenia</option>
								<option value="Australia" >Australia</option>
								<option value="Austria" >Austria</option>
								<option value="Azerbaijan" >Azerbaijan</option>
								<option value="Bahamas" >Bahamas</option>
								<option value="Bahrain" >Bahrain</option>
								<option value="Bangladesh" >Bangladesh</option>
								<option value="Barbados" >Barbados</option>
								<option value="Belarus" >Belarus</option>
								<option value="Belgium" >Belgium</option>
								<option value="Belize" >Belize</option>
								<option value="Benin" >Benin</option>
								<option value="Bhutan" >Bhutan</option>
								<option value="Bolivia" >Bolivia</option>
								<option value="Bosnia and Herzegovina" >Bosnia and Herzegovina</option>
								<option value="Botswana" >Botswana</option>
								<option value="Brazil" >Brazil</option>
								<option value="Brunei" >Brunei</option>
								<option value="Bulgaria" >Bulgaria</option>
								<option value="Burkina Faso" >Burkina Faso</option>
								<option value="Burundi" >Burundi</option>
								<option value="Cambodia" >Cambodia</option>
								<option value="Cameroon" >Cameroon</option>
								<option value="Canada" >Canada</option>
								<option value="Cape Verde" >Cape Verde</option>
								<option value="Central African Republic" >Central African Republic</option>
								<option value="Chad" >Chad</option>
								<option value="Chile" >Chile</option>
								<option value="China" >China</option>
								<option value="Colombia" >Colombia</option>
								<option value="Comoros" >Comoros</option>
								<option value="Congo" >Congo</option>
								<option value="Costa Rica" >Costa Rica</option>
								<option value="Côte d'Ivoire" >Côte d'Ivoire</option>
								<option value="Croatia" >Croatia</option>
								<option value="Cuba" >Cuba</option>
								<option value="Cyprus" >Cyprus</option>
								<option value="Czech Republic" >Czech Republic</option>
								<option value="Denmark" >Denmark</option>
								<option value="Djibouti" >Djibouti</option>
								<option value="Dominica" >Dominica</option>
								<option value="Dominican Republic" >Dominican Republic</option>
								<option value="East Timor" >East Timor</option>
								<option value="Ecuador" >Ecuador</option>
								<option value="Egypt" >Egypt</option>
								<option value="El Salvador" >El Salvador</option>
								<option value="Equatorial Guinea" >Equatorial Guinea</option>
								<option value="Eritrea" >Eritrea</option>
								<option value="Estonia" >Estonia</option>
								<option value="Ethiopia" >Ethiopia</option>
								<option value="Fiji" >Fiji</option>
								<option value="Finland" >Finland</option>
								<option value="France" >France</option>
								<option value="Gabon" >Gabon</option>
								<option value="Gambia" >Gambia</option>
								<option value="Georgia" >Georgia</option>
								<option value="Germany" >Germany</option>
								<option value="Ghana" >Ghana</option>
								<option value="Greece" >Greece</option>
								<option value="Grenada" >Grenada</option>
								<option value="Guatemala" >Guatemala</option>
								<option value="Guinea" >Guinea</option>
								<option value="Guinea-Bissau" >Guinea-Bissau</option>
								<option value="Guyana" >Guyana</option>
								<option value="Haiti" >Haiti</option>
								<option value="Honduras" >Honduras</option>
								<option value="Hong Kong" >Hong Kong</option>
								<option value="Hungary" >Hungary</option>
								<option value="Iceland" >Iceland</option>
								<option value="India" >India</option>
								<option value="Indonesia" >Indonesia</option>
								<option value="Iran" >Iran</option>
								<option value="Iraq" >Iraq</option>
								<option value="Ireland" >Ireland</option>
								<option value="Israel" >Israel</option>
								<option value="Italy" >Italy</option>
								<option value="Jamaica" >Jamaica</option>
								<option value="Japan" >Japan</option>
								<option value="Jordan" >Jordan</option>
								<option value="Kazakhstan" >Kazakhstan</option>
								<option value="Kenya" >Kenya</option>
								<option value="Kiribati" >Kiribati</option>
								<option value="North Korea" >North Korea</option>
								<option value="South Korea" >South Korea</option>
								<option value="Kuwait" >Kuwait</option>
								<option value="Kyrgyzstan" >Kyrgyzstan</option>
								<option value="Laos" >Laos</option>
								<option value="Latvia" >Latvia</option>
								<option value="Lebanon" >Lebanon</option>
								<option value="Lesotho" >Lesotho</option>
								<option value="Liberia" >Liberia</option>
								<option value="Libya" >Libya</option>
								<option value="Liechtenstein" >Liechtenstein</option>
								<option value="Lithuania" >Lithuania</option>
								<option value="Luxembourg" >Luxembourg</option>
								<option value="Macedonia" >Macedonia</option>
								<option value="Madagascar" >Madagascar</option>
								<option value="Malawi" >Malawi</option>
								<option value="Malaysia" >Malaysia</option>
								<option value="Maldives" >Maldives</option>
								<option value="Mali" >Mali</option>
								<option value="Malta" >Malta</option>
								<option value="Marshall Islands" >Marshall Islands</option>
								<option value="Mauritania" >Mauritania</option>
								<option value="Mauritius" >Mauritius</option>
								<option value="Mexico" >Mexico</option>
								<option value="Micronesia" >Micronesia</option>
								<option value="Moldova" >Moldova</option>
								<option value="Monaco" >Monaco</option>
								<option value="Mongolia" >Mongolia</option>
								<option value="Montenegro" >Montenegro</option>
								<option value="Morocco" >Morocco</option>
								<option value="Mozambique" >Mozambique</option>
								<option value="Myanmar" >Myanmar</option>
								<option value="Namibia" >Namibia</option>
								<option value="Nauru" >Nauru</option>
								<option value="Nepal" >Nepal</option>
								<option value="Netherlands" >Netherlands</option>
								<option value="New Zealand" >New Zealand</option>
								<option value="Nicaragua" >Nicaragua</option>
								<option value="Niger" >Niger</option>
								<option value="Nigeria" >Nigeria</option>
								<option value="Norway" >Norway</option>
								<option value="Oman" >Oman</option>
								<option value="Pakistan" >Pakistan</option>
								<option value="Palau" >Palau</option>
								<option value="Panama" >Panama</option>
								<option value="Papua New Guinea" >Papua New Guinea</option>
								<option value="Paraguay" >Paraguay</option>
								<option value="Peru" >Peru</option>
								<option value="Philippines" >Philippines</option>
								<option value="Poland" >Poland</option>
								<option value="Portugal" >Portugal</option>
								<option value="Puerto Rico" >Puerto Rico</option>
								<option value="Qatar" >Qatar</option>
								<option value="Romania" >Romania</option>
								<option value="Russia" >Russia</option>
								<option value="Rwanda" >Rwanda</option>
								<option value="Saint Kitts and Nevis" >Saint Kitts and Nevis</option>
								<option value="Saint Lucia" >Saint Lucia</option>
								<option value="Saint Vincent and the Grenadines" >Saint Vincent and the Grenadines</option>
								<option value="Samoa" >Samoa</option>
								<option value="San Marino" >San Marino</option>
								<option value="Sao Tome and Principe" >Sao Tome and Principe</option>
								<option value="Saudi Arabia" >Saudi Arabia</option>
								<option value="Senegal" >Senegal</option>
								<option value="Serbia and Montenegro" >Serbia and Montenegro</option>
								<option value="Seychelles" >Seychelles</option>
								<option value="Sierra Leone" >Sierra Leone</option>
								<option value="Singapore" >Singapore</option>
								<option value="Slovakia" >Slovakia</option>
								<option value="Slovenia" >Slovenia</option>
								<option value="Solomon Islands" >Solomon Islands</option>
								<option value="Somalia" >Somalia</option>
								<option value="South Africa" >South Africa</option>
								<option value="Spain" >Spain</option>
								<option value="Sri Lanka" >Sri Lanka</option>
								<option value="Sudan" >Sudan</option>
								<option value="Suriname" >Suriname</option>
								<option value="Swaziland" >Swaziland</option>
								<option value="Sweden" >Sweden</option>
								<option value="Switzerland" >Switzerland</option>
								<option value="Syria" >Syria</option>
								<option value="Taiwan" >Taiwan</option>
								<option value="Tajikistan" >Tajikistan</option>
								<option value="Tanzania" >Tanzania</option>
								<option value="Thailand" >Thailand</option>
								<option value="Togo" >Togo</option>
								<option value="Tonga" >Tonga</option>
								<option value="Trinidad and Tobago" >Trinidad and Tobago</option>
								<option value="Tunisia" >Tunisia</option>
								<option value="Turkey" >Turkey</option>
								<option value="Turkmenistan" >Turkmenistan</option>
								<option value="Tuvalu" >Tuvalu</option>
								<option value="Uganda" >Uganda</option>
								<option value="Ukraine" >Ukraine</option>
								<option value="United Arab Emirates" >United Arab Emirates</option>
								<option value="United Kingdom" >United Kingdom</option>
								<option value="United States" >United States</option>
								<option value="Uruguay" >Uruguay</option>
								<option value="Uzbekistan" >Uzbekistan</option>
								<option value="Vanuatu" >Vanuatu</option>
								<option value="Vatican City" >Vatican City</option>
								<option value="Venezuela" >Venezuela</option>
								<option value="Vietnam" >Vietnam</option>
								<option value="Yemen" >Yemen</option>
								<option value="Zambia" >Zambia</option>
								<option value="Zimbabwe" >Zimbabwe</option>						
							</select>
						</fieldset>
						
						<fieldset>
							<label for="accountAddress">Address<span>*</span>:</label>					
							<input id="accountAddress" name="accountAddress" class="" value="" type="text">
						</fieldset>
						
						<fieldset>
							<label for="accountCity">City<span>*</span>:</label>
							<input id="accountCity" name="accountCity" class="" value="" type="text">
						</fieldset>
						
						<fieldset>					
							<label for="accountState">State/Province<span>*</span>:</label>
							<input id="accountState" name="accountState" class="" value="" type="text">
						</fieldset>
						
						<fieldset>
							<label for="accountPostalCode">Postal Code<span>*</span>:</label>
							<input id="accountPostalCode" name="accountPostalCode" class="" maxlength="15" value="" type="text">
						</fieldset>
						
						<fieldset>
							<label for="accountPhoneNumber">Phone Number<span>*</span>:</label>					
							<input id="accountPhoneNumber" name="accountPhoneNumber" class="" maxlength="20" value="" type="text">
						</fieldset>
					</fieldset>
					
					<fieldset class="account_block_last">
						<input id="accountAgree" name="accountAgree" class="agree_check" type="checkbox" value="" />
						<label class="agree_check_label">I have read and agree to <a href="supplementalterms.html">Confidentiality and Non-Disclosure Agreement</a><span>*</span></label>
					</fieldset>
					
					<div class="buttons_container">					
						<a href="#">Cancel</a>
						<input type="submit" id="saveForm" value="Save" class="button_gen corner_4" />
					</div>
				</form>
			</div>
		</div>
		<!-- /Main Content -->
		
		
		
	</div>


	<script type="text/javascript">
  	$(document).ready(function(){ 	
  		/* Tooltips */
  		$("a[title]").tooltip({
  			delay: 10,
  			offset: [20, 71],
  			onBeforeShow: function(toolTipEvent, toolTipPosition) {
  			  this.getTip().css({'z-index':'9000'});
  			}
  		});

  		/* IE7 Z-Index + Expose bug fix */
  		var zIndexNumber = 1000;
  		$('div').each(function() {
  			$(this).css('zIndex', zIndexNumber);
  			zIndexNumber -= 10;
  		});
		
		/* jQuery overlay append */
		var overlayHeight = $(document).height();
		var overlayHTML = "<div class='container_fullscreen' style='height:" + overlayHeight + "px;'>&nbsp;</div>";
		$('body').append(overlayHTML);
  		
  		/* Clear Form Data */
  		$("#saveForm").attr('disabled', 'disabled');
    	$("#saveForm").addClass("button_disabled");
  		$("#accountEmail").val("");
  		$("#accountPassword").val("");
  		$("#accountPasswordConfirm").val("");
  		$("#individual_user").attr("checked", false);
  		$("#company_user").attr("checked", false);
  		$("#accountFirstName").val("");
  		$("#accountLastName").val("");
  		$("#accountNickname").val("");
  		$("#accountCompanyName").val("");
  		$("#accountCompanyDisplayName").val("");
  		$("#accountCompanyWebsite").val("http://");
  		$("#accountCountry").val("Select");
  		$("#accountAddress").val("");
  		$("#accountCity").val("");
  		$("#accountState").val("");
  		$("#accountPostalCode").val("");
  		$("#accountPhoneNumber").val("");
  		$("#accountAgree").attr("checked", false);

      /* Button disabling/enabling */
      var flag_email = false;
      var flag_password = false;
      var flag_confirm = false;
      var flag_user = false;
      var flag_first = false;
      var flag_last = false;
      var flag_company = false;
      var flag_country = false;
      var flag_address = false;
      var flag_city = false;
      var flag_state = false;
      var flag_zip = false;
      var flag_phone = false;
      var flag_accept = false;

      function changeButtonStatus() {
        if (flag_email && flag_password && flag_confirm && flag_user && flag_first && flag_last && flag_company && flag_country && flag_address && flag_city && flag_state && flag_zip && flag_phone && flag_accept) {
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
      
      $("#accountEmail").keyup(function() {
        changeFlag($(this), "flag_email");
      });
  		$("#accountPassword").keyup(function() {
        changeFlag($(this), "flag_password");
      });
  		$("#accountPasswordConfirm").keyup(function() {
        changeFlag($(this), "flag_confirm");
      });
      $("input[name='accountUserType']").change(function() {
        changeFlag($(this), "flag_user");
      });
  		$("#accountFirstName").keyup(function() {
        changeFlag($(this), "flag_first");
      });
  		$("#accountLastName").keyup(function() {
        changeFlag($(this), "flag_last");
      });
  		$("#accountCompanyName").keyup(function() {
        changeFlag($(this), "flag_company");
      });
  		$("#accountCountry").change(function() {
        changeFlag($(this), "flag_country");
      });
  		$("#accountAddress").keyup(function() {
        changeFlag($(this), "flag_address");
      });
  		$("#accountCity").keyup(function() {
        changeFlag($(this), "flag_city");
      });
  		$("#accountState").change(function() {
        changeFlag($(this), "flag_state");
      });
  		$("#accountPostalCode").keyup(function() {
        changeFlag($(this), "flag_zip");
      });
  		$("#accountPhoneNumber").keyup(function() {
        changeFlag($(this), "flag_phone");
      });
  		$("#accountAgree").change(function() {
        changeFlag($(this), "flag_accept");
      });
      
      /* Validation */    
      jQuery.validator.addMethod("zip", function(value, element) {
        if ($("#accountCountry").val() === "United States")
          return (value.length <= 5 && /\d{5}/.test(value));
        return true;  
      }, "");
      
      $("#form_33721").validate({
        onfocusout: false,
        onkeyup: false,
        onclick: false,
        focusInvalid: false,
        errorLabelContainer: ".error_messages",
        errorElement: "span",
        submitHandler: function() {
          $("#saveForm").attr('disabled', 'disabled');
        	$("#saveForm").addClass("button_disabled");
          location.href='publisheragreement.html';
        },
        invalidHandler: function(form, validator) {
          validator.showErrors(); // Add error class to invalid fields
          $('label').removeClass("error-label"); // Remove all previous error labels

          $('.error').each(function() { // Add 'error-label' class to labels of invalid fields
            if ($(this).attr("type") === "radio") // Highlight group label of radio buttons
              $('label[for='+$(this).attr('name')+']').addClass("error-label");
            else
              $('label[for='+$(this).attr('id')+']').addClass("error-label");
          });

          $('label').each(function() { // Cleanup and remove 'error-label' from labels that are not associated with a field
            if ($(this).attr('for') == "")
              $(this).removeClass("error-label");
          });
          window.scrollTo(0,0);
        },
        rules: {
          accountEmail: {
            required: true,
            email: true
          },
          accountPassword: {
            required: true,
            password: true
          },
          accountPasswordConfirm: {
            required: true,
            equalTo: "#accountPassword"
          },
          accountUserType: {
            required: true
          },
          accountFirstName: {
            required: true
          },
          accountLastName: {
            required: true
          },
          accountCompanyName: {
            required: true,
            maxlength: 240
          },
          accountCompanyDisplayName: {
            maxlength: 240
          },
          accountCompanyWebsite: {
            defaultUrl: true
          },
          accountCountry: {
            required: true
          },
          accountAddress: {
            required: true
          },
          accountCity: {
            required: true
          },
          accountState: {
            required: true
          },
          accountPostalCode: {
            required: true,
            zip: true
          },
          accountPhoneNumber: {
            required: true
          },
          accountAgree: {
            required: true
          }
        },
        messages: {
          accountEmail: {
            required: "Please enter a valid email. ",
            email: "Please enter a valid email. "
          },
          accountPassword: {
            required: "Please enter a valid password. ",
            password: "Password must contain a minimum of 8 characters with 1 capital letter and 1 number. "
          },
          accountPasswordConfirm: {
            required: "Please confirm your password. ",
            equalTo: "Please correctly confirm your password. "
          },
          accountUserType: {
            required: "Please select a user type. "
          },
          accountFirstName: {
            required: "Please enter a valid first name. "
          },
          accountLastName: {
            required: "Please enter a valid last name. "
          },
          accountCompanyName: {
            required: "Please enter a valid company name. ",
            maxlength: "Please enter a valid company name. "
          },
          accountCompanyDisplayName: {
            maxlength: "Please enter a valid company display name. "
          },
          accountCompanyWebsite: {
            url: "Please enter a valid url. "
          },
          accountCountry: {
            required: "Please select a country. "
          },
          accountAddress: {
            required: "Please enter a valid address. "
          },
          accountCity: {
            required: "Please enter a valid city. "
          },
          accountState: {
            required: "Please enter a valid state or province. "
          },
          accountPostalCode: {
            required: "Please enter a valid postal code. ",
            zip: "Please enter a valid postal code. "
          },
          accountPhoneNumber: {
            required: "Please enter a valid phone number. "
          },
          accountAgree: {
            required: "Please accept the agreement. "
          }
        }
      });	  	  	
	  
  	});

  </script>	
	
</body>
</html>
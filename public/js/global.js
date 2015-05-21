
var baseUrl = 'http://localhost/';

var publisherId = '10000';

//QCPortal currently pointing to partner...will change to admin when the path is ready
//ProxyPass /admin/ http://p2-cint.qualcomm.com/plaza/admin/
var adminApp = '/admin/rs/v1'; 

//PPortal
//ProxyPass /partner/ http://p2-cint.qualcomm.com/plaza/partner/
var partnerApp = '/partner/rs/v1';
//var partnerApp = '/admin/rs/v1';

function urlAfter(s,after)
	{
	// takes a url as retrieved from the API (s) and returns the portion after the found string (after)

	var str = String(s);
	var aft = String(after)
	return str.slice(str.indexOf(aft)+aft.length);

	}

function urlAfterInclusive(s,after)
	{
	// takes a url as retrieved from the API (s) and returns the portion after the found string (after)

	var str = String(s);
	var aft = String(after)
	return str.slice(str.indexOf(aft));

	}


function getPublisherId()
	{
	if($.cookie("publisher_id"))
		{
		return $.cookie("publisher_id")
		}
	else
		{
		return publisherId;
		}
	}

function getBaseURL()
	{
	if($.cookie("base_url"))
		{
		return $.cookie("base_url")
		}
	else
		{
		return baseUrl;
		}
	}

function getPartnerAppURL()
	{

	return partnerApp;
	}

function getAdminAppURL()
	{
	return adminApp;
	}


function isRole(r) // check for a single role
	{	
	
	// POSSIBLE ROLES:

	// ROLE_PUBLISHER
	// ROLE_QC_ADMIN
	// ROLE_PUBLISHER_FINANCE
	// ROLE_QC_APPSIGN
	// ROLE_QC_REVIEW
	// ROLE_PUBLISHER_ADMIN
	// ROLE_QC_TASK_SUPER
	// ROLE_PUBLISHER_LEGAL
	// ROLE_QC_TEST


	var auth = String($.cookie("authorities"));

	if(auth.toUpperCase.indexOf(String(r).toUpperCase()) == -1)
		{
		return false;
		}
	else
		{
		return true;
		}
	}
	
  function formatDate(milliseconds) {
    var date = new Date(milliseconds);
    var month = (date.getMonth() < 10) ? '0' + date.getMonth().toString() : date.getMonth();
    var day = (date.getDay() < 10) ? '0' + date.getDay().toString() : date.getDay();
    var year = date.getFullYear();
    
    return (month + '/' + day + '/' + year);
  }

function isAnyRole(r) // check multiple roles, return if any match
	{	
	var i;
	for(i in r)	
		{
		var auth = String($.cookie("authorities"));
	
		if(auth.toUpperCase.indexOf(String(r[i]).toUpperCase()) != -1)
			{
			return true;
			}
		}
	return false;
	}

function isAllRoles(r) // check multiple roles, return if all match
	{	
	var i;
	for(i in r)	
		{
		var auth = String($.cookie("authorities"));
	
		if(auth.toUpperCase.indexOf(String(r[i]).toUpperCase()) == -1)
			{
			return false;
			}
		}
	return true;
	}



/* jQuery ::: Dependencies: jquery.min.js */
$(document).ready(function(){
  
  /* Validation */    
	jQuery.validator.addMethod("tags", function(value, element) {
    return (value.split(",").length <= 10);  
  }, "");
  
  jQuery.validator.addMethod("defaultInvalid", function(value, element) {
    return (value != element.defaultValue);
  }, "");
  
  jQuery.validator.addMethod("password", function(value, element) {
  	return (value.length >= 8 && /\d/.test(value) && /[A-Z]/.test(value));
  }, "");
  
  jQuery.validator.addMethod("defaultUrl", function(value, element) {
    if (value.length == 0 || value === "http://")
      return true;
      
    // contributed by Scott Gonzalez: http://projects.scottsplayground.com/iri/
    return this.optional(element) || /^(https?|ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i.test(value);
  }, "");
  
	/* jQuery global footer append */		
	var footerHTML = 
		"<ul class='footer_container'>"+
		"<li><a href='support.html'>Support</a></li>"+
		"<li><a href='help.html'>Help</a></li>"+
		"<li><a href='http://www.qualcomm.com/corporate_information/legal/' target='_blank'>Terms of Service</a></li>"+
		"<li><a href='http://www.qualcomm.com/corporate_information/privacy/' target='_blank'>Privacy Policy</a></li>"+
		"<li class='last'>&copy; <strong>2010 Qualcomm</strong>. All Rights Reserved.</li>"+
		"</ul>";
	$('#wrapper').append(footerHTML);
	
	/* jQuery overlay append IF ".overlay" exists, append shade over rest of page */
	if ($('.overlay').length) {
		var overlayHeight = $(document).height();
		var overlayHTML = "<div class='container_fullscreen' style='height:" + overlayHeight + "px;'>&nbsp;</div>";
		$('body').append(overlayHTML);
	}
});

/* Confirm & Redirect Popup */
function confirmRedirect(confirmMessage , newUrl /* "newurl" is optional */) {
	var overlayShadeHeight = $(document).height();
	var overlayShade = '<div class="container_fullscreen" style="height:' + overlayShadeHeight + 'px;">&nbsp;</div>';
	var overlay = '<div class="overlay" id="confirm">' + confirmMessage + '</div>';
	$('body').append(overlayShade);
	$('#wrapper').append(overlay);
	
	//center vertically in window
	overlay = $('#confirm');
	overlayHeight = overlay.height();
	overlay.css('top', (overlayShadeHeight - overlayHeight) / 2);

	//redirect if "newurl" supplied
	if (newUrl != "noRedirect") {
		var t = setTimeout('document.location.href="' + newUrl + '"' , 3000);
	} else {
		$('<div class="ok"><input type="button" value="OK" /></div>').appendTo(overlay);
	}
}
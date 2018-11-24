function validateForm(){
	var username=document.getElementById("Username").value;
	var email=document.getElementById("Email").value;
	var password= document.getElementById("Password").value;

	if (username=="" && email=="" && password=="" ){

	var usererror=document.getElementById('userError').innerHTML="Username cant be empty";
	var emailerror=document.getElementById('emailError').innerHTML="Email cant be empty";
	var passworderror=document.getElementById('passwordError').innerHTML="Password cant be empty";

	}
	else{
	var usererror=document.getElementById('userError').innerHTML="";
	var emailerror=document.getElementById('emailError').innerHTML="";
	var passworderror=document.getElementById('passwordError').innerHTML="";

	}
	if (username=="") {
	var usererror=document.getElementById('userError').innerHTML="Username cant be empty";

	}
	else{
	var usererror=document.getElementById('userError').innerHTML="";

	}

	if (email=="") {
	var usererror=document.getElementById('emailError').innerHTML="Email cant be empty";

	}
	else{
	var emailerror=document.getElementById('emailError').innerHTML="";

	}
	if (password=="") {
	var usererror=document.getElementById('passwordError').innerHTML="password cant be empty";

	}
	else{
	var emailerror=document.getElementById('passwordError').innerHTML="";

	}


}
	



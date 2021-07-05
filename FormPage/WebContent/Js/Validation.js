function buttonVisibility(btn_name, btn_visibility) {
		if (btn_visibility == false || btn_visibility == 0)
			document.getElementById(btn_name).disabled = "true";
		else if (btn_visibility == true || btn_visibility == 1)
			document.getElementById(btn_name).disabled = "";
	}
	function checkFname() {
		var f = document.LoginPage.firstName.value;
		var reg = /^[A-Za-z]+$/;
//		var reg="^(?=.*[0-9])"
//            + "(?=.*[a-z])(?=.*[A-Z])"
//            + "(?=.*[@#$%^&+=])"
//            + "(?=\\S+$).{8,20}$";
		//var reg=/^.*[0-9].*[a-z]$/;
		if (f == "") {
			document.getElementById("errorFname").innerHTML = "Please enter your firstname";
			buttonVisibility("btn",false);}
		 else if (!reg.test(f))
			document.getElementById("errorFname").innerHTML = "Please enter only alphabets";
		else {
			document.getElementById("errorFname").innerHTML = "";
			buttonVisibility("btn",true);
		}
	}
	function checkLname() {
		var f = document.LoginPage.lastName.value;
		var reg = /^[A-Za-z]+$/;
		if (f == "")
			document.getElementById("errorLname").innerHTML = "Please enter your lastname";
		else if (!reg.test(f))
			document.getElementById("errorLname").innerHTML = "Please enter only alphabets";
		else
			document.getElementById("errorLname").innerHTML = "";
		
	}
	function checkEmail() {
		var f = document.LoginPage.email.value;
		var reg = /^[A-Za-z]+@[A-Za-z]+\.[A-Za-z]{2,4}$/
		if (f == "")
			document.getElementById("errorEmail").innerHTML = "Please enter your email"
		else if (!reg.test(f))
			document.getElementById("errorEmail").innerHTML = "Please enter valid email id";
		else
			document.getElementById("errorEmail").innerHTML = "";
	}
	function checkNumber() {
		var f = document.LoginPage.mobileNumber.value;
		var reg = /^[0-9]{10,12}$/;
		if (f == "")
			document.getElementById("errorNumber").innerHTML = "Please enter your mobile number";
		else if (!reg.test(f))
			document.getElementById("errorNumber").innerHTML = "Please enter valid mobile number";
		else
			document.getElementById("errorNumber").innerHTML = "";
		buttonVisibility("btn",false);
	}
	var flag = true;
	function checkPassword() {
		var password = document.LoginPage.password.value;
		var confirmPassword = document.LoginPage.confirmPassword.value;
		var reg=/^.*[0-9].*[a-z].*[A-Z].*[@!#$%^&*_+~`]$/;
		if (password == "") {
			document.getElementById("errorPassword").innerHTML = "Please enter password";
			flag = true;
		}
		 else if (!reg.test(password))
			 document.getElementById("errorPassword").innerHTML = "Please enter proper password"; 
		else if (!(password == "") && flag) {
			document.getElementById("errorPassword").innerHTML = "";
			flag = !flag;
		} else if ((!(password == "")) && (confirmPassword == "")) {
			//document.getElementById("errorPassword").innerHTML = "";
			document.getElementById("errorConfirmPassword").innerHTML = "please enter password";
		} else if (!(confirmPassword == password) && !(password == ""))
			document.getElementById("errorConfirmPassword").innerHTML = "Both password entered are different";
		else {
			document.getElementById("errorPassword").innerHTML = "";
			document.getElementById("errorConfirmPassword").innerHTML = "";
		}
	}
	function checkEducation()
	{
		var f=document.LoginPage.education.value;
		if(f=="select")
		{
			document.getElementById("errorEducation").innerHTML="Please select your education";
			buttonVisibility("btn",false);
		}
		else {
			document.getElementById("errorEducation").innerHTML="";
			buttonVisibility("btn",true);
		}
		
	}
	
	
	
	
	
	
	
	
	

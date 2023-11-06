function seconnecter(){
	var login = prompt("Donner votre nom d'utilisateur")
	var password = prompt("Entrer votre mot de passe ")
	if (login =="admin" && password=="admin"){
		document.write("Bienvenue : " + login);
	}
	else {
		alert("Accèes refusé")
	}

}

function seconnecter2(){
	var username=document.getElementById('UsernameInput');value;
	var password=document.getElementById('PasswordInput');value;
	if (username==admin && password == "admin"){
		window.location.href="page1.html";
	}else{
		window.location.href="page2.html";

	}
	
}

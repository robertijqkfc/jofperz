function seconnecter(){
	var login = prompt("Donner votre nom d'utilisateur")
	var password = prompt("Entrer votre mot de passe ")
	if (login =="admin" && password=="admin"){
		document.write("Bienvenue : " + login);
	}
	else {
		alert("Accès refusé")
	}
}

function seconnecter_2(){
	window.location.href="page.html";
	var username=document.getElementById('UsernameInput');value;
	var password=document.getElementById('PasswordInput');value;
	if (username==admin && password == "admin"){
		window.location.href="page1.html";
	}
	else{
		window.location.href="page2.html";

	}
}	


function cdc (){
	var chaine = prompt("Donnez un mot");
	document.write(chaine;toUpperCase()+"<br>");
	document.write(chaine;tolowerCase()+"<br>");
	document.write("La chaine contient   "+chaine.length+"caractères" + "<br>");
	document.write("La première lettre est   " + chaine.substr(0,1)+"<br>");
}

function affichagetab(){
	document.write("<table border=2px width=30%");
	for (let i =0 ; i<=5; i++){
		document.write("<tr><td>*</td><td>*</td><td>*</td></tr>")
	}
	document.write('</table>');
}
function affichagetab(){
document.write('<table border=2px width=30%>');
for (let i = 0 ; i <= 5 ; i++){
    document.write('<tr><td>* </td><td>*</td><td>*</td></tr></td></tr>');

}
document.write('</table>');

}

function affichagetab2(){
var count = prompt("Combien de lignes souhaitez vous ?");
document.write('<table border 2px width= 30%');
for (let i = 0; i <= count; i++){
    document.write("<tr><td>"+i+"</td><td>*</td></tr>*</td></tr>");
}
document.write('</table>');


}

function seconnecter(){
var login = prompt("Donnez votre nom d'utilisateur")
var password = prompt("Donnez votre mot de passe")
 if (login == "admin" && password == "admin"){
 document.write('Bienvenue : '  +login)
}
else{
    alert("Accès refusé")
}
}

function seconnecter2(){
    window.location.href='identification.html'
}
function login(){
    var a = document.getElementById("login").value;
    var b = document.getElementById("password").value;
    if (a =="admin" && b == "admin"){
        window.location.href='tp8/page1.html'
    }
    else{
        window.location.href='pt8/page2.html'
       
    }

}

function swich(){
    var color= prompt ("Entrez une couleur");
    switch (color)
    {
    case "rouge" : document.body.style.background = "red";
   break;
   case "ROUGE" : document.body.style.background = "red";
   break;
   case "bleu" : document.body.style.background = "blue";
   break;
   case "BLEU" : document.body.style.background = "blue";
   break;
   case "vert" : document.body.style.background = "green";
   break;
   case "VERT" : document.body.style.background = "green";
   break;
   case "jaune" : document.body.style.background = "yellow";
   break;
   case "JAUNE" : document.body.style.background = "yellow";
   break;
   case "violet" : document.body.style.background = "purple";
   break;
   case "VIOLET" : document.body.style.background = "purple";
   break;
   default:alert("couleur non définie");
   
   
    }

}


function cdc(){
    var chaine = prompt("Donnez un mot");
    document.write(chaine.toUpperCase()+"<br>");
    document.write(chaine.toLowerCase()+"<br>");
    document.write("la chaine contient " + chaine.length+" caractères " + "<br>");
    document.write("la première lettre est " + chaine.substr(0,1)+"<br>");
}



function seconnecter3(){
    var i = 0;
    do {
        var id= prompt("Donner votre nom d'utilisateur");
        var mdp = prompt("Entrez votre mot de passe");
        if (id == "admin" && mdp =="admin")
        {
            document.write("Bienvenue :   " +id);
            break;
        }
        else
        alert("Accès refusé")
    i +=1;
    }while (i<3);
    if (i==3)
    alert("Delai dépassé");
    }




function bonus(){


    var totalf = 0
    var total = ""
    var c = ""

    do {
	    var article = prompt("Votre article")
	    var price = prompt("Le prix ")
	    var quantity = prompt("La quantité")
      
	    alert ("Vos "+article+ "couteront"+price*quantity)
	    total = Number (price)*Number(quantity)
	    totalf = total
	    c+=("Article : " +article+ "<br> Prix : "+price+ "$"+"<br> Quantité : "+quantity+"<br> Total : "+total+"$"+"<br><br><br>")
	    alert("Vos articles additionnés couteront " +totalf+ "$")

	    next=prompt("Voulez-vous continuer (OUI/STOP)?")
	}

while(next!="STOP")

document.write(c)
document.write("Total Final : "+totalf+"$");

}


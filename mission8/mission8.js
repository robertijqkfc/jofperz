function exo0()
	{var test = prompt("Merci d'inscrire une chaine de caractères ?");

     document.body.innerHTML = test;
    }



function exo1(){
	let a = 42;
    let b = 7569;
    let result = a + b;
    alert(result);
}	


function exo2 (){
	let note_maths = 11;
    let note_francais = 9;
    let note_hg = 16;
    let result = note_maths + note_francais + note_hg ;
    alert('La moyenne est de ' + result);
}

function exo3(){
	let budget = 1553.89;
	let achats = 500;
    if(budget >= achats) {
      alert('Le budget (' + budget + ' €) permet de payer tous les achats (' + achats + ' €)');
    }
     else {
       alert('Le budget ne (' + budget + ' €) permet pas de payer tous les achats (' + achats + ' €)');
    }

}

function exo4(){
	let ht = prompt("Veuillez entrer un prix HT");
	let ttc = ht * 1.20;
	document.body.innerText = ttc;
}

function exo5(){
	let ht = prompt("Veuillez entrer un prix HT");
	let tva =prompt("Veuillez entrer un taux de la TVA")
	let tva_calcul = (tva / 100) + 1;
	let ttc = ht * tva;
	document.body.innerText = ttc;
}

function exo6(){
	let ht = prompt(" Veuillez entrer un prix HT");
	let tva = ("Veuillez entrer le taux de la TVA");
	let tva_calcul = (tva / 100) + 1;
	let ttc = ht * tva_calcul
	document.body.innerHTML
	if (ttc > 100) {
		document.body.innerHTML = '<h1 style ="color: red;">' + ttc + '</h1>';
	}
	else{
		document.body.innerHTML = '<h1 style ="color: green;">' + ttc + '</h1>'
	}
}


function exo7(){
	
	document.getElementById("cocktail").innerText = " Long Island Iced Tea ";
}



function exo8(){
    for(let i=10;i<=1000;i+=10){console.log(i);}
	alert("voir la console");
}

function exo9(){
	var age = prompt("Veuillez entrer votre âge svp");
	if (age >= 18){
		alert("Vous êtes majeur .");
	}else{
		alert("Vous êtes mineur .");
	}
}

 
function exo10(){let cp=77000;
    while(cp<=77999) {
       console.log(cp);
       cp++;}
	   alert("Voir la console")
	}


function exo11(){let n=5;
    let html='';
    for(let i=1;i<=10;i++){
       html=html+n+' x '+i+' = '+(n*i)+' <br />';}
    document.body.innerHTML=html;}

	function exo12(){let html='';
    for(let i=1;i<=5;i++){
        for(let k=1;k<=i;k++){
        html=html+i;}
        html=html+'<br />';}
    document.body.innerHTML=html;}

	function exo13(){let html='';
    let k=0;
    while(k<=20){
        html=html+k+'<br />';
        k=k+2;}
    document.body.innerHTML=html;}

	

function exo14(){
	let tableau = '<table>';
    let lignes = 5;
    let colonnes = 3;

for(let i = 1;i <= lignes;i++) {
   tableau = tableau + '<tr>';
   for(let k = 1;k <= colonnes;k++) {
      tableau = tableau + '<td>yolo</td>';
   }
   tableau = tableau + '</tr>';
}
tableau = tableau + '</table>';
document.body.innerHTML = tableau;
	
}

function exo15(){
	let lignes = prompt("Nombre de lignes ?");
    let colonnes = prompt("Nombre de colonnes ?");
     let tableau = '<table>';

    for(let i = 1;i <= lignes;i++) {
       tableau = tableau + '<tr>';
       for(let k = 1;k <= colonnes;k++) {
      tableau = tableau + '<td>yolo</td>';
   }
   tableau = tableau + '</tr>';
}
tableau = tableau + '</table>';
document.body.innerHTML = tableau;


    
}

function exo16(){
	let html = "<ul>";
	for ( let i = 0 ; i<11; i++ ){
		html = html + "<li>" + Math.floor(Math.random()*100) + "</li>";
	}
	html = html + "</ul>";
	document.body.innerHTML = html;

	}

	Math.floor(Math.random()*100);



function exo17(){
	let html = '<ul>';
let nalea = 10;
for(let i = 0;i < nalea;i++) {
   let tmp = Math.floor(Math.random() * 11);
   if(tmp == 10) {
      console.log('Le nombre 10 fait parti du tirage.');
   }
   html = html + '<li>' + tmp + '</li>';
}
html = html + '</ul>';
document.body.innerHTML = html;

}

function exo18(){
let html = '<ul>';
let nalea = 10;
let nalea10 = 0;
for(let i = 0;i < nalea;i++) {
   let tmp = Math.floor(Math.random() * 11);
   if(tmp == 10) {
      nalea10++;
   }
   html = html + '<li>' + tmp + '</li>';
}
html = html + '</ul>';
html = html + '<p>Il y a eu ' + nalea10 + ' tirages de 10.</p>'
document.body.innerHTML = html;
}

function exo19(){
let r = Math.floor(Math.random() * 256);
let g = Math.floor(Math.random() * 256);
let b = Math.floor(Math.random() * 256);
let color = "rgb(" + r + ", " + g + ", " + b + ")";
document.body.style.background = color;
}


function valider(){
 var a =document.getElementById(string).value;
 var b =document.getElementById(caractere).value;
 var longueur=a.length;
 var majuscule=a.toUpperCase();
 if (a.includes(b)){
    alert("La valeur de la longueur du string est de :"  +longueur+ "La valeur en majuscule du string est : " +majuscule+)
  }
}











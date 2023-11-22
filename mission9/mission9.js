function calculer()
 {
 	var a = document.getElementById("p1").value;
 	var b = document.getElementById("q1").value;
 	var c = Number(a)*Number(b);
 	r1.value = c;
 	var d = document.getElementById("p2").value;
 	var e = document.getElementById("q2").value;
 	var f = Number(d)*Number(e);
 	r2.value = f;
 	var g = document.getElementById("p3").value;
 	var h = document.getElementById("q3").value;
 	var i = Number (g)*Number (h);
 	r3.value = i;

 	var j = Number (c)+Number(f)+Number(i)
 	r4.value = j;
 }

 

 
function remplir (){
	p1.value=Math.floor(Math.random()*10);
	q1.value=Math.floor(Math.random()*10);
	p2.value=Math.floor(Math.random()*10);
	q2.value=Math.floor(Math.random()*10);
	p3.value=Math.floor(Math.random()*10);
	q3.value=Math.floor(Math.random()*10);
}


function ajouter_ligne(){
	var table = document.getElementById("myTable");
	var row = table.insertRow(-1);
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);


	cell1.innerHTML = "enter a text :";
	cell2.innerHTML = "enter a number : ";
	cell3.innerHTML = "enter a number :";
	cell4.innerHTML = "enter a number :";
}

 function reinitialiser(){
 	window.location.reload();
 }









 
function resultado() {
    var p1, p2, p3, p4, p5, nota;
    
    var form = document.getElementById("cuestionario");
        

    // 1a pregunta
    if (document.getElementById('p11').checked===true) {p1=1}
    else {p1=0}
    // 2a pregunta
    if (document.getElementById('p23').checked===true) {p2=1}
    else {p2=0}
    // 3a pregunta
    if (document.getElementById('p31').checked===true) {p3=1}
    else {p3=0}
    // 4a pregunta
    if (document.getElementById('p43').checked===true) {p4=1}
    else {p4=0}
    // 5a pregunta
    if (document.getElementById('p51').checked===true) {p5=1}
    else {p5=0}

    
    
    nota=p1+p2+p3+p4+p5;
        
    
    var resultado = document.getElementById("nota");
        resultado.value = nota;
    
    if (nota <= 3 ){
        alert(" Venga, intentalo de nuevo\nPuntuacion:: " + nota);
        location.reload('Climatico3.jsp');
    }else{
         alert("Felicidades\nPuntuacion:: " + nota);
        form.submit();
    }
    
         
   
    
}
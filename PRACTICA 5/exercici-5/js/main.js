var app={};

var monCallback = function(dades){
    console.log(dades);
    app.offices = dades;
    var html="";
    html+="<h1 class='title'>Oficines</h1>";
 

    app.offices.map(function(office) {

    // Encabezado azul de la ciudad
    html += "<div class='office-header'>" + office.city + "</div>";

    // Contenedor del contenido
    html += "<div class='office-content'>";

    // Imagen
    html += "<img class='office-photo' src='" + office.picture + "' />";

    // Contenedor de la información
    html += "<div class='office-data'>";
    html += "<table class='office-table'>";

    html += "<tr><td><strong class='label'>Telèfon:</strong></td><td> " + office.phone + "</td></tr>";

    if (office.addressLine1 && office.addressLine2) {  
        html += 
            "<tr><td><strong class='label'>Direcció:</strong></td><td> " +
            office.addressLine1 + ', ' +
            office.addressLine2 +"</td></tr>"
            ;
    }else if(office.addressLine1){
        html += "<tr><td><strong class='label'>Direcció:</strong></td><td> " + office.addressLine1 +"</td></tr>";
    }

    if (office.state) {
        html += "<tr><td><strong class='label'>Estat:</strong></td><td> " + office.state + "</td></tr>";
    }

    html += "<tr><td><strong class='label'>País:</strong></td><td> " + office.country + "</td></tr>";
    html += "</table>";  // office-data-table
    html += "</div>";  // office-data
    html += "</div>";  // office-content
});
    document.getElementById("results").innerHTML=html;
};
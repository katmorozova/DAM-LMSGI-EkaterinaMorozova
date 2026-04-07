let $nl := "&#10;"
let $empleats := count(collection("CLASSICMODELS_BD")//employee)
let $clients := count(collection("CLASSICMODELS_BD")//customers/customer)
let $checks := count(collection("CLASSICMODELS_BD")//check)
return concat(
  "Número d'empleats: ", $empleats, $nl,
  "Número de clients: ", $clients, $nl,
  "Número de xecs: ", $checks
)





for $c in collection("CLASSICMODELS_BD")//check[
    customer/@customerNumber =
        (collection("CLASSICMODELS_BD")//customer[customerName = "Atelier graphique"]/@customerNumber)
]
return $c/@number








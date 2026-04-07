let $ids := ("103", "112")
for $c in collection("CLASSICMODELS_BD")//check
where $c/customer/@customerNumber = $ids
order by $c/@number
return $c/@number









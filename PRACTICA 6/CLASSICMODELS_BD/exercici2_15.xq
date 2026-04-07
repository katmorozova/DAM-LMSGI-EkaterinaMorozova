let $emps :=
  for $e in collection("CLASSICMODELS_BD")//employee
  where $e/lastName = ("Fixter", "King")
  return $e/@employeeNumber

let $clients :=
  for $c in collection("CLASSICMODELS_BD")//customer
  where $c/salesRepEmployeeNumber = $emps
  return $c/@customerNumber

for $p in collection("CLASSICMODELS_BD")//check[customer/@customerNumber = $clients]
order by xs:decimal($p/amount) descending
return concat(
  "ID: ", $p/@number,
  ", Quantitat: ", $p/amount
)

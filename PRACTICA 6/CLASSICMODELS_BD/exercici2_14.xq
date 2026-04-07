let $ids :=
  for $c in collection("CLASSICMODELS_BD")//customer
  where $c/contact/contactLastName = ("King", "Schmitt")
  return $c/@customerNumber

for $p in collection("CLASSICMODELS_BD")//check[customer/@customerNumber = $ids]
order by xs:decimal($p/amount) descending
return $p/amount










let $avg := avg(collection("CLASSICMODELS_BD")//amount/xs:decimal(.))
for $c in collection("CLASSICMODELS_BD")//check[amount/xs:decimal(.) > $avg]
order by xs:decimal($c/amount) descending
return concat(
  "Compte: ", $c/@number,
  ", Import: ", $c/amount,
  ", Client: ", $c/customer/customerName
)




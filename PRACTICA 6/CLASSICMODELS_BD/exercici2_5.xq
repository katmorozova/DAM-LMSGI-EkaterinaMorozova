let $avg := avg(/payments/check/amount/xs:decimal(.))
for $c in /payments/check[amount/xs:decimal(.) > $avg]
order by $c/@number
return $c/@number/string()


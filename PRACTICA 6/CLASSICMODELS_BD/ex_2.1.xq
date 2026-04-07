for $c in /customers/customer
where $c/creditLimit != "NULL"
      and xs:decimal($c/creditLimit) >= 1160
      and xs:decimal($c/creditLimit) <= 1165
return $c/customerName/text()

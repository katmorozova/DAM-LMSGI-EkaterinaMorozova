count(
  for $c in /customers/customer
  where $c/creditLimit != "NULL"
        and xs:decimal($c/creditLimit) > 1600
  return $c
)


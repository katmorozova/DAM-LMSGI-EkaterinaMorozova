xs:double(
  sum(
    for $p in /payments/check
    where $p/customer/salesRepEmployeeNumber = 1370
    return xs:decimal($p/amount)
  )
)



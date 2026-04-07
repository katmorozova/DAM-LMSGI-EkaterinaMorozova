round(
  avg(
    for $p in collection("CLASSICMODELS_BD")//amount
    return xs:decimal($p)
  )
)



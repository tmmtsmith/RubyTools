## Terminal issues (1 Succ, 1 Fail)
## From CG

$p = ([*?!..?~]*15).sample(15)*''until~/\d/&&~/[a-z]/&&~/[A-Z]/&&~/\W|_/
$p.to_s
print $p

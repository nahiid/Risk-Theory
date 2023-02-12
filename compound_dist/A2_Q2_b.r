
 Xdictionary <- list(key1 = 0.2, key2 = 0.5, key3 = 0.3)

names( Xdictionary) <- c("0", "1000", "2000")

Ndictionary <- list(key1 = 0.7, key2 = 0.3)

names( Ndictionary) <- c("1", "3")

F <- function(s)
{
  if (s == 0) {
    result <-  Ndictionary$"1" * Xdictionary$"0"  +  Ndictionary$"3" * (Xdictionary$"0" * Xdictionary$"0" * Xdictionary$"0") 
    return (result)
  } else if (s == 1000) {
    result <-  Ndictionary$"1" * Xdictionary$"1000"  + Ndictionary$"3" * ( Xdictionary$"1000" * Xdictionary$"0" * Xdictionary$"0")*3
    return (result)
  } else if (s == 2000) {
    result <-  Ndictionary$"1" * Xdictionary$"2000" + Ndictionary$"3" * ( (Xdictionary$"1000" * Xdictionary$"1000" * Xdictionary$"0")*3 + (Xdictionary$"2000" * Xdictionary$"0" * Xdictionary$"0")*3 )
    return (result)
  } else if (s == 3000) {
    result <-  Ndictionary$"3" * ( Xdictionary$"1000" * Xdictionary$"1000" * Xdictionary$"1000"  +  (Xdictionary$"2000" * Xdictionary$"1000" * Xdictionary$"0")*6)
    return (result)
  } else if (s == 4000) {
    result <-  Ndictionary$"3" * ( (Xdictionary$"1000" * Xdictionary$"1000" * Xdictionary$"2000")*3 + (Xdictionary$"2000" * Xdictionary$"2000" * Xdictionary$"0")*3)
    return (result)
  } else if (s == 5000) {
    result <-  Ndictionary$"3" * (Xdictionary$"1000" * Xdictionary$"2000" * Xdictionary$"2000")*3
    return (result)
  } else if (s == 6000) {
    result <-  Ndictionary$"3" * Xdictionary$"2000" * Xdictionary$"2000" * Xdictionary$"2000"  
    return (result)
  } else {
    return ("Enter Valid Input!")
  }
}

# Validation
Inputs <- c(0, 1000, 2000, 3000, 4000, 5000, 6000)
sum_results <- 0
for (i in 1:7)
{
  sum_results <- sum_results + F(Inputs[i])
}
sum_results
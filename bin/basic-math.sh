#!/bin/bash
printf  "Enter first num1 :\n"
read num1
printf  "Enter second num2 :\n"
read num2
#Addition 
add=$((num1+num2))
printf "The adition of $num1 & $num2 is = $add \n"
sub=$((num1-num2))
printf "The subtraction of $num1 & $num2 is = $sub \n"
mul=$((num1*num2))
printf "The multiplcation of $num1 & $num2 is = $mul \n"
div=$((num1/num2))
printf "The division of $num1 & $num2 is = $div \n"
printf "This is how we perform basic math ops by using bash script \n"

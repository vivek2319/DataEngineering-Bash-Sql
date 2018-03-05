#!/bin/bash
#This shell script focuses on fetching 5 star reviews from amazon site for the book "Gardens of the Moon: Book One of The Malazan Book of the Fallen"

echo "5 Star Reviews" >> finalrev.txt
echo "" >> finalrev.txt
for i in {1..30}	
do		
URL="https://www.amazon.com/Gardens-Moon-Malazan-Book-Fallen/product-reviews/0765348780/ref=cm_cr_getr_d_paging_btm_${i}?ie=UTF8&filterByStar=five_star&pageNumber=${i}&reviewerType=avp_only_reviews"
curl $URL > part1.html
cat part1.html | sed 's/\(<span data-hook="review-body" class="a-size-base review-text">\)/\n\1/g' > part2.html
cat part2.html | grep '<span data-hook="review-body" class="a-size-base review-text">' >part3.html
cat part3.html | sed 's/<br \/>//g' > part4.html		
cat part4.html | sed 's/\(<span data-hook="review-body" class="a-size-base review-text">\)//g' > part5.html	
cat part5.html |  sed 's/<.*//' > part6.txt	
cat part6.txt >> finalrev.txt	
done



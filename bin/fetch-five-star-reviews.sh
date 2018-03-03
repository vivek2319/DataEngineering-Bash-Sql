#!/bin/bash


echo "Gardens of the Moon Review form Verified Users (5 Star Ratings only)" >> review.txt
echo "" >> review.txt
echo "" >> review.txt

for i in {1..30}
	do
	
		URL="https://www.amazon.com/Gardens-Moon-Malazan-Book-Fallen/product-reviews/0765348780/ref=cm_cr_getr_d_paging_btm_${i}?ie=UTF8&filterByStar=five_star&reviewerType=avp_only_reviews&pageNumber=${i}#reviews-filter-bar"
		curl $URL > temp_file.txt
		sed 's/<span data-hook="review-body" class="a-size-base review-text">/\njesus /g' temp_file.txt > reviewstart.txt
		sed 's/span></~~\n/g' < reviewstart.txt > reviewend.txt
		grep 'jesus' < reviewend.txt  > reviewonly.txt
		echo "" >> review.txt
		echo "Review Page "${i} >> review.txt
		echo "" >> review.txt
		sed 's/<br \/><br \/>/\n/g' < reviewonly.txt | sed 's/<\/~~/\n*************************/g' | sed 's/jesus/\n/g' >> review.txt 

	done

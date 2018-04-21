#Snippet for calculating script run-time:

#It’s always good to note the script duration and having knowledge of the run-time. Following is the code snippet for noting 
#the script execution time.

#Add this to the beginning of the script:

START=$(date +%s)

#Add following at the end or exit location:

END=$(date +%s)
DIFF=$(( $END - $START ))
DIFF=$(( $DIFF / 60 ))

#$DIFF will give you the runtime of the script in minutes.

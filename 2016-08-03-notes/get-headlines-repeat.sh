
while true
do

  for subject in topstories canada politics offbeat sports-nba canada-britishcolumbia
  do

    # Get the current datetime in the given format
    now=$(date +"%Y-%m-%d-%H-%M")
    
    curl http://www.cbc.ca/cmlink/rss-$subject > $subject-raw.txt
    
    grep \<title\> $subject-raw.txt | cut -c 23- | rev | cut -c 12- | rev | tail -n +3 > $subject-$now.txt
    
    rm $subject-raw.txt
    
  done
  
  echo "Retrieved data at $now ..."
  
  # Sleep for 900 seconds = 15 minutes
  sleep 900

done
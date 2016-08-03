# get-headlines.sh

for subject in topstories canada politics offbeat sports-nba canada-britishcolumbia
do
curl http://www.cbc.ca/cmlink/rss-$subject > $subject-raw.txt
grep \<title\> $subject-raw.txt | cut -c 23- | rev | cut -c 12- | rev | tail -n +3 > $subject.txt
rm $subject-raw.txt
done